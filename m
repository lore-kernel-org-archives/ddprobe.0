Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC52FFDEC
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761403794; cv=none; b=ngFmW5g511ta2ftGwvmtcDopYzhlvEfiMLN0EfIiUVTsBP6/YvUHi341CKMJ5inkv87MQ99dbaCOgKwaEfMOWs2GaabBpJ6uYiMsJG7c6bmD9ZnwLPQY+4qM2RWYSNIkLd+bFe8bgpNJuBc8hHoD7kElsiiCRB4XBeMnROZkohA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761403794; c=relaxed/simple;
	bh=h2b6n6U6hpGs5kckk86IGLmCpXFdkIWT55aOnVS+RhM=;
	h=To:Subject:From:Message-Id:Date; b=LTAoBg134GUhfqUV5hFSGWFz7GPV+cipltFDZl0YYHg7T18LbELugeWsX454kpnIzkmv4N0cE3YK2g1M6z0dCqI4td3B3BXMWM0a0BpXpidYdRtvnof4bB6UUrBBv+bG/u/6KWX5nB6i5I+6ryff5zKY//me+IfUJBswlC65808=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH/7atwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH/7atwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761403793;
	bh=h2b6n6U6hpGs5kckk86IGLmCpXFdkIWT55aOnVS+RhM=;
	h=To:Subject:From:Date:From;
	b=YH/7atwaOZBP5J6mfwi2tzvIedxT2c18klR9IaZS6Q4Y/SQPu6ui91HBoa5sDwErW
	 KlgLo3m40LzEuHRPf2edFEG5wwSIi5lDX2MAykq9iWnRo+6SrvWfyuQTuCtfRf3kHz
	 2MOn1SQyfAtWp0nVtj9tD4DcvqGC/I0bSp0tymjLJjdjMrqNBHwwIfmGbxR+T4SicH
	 24RVW6nSVhG8MzgZ972Y9MvyhYs+ewXNPzKYiry8gVAs2V59NaisowMzdGfTGkBPgt
	 gjzntt2Vagwj2nDvghOwQwUGumj27Zfk36Lz12of9W4AWdrHTMOMXClDGry1eKGYfr
	 TVHQxZNNAMbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A0CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140379357.26394.17394301716301773019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3558b50cbfa1b03f43b58629b73b24bd85a553b9337bb73d927a7cfdf42eba
Date: Sat, 25 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761403793
