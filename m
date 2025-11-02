Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DC41E98E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762064394; cv=none; b=CN7RI4FM9Z+oBeVaiv+WiihtZpmOcoR8uPvX6MXX/VEV3be9y2tGGNfWUxzRFjZDnZVW/ELPrGlXt7dhnT+s97/4HShGk1zgFubVfpz3hxUlM7bAgV16CaNZ8z02EXwxI1u3HDOoxgnJcpgkNZj37QMg/MRO1TRm7y4zsUP+Koc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762064394; c=relaxed/simple;
	bh=JlBXCdTG9wO6jmAK3OpQ7F1qQPUAWZe21//0BFfn9PI=;
	h=To:Subject:From:Message-Id:Date; b=OjSnSYKiO5/3qtljViawmwhldZyqHLhwa7vgXifeYQhMKoCogM2wfMjb0LZSJaFTX0rG3IISsHLE+ZaUu6McjUNdTt1dC2ap+LHzayZn73rRBC9udSqL5Ig8ofPPJkL0+BoWqR7lq7JKFwJzZ4vFXODtHllEjruuNwBWGiBtpOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8vF0acs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8vF0acs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762064393;
	bh=JlBXCdTG9wO6jmAK3OpQ7F1qQPUAWZe21//0BFfn9PI=;
	h=To:Subject:From:Date:From;
	b=I8vF0acsAmceocfC7AWmcLKCfC1ljwATv5PATp3UBwuDPq81q6p1K4bu8bsARBagg
	 TJ3BVQRSCkHBehod9s278nSMz/OE+tsWQJhb4bLIOCSTCVlnnCb/ftrJNPCY5mNXMq
	 AVf+JAF1C9MXtxnyUjPO1yWzlM360CHRaAdxBfmAitv4OeHCRwR7VB2/ZHWW/YQ6mG
	 LM1ViRNBIdLElJ4EuDEEiCOvOKgYzngzM6v0J5jzxrq+P/g9i0t6iRuy9Ekugqi1ed
	 01tnlMX6cdx6YoME4oxPqKPl9IAFMWvppvdPGv4mNJl/Mu8+D+95Mxfl4km7za/ms5
	 QzPpVlt4mvsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7DACCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206439360.25050.17729481759768448890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d66216cfeadb73373ad86d6e47b82cf2e9db69c3516b3960fbf77d668bfa4fa
Date: Sun, 02 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762064393
