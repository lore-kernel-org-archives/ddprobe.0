Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B1C23C9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736384754; cv=none; b=TXW9+0b+6KF2HEabpGGO+MjwugTDTKlxL5idBrrD9Fp7yls8eUX4zJhbBpd2rtaWn4gU4aGxy1sWSFHfOBirmyFAgJCKUj9r46KzzZYHcpyQtSiX45uZvA7EmjwGzbCHU58j4EuxSXHSHe7idiVvdGcWMbnr65VVRuDcfk00GwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736384754; c=relaxed/simple;
	bh=bDtT7yePz5N23kLmKczJAlAhxHEa+oaVV5z+TNY+99M=;
	h=To:Subject:From:Message-Id:Date; b=I0J1KCnfU/x5C+EzFipm5cw08UGmFNtR522VI8gv31faVn62esIXil+gh5Y5f5JmGPCoNaK/EIZkVsFGDdqiqT8c9DRk/CAABVyBpbe0z9qABCaf1UY0OYv09rHfLxDxBWPD2KHLTPtgv6jm9nGlQMqimjFgG1FLBimSwAgRVJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4vrvg4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4vrvg4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695EC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736384753;
	bh=bDtT7yePz5N23kLmKczJAlAhxHEa+oaVV5z+TNY+99M=;
	h=To:Subject:From:Date:From;
	b=X4vrvg4OuTPnqz4buBD0Z3ku9yEnEr0VX951iBGkpnnPdOQ6bXi14Y1dgyS/kj1kW
	 PDW2YSObPGUzQmIis+L0nopRDBRoEuHScIkQtWdHRkPvmigZcDOL2NjN/Ge/KH+B/D
	 C9vKL3fQ9XSK/kHqbj41e/hoW/tq9DqHz5b3GDJJHFIZ4GdAFdlyit31GWMP6u2Xa5
	 V4Azijx3d1p6/Gy+/Hv2cTKCNQVE3jGTrqpXr/nW0t/ZjJrrbVeUv0TC4QM1X18086
	 AknRwsC2jhnFXMkzWXoslJDLUyp3sBKnhXfK3yfIbXe2kdgMrTfsQ7v+YSs64LEZjs
	 GyxncIJ1i+R4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F586E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638475357.20435.14911554434859216124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1dc76ece0182f74e6252958d534bef26cbcccaf9f65eeda2a1d81bed24bdb4
Date: Thu, 09 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736384753
