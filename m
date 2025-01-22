Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D6170A15
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737537954; cv=none; b=MgXXd9PDBDs3SEHmNAFlKudZwPk4DpK0YsY5ZfkvRnBj++ztk5dmEkm4El1TOAnc7TIhSaoiAuz5zq7W90vtTm8vMbzJXfHlNHi/FdozXt9WfgrzIwJ2IRbL5Ns+JXQ6xrQEPd0T6r6TebMDpn9JY03XrarU1YSooK/11LLBp9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737537954; c=relaxed/simple;
	bh=fSYjPTRQonwYP2Ip+tCeX7PPWq4DObff1iZM85wxJhc=;
	h=To:Subject:From:Message-Id:Date; b=dyJXrkt6awwBCb7/LQrzZGJ61XdBWWp1mVdQZQgToqmm2diVnT5o8Y+nRei1VGq8ge/QJqVy9gYZk48Wp8zZAmdhpkmY1K019sy9iyFu2Bst10ykW3PhXeQrYf8bSyBpp2eT9gSRBQwQqrn9/y82ePaCLbhs4Kq4lf2KHcAdFFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYjy87es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYjy87es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9730C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737537953;
	bh=fSYjPTRQonwYP2Ip+tCeX7PPWq4DObff1iZM85wxJhc=;
	h=To:Subject:From:Date:From;
	b=AYjy87esWVv5XXpLQB9X5qlzPM6nsN1f0Co3lr7aGj6nO7+acJT2G8rW/UfvdvpSh
	 TiWu1cv4Tp88nppP7Qm4q+smSYhUXipotGCjaaRi/UbQJvXLkJXYdIk4Y+QzAIM/rg
	 VaaXBv+sLBPymXkJiN2GpG54NmkYhyWBAbb8j79l53ZXXtWYsjBh25vl9mijkJgKPA
	 KpjrtLKnWyymgSBXcqeK4xBlNNVJUefUAZ0z3CzM1UpAt6BbQc3NwmlZf3rBZtLP1Q
	 GhfahmvVbnO8Px09aEVjSfRPbTL2pjnEiPstGGFsf9UUMuRvicc31f61Pxo58ESTaI
	 P9+9y3mr2YkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EDC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753795360.29395.1243609511341651365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe756afd0867a3f9d7122034b780e664d2292d4980d42a6629ec9c0d81f89de4
Date: Wed, 22 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737537953
