Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C22E2E3B1C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767159834; cv=none; b=uBAc/JWEGzzWV+A3uJN1AX6hAYnkdRYS3y4E+CkEMFpAodejuwdNSeCNKHterJB4oI4W96VpaJs9DN84PJFLzfSTWPlNGa7stFb+4PpkoGUht+y2Umy13p1L2TpTh2plnPxt2CTvm/8c6d4mm0Qvx3+24nkwhp9xg0e+7rS9hN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767159834; c=relaxed/simple;
	bh=QBope5DuATiclrw1rQkpFOEFfd1UkgSSBfIjbuoiiH8=;
	h=To:Subject:From:Message-Id:Date; b=d3vvTU10sHxpUMZIOHyTT1ElETzzV8QhUxTlM6Va2G6fHRTj82D6/vV4o35Q1TF8abKhfA5i/PKA7QQbYRfXqvTnn7GWBRtQbST/a/E24Y3WL4WoATKj98XRazrm1Sb+/MkerxbgV7++YIpBWiXIUokqBQ5cF6e0AkwShkEua+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMwqBjBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMwqBjBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ACC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767159833;
	bh=QBope5DuATiclrw1rQkpFOEFfd1UkgSSBfIjbuoiiH8=;
	h=To:Subject:From:Date:From;
	b=XMwqBjBQja7yadmW8BY8kJMqqFLwBSEWA/+IUZLEdhMhuW2SgD6ox5l0cWr35GlgJ
	 PbU5ympwaFykQNG1drT+Ga9tDws4YOcdZkMvLQr9dPGQvIS3KR9Yf6R1/UPOUdW0Xh
	 DEyWGKsHpCcyNjW4+vlT2fmEmy2IxI/G1fnBOEVBGIUy7MHsvy6DWZSDFE1/QTezAo
	 lFlzrE5qzQ+qrjYII8E8Zpqb7/AtpzTW40G+cblIzhGMIa36XYArSGCKa3KDTfCsrd
	 6At6gGKX071saEv1jdsoQWQ+JNGj1+RQY2G+P88QxR1K2WG+CF2ROo2PjYH9PnX7Sk
	 a5x8POC+pk9QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B32EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715983358.6363.4672998876924574038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5ac6e803044561333893d27f359fa32fc065fbc308f9e6612aec3441f7b843
Date: Wed, 31 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767159833
