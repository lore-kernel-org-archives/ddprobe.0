Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAB21798C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716858263; cv=none; b=WJudzqx8MKuLen1KAyLSy/UNhTs5xosixkMAlTNrqXLixi7m53DJB2ZyrV3ZY7QDIEVyDJ7GeBdkgdOwn+3ptmktOiPP6c0nInNQdAuo7OFQFwcFqTT9eG2K8GyNPQjMivSUwWaVNwaMDRtuzoovYRHguuoyKmAlK04nfCj+x9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716858263; c=relaxed/simple;
	bh=diEdeCijdOmb4zBtiUis1AjvpMFFMgeI0E0UYZ3AE7w=;
	h=To:Subject:From:Message-Id:Date; b=N+g14CK6bS6yzz03cJ2+K6rdmMDzN9Nk4WdRVHRYGnN/R6Xi06Kjo1uzU5oUnEh1nfeiHHrV8Yd0wseu6iRYj39KJHZSfRX9gjbH2q3HaXm60ATcEDlHNs4rct8nCOFMY12X1Wml2GYA/+OQ2xjysVHad/rN93pxiutS78Ojk9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnGiI9Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnGiI9Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBA2C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716858262;
	bh=diEdeCijdOmb4zBtiUis1AjvpMFFMgeI0E0UYZ3AE7w=;
	h=To:Subject:From:Date:From;
	b=JnGiI9Np2ZGQmQ/7lJyrKtYrqoPIfHxLNWSWkBYFDY1NTcZjA/UH7Q+9sGbJb86oq
	 G2W5JOxXGLUPUpbxi3gbzbxggIAzmSDte2P/RtwwZwrDjAnnt5Hdr9sO5dwd9k+hr9
	 6HU1XW0I06KeHVOiVR7d6Ue2Ocs0Cl5NXqrqvXY5f7vz9cBidHZ1fo/lDqkSMt72CL
	 mVthZrKgYohyv1heh+bB7sIo7ZF7WC8AS/23SdrD9JHV83P50JilZqGqV8Gur7yU7U
	 pK8Sp0N7UCP73SdLr7Ak0GYfiwwMdsZKzPHeoM4SwMWNY92FOTQoKDCzaQ1eZjFXWv
	 YHDBXWDQnOaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1A3C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685826277.29191.8595992876452559946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144d48428d118dcb956b85d9526b541652c2984270600428b1e3da1082a78923
Date: Tue, 28 May 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716858262
