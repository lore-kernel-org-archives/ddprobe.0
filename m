Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877113C67E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737751554; cv=none; b=RfV9gikjCXOEB1H5ovpXzO3HlWXH6c2PUPaFlAx2yOWy7tEUn+qB8FoWcUZzjVW+OEHvvIS8d+xSZev72tKLP60K1C//5T4NZvqazp/eSQquj1/sTuFbtCYqpPOQIIAOL3S4DdKjzrB+5fjfk7fvMs9dhk1zHmkncCU7tIud1IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737751554; c=relaxed/simple;
	bh=KN4gmLd0Ugw1l/Q3Zc6bkHZIvRolg1EKQkQdiJQoVvw=;
	h=To:Subject:From:Message-Id:Date; b=J5VjMEVQ+9uPrN07rjcGOMAgoya8ZSYoMpCV8PSH/LNzVyKulx44nP9EulKGdPfzI4D7X6mLUATG+Lcl3BleXhCgGCVglpFou+no8e2OfFhFiHT2o80bwJFxHOOybngrQR/nPOHW7QGQMhZUzArC+vPs9voLeLJ/VvqFK3ZNqdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HunnyTh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HunnyTh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE26C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737751553;
	bh=KN4gmLd0Ugw1l/Q3Zc6bkHZIvRolg1EKQkQdiJQoVvw=;
	h=To:Subject:From:Date:From;
	b=HunnyTh5/N1jt1Tbv2sG92tA99tKDyooxle9nd+xjYfIDCYw7/PkDcrI8zMkiipdc
	 0uFi+H5m9pyaaHi2uqIF6Mz+3Mu/4Mdg4T/+aQj2YCrkytt03J0du0c0jLhDqkPp5M
	 G50HRVFRGQswX9i9VLp+6kmQg+6Y+hhTja00cxQIt+QmsJo1/ML/pDbH27K76fMPsS
	 CGU2dWhyE7w390c/Pvyi/j3pczgmS4iqfRdq+WsG8IVagT3Q1Qff8CTJwqrpiVMbu2
	 IfzqJAr2I6F7WP+0KVAbAA4421MbBDwF18aiyVMIfF6tVJwELGJuR5Yjoqblc1jObT
	 /9Km2sqCay5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2655C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775155364.10954.18324413520826823420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfc073bfc5d8e2dded29d0ea83ea5fca8bd131db04c034d9b9dc4cd74497645
Date: Fri, 24 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737751553
