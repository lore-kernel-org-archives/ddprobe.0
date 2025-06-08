Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237B21E570B
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749412794; cv=none; b=Ke1oZWZknbD3yQRLrNR0tOIIAJzU86a80Xzmdh2bF0P7PG4syl51sEnhfDfEmHEWUdIPGIIstMtLDFv6/gPB6Tei50NBIBobQEHsXnatYil9k+3mFmjPw8u0ah5kCzVyOxq+6tqX89MjHWl4asTcRSZAGBzo+K3196440XfTKcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749412794; c=relaxed/simple;
	bh=zPUagVdTU6cMhlAQMWIF7d+57oXYVJLDYMtmrITdlUc=;
	h=To:Subject:From:Message-Id:Date; b=SV0J0zvDh5pYBUgoaq0Lsz/8/+cb1PhnmFa+H726j/cR7kKToMo5kOlC07XzoMJ3tzf9N+/2646TFiG5hdBg3y47RMGdg1pSxKuTInNJ61iAZDLsp5rcv9XacZvjRQMQue8OAzGmGCyZtBAhC0OdWF9Svf6Zvdn7ycV/y+QbYPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UABsZGPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UABsZGPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A092DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749412793;
	bh=zPUagVdTU6cMhlAQMWIF7d+57oXYVJLDYMtmrITdlUc=;
	h=To:Subject:From:Date:From;
	b=UABsZGPUI9qc7HlNuFTB0c6C6ybnW+xH0zYfk2TJL176JbsUS6/jtTWAyVn5tcjuk
	 tHjMZcGct/KoCKENOymGugXgqN/xASk3HVrxQKSx1Z+piB60ROvrw3xlIO39oIxQ0R
	 oSStowjB7RJJfx2sDj3Cz7Cna5Qdo5175QFWstAyVqcJgC8/EtIwJceAJutyiZdkkl
	 BEpfyofGzKeqnUYjarVKvsdiaOx82G0H7tM8rVKBjHLeg6zXRl3eHImwXWsxK+NFR8
	 2XkzBgh1/67GG6gYGRykcv2ohEQEHbOh3IlpUUsAu6S3OMINSAvm8O9QeTpy8IRwbx
	 FZZENENrZLo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86FC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941279357.22727.14739073777494081208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661da08524b10037662f52157179435a160907ad0caf06d711f21907f9e08b59
Date: Sun, 08 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749412793
