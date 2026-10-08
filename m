Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577DB46DFF6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791459034; cv=none; b=ZcFEme9Wl3/dyOhumEfHBpJxvsKrRfJU3uX7SilXIXGj0yWt4SpQjb7VW+P86xNPbJ+GzVGZid5ol2ts80K+sAxuDr9nQzAwcaDbKlC871LZQH+znPWmoomiwZjkxYyMqavDP2T+eirCVPRhRSlIoUK6DVxKLBrlwTFyJL734Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791459034; c=relaxed/simple;
	bh=Mz1r5OjT08aWPg91PivWv4HSnMYjzDlpIkxxVxqPeiU=;
	h=To:Subject:From:Message-Id:Date; b=iC943I79P4lyA6tqLo1MCsXn0rxfOjVTeoNo3a5noKRcsrf6AVAdmHzSG+pztQNeZajAxmfiG6t5tGW8pxdjtzD7tcyeFzCgei0pFJjSc4OkzsRam81YdKO9e5sJ5gRX8/g6cNg+HZO+clcbOnWGAyYRE7ct6rBWPMqgMe5p8eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXlUfBA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXlUfBA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20A2C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791459033;
	bh=Mz1r5OjT08aWPg91PivWv4HSnMYjzDlpIkxxVxqPeiU=;
	h=To:Subject:From:Date:From;
	b=fXlUfBA2Cmt7oNAVCjdk1SBG1y+FAyqZXAN52YdhUUttzGQUSEqlv+3EHHtCSkvNu
	 ON9JJg2iAdpnJ98LCX0Vvg1Tb3NivHbN/9Dwc+cHLfilqBS41l3ofhV8U6BjSznz1H
	 O3R2BAWJYdskRO9D88Sd4R5Fphj3EKqnxgv4zUB4H+k19Ui3eByofkwfh3w22hl+0r
	 b6MXMKXJw8ZPOEkiiDzPD0B6rOkqNx647AthJVvytXTXRMfmmaOk+4LFxMkM+BfS7A
	 T+lQLBwH9krR4vNI+4QRoUsEBGW2KeF3VtOq+aUwjwtrsoDR79VV7r4h6jbw+hZ2SU
	 hNrkppjUbqmjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE0CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145903368.14563.7487127495953998890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d846c691d3222137533db49aeaecfca38b91f462cd3e9aab5e3a95e8fd9e8091
Date: Thu, 08 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791459033
