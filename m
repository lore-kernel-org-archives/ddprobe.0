Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1739913B5AE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762178994; cv=none; b=DJGEwUPlEHA/PpMUPI9tDVey+8jKpJUBXhnSUYQOIe8oNoKRi9xYVW9M78u87+96JLofi5dlT32G0Dj64MvJCM2O1TSGB9Mx/iZNR8ZT0tLQ8KsXyyk2LxegBMt4f3TXvre+fo997mWqfGLMW5duNs+wozPNf/BRLSky3NRDNGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762178994; c=relaxed/simple;
	bh=AbGs0Pe7bcpLxA6XFtfvTEZ9fCaIOfYDh9zopmqGfDY=;
	h=To:Subject:From:Message-Id:Date; b=mYyUXsU2+AIoZLAZF9352wiGChO3RXNbH3ppDVLjTQcPzC7iKSbi2GIBkLaLq0kOIjecBvMRKH2vm1KMtrXN/lI0odcKrImjbMxqcW/z2mpaza2paOWjom3zcZtkl8rTp3P6eRd9/GJdjpQ7i+Qo0GBTWPTCsRSgxPO6kQGTMr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRzsW3MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRzsW3MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A690DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762178993;
	bh=AbGs0Pe7bcpLxA6XFtfvTEZ9fCaIOfYDh9zopmqGfDY=;
	h=To:Subject:From:Date:From;
	b=CRzsW3MNjkj0CepeZi0VuB0dugzgCJEAcXvCI1F3eGteKVm4snSYbdoERoqYzKzr3
	 8xM5A/eAgoWBvycOSVWDQfSlSjtZaPh5kJlF7Jx1QRZ4yw4yt0W1bz+7sfZNOKLVdz
	 5ND2Wh4zCd4NFB3r1kBpYhijsVh/DQOudXweNUs0Q9/LLKor183pAE0E/ZMrhcAq4c
	 SvqF3K2ks3WReWi3p7DOa33bfEFu0jCt3VC5urBpIkP97r5bScezK8ZWUpEisAKXbF
	 h9tcvyLbkqM/MGdpOjc+S4FRUjWR3j/TpsMiIcN3pCiusjARX9Zm2P3A8hlPgkstBI
	 Z75uQcUmtZX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B2CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217899359.7989.18267409213984993106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1a0e59048e7af56c736a3f335c17e3a515624afc0e33c7ad404ba106f9df3c
Date: Mon, 03 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762178993
