Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5878E2848BE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788007834; cv=none; b=bUMsuXF3LnEfRIrLadG8ab7+gsZkKa+fx/41hr5N/xwbjNGAG5G2WcHMmTRLFdV2TnUCGg2YFbz00OSPPM1QseJbXlVXAl73+edxc1we5mmitjiR6cTYaz+vagaTD6l+dSx7YztgbrifxJTFz1YWn0DIvIpY7Lpg4OLHBkxu4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788007834; c=relaxed/simple;
	bh=x7tXi7VBQFUZyt2aiHJEdVBDsA8ziPp2AqX90uIkMMg=;
	h=To:Subject:From:Message-Id:Date; b=WfHinMRpDZ5D2VEGWYWOR96/Z6EC+1H12QgPOX1hV0XfC8KwIR+NM9MjYwCzpgvj/VwjcwqTKaozHYi6RXFLMQGIpqzluxYxvRIFwbmFgzchDis2ot46K1Th1ltxnK3Law3pHgN8kAfWgPZEdYkMQeOkDBmknaU3QDb4UdMXJJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTrz1sNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTrz1sNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD90FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788007833;
	bh=x7tXi7VBQFUZyt2aiHJEdVBDsA8ziPp2AqX90uIkMMg=;
	h=To:Subject:From:Date:From;
	b=cTrz1sNwXtSBFMBEzvxnk66tPU8pmxWI8trQBn7Jp+oNvltQbh0oymXi56NXAsLQK
	 KiqfC6HQryeqCW3Xz2ffn2no9bdHlS3noHb6pMO5svYXDbCBv1YItySf/Nr+dtOuaj
	 DqgjguJWRwNhiCs2didwV/gFBhulD1fMS1UdQOPqS4yZA48EoyoJvrbE2avGWcQRok
	 GkkIv2HhNMRIYAFrq4Ff5sHb8ezDghOf68Mh33uQhdGJznnSbaxJHsG+iltYg/TjZN
	 KqntPVwloHaHvTdQcxX7dLIHgxtSjUZLn6/vxXW0XzA7PCs4ke0Z7He8TDLDocJBp7
	 3x9TNaLgao8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B024CC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800783369.29347.9926138212466168745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40fa07be3337f44ef7b4ef26c8e35fdfd24fdda18110f67384ecd4dc5959669
Date: Sat, 29 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788007833
