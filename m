Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351051FDA
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723166154; cv=none; b=D3z3FcuBKnENrtua8G/Yj1mmt/8R5O99m8YgZMmlIILgd5cuFDwreGpfYdQkitMU8RmVQi66YFLo5z5bcUbJHCjspGxTVrmd0XkbDsOfG20U7UvCJjIheRz3i6b68gH556tyoCaHRfHH0aXKRLuukhKEn6kaCJKEE5FATjbQbwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723166154; c=relaxed/simple;
	bh=l/MRknwj51KzJfo9bL0xYgnAgC7jXCuqAoncpDTNtWw=;
	h=To:Subject:From:Message-Id:Date; b=IF7NkO3Nrg+VbsJtqM5qAexhrOcd/ekyzyVH4T1sw6OJlhxrDSfi4a00vgKaz+TXqeMcvxVRlqYUO5FXP1JqOFkzzM2ELYX7alEGTFpXHkTg41X8y1i769zF/hHbFrDPWZ6x2G8Z/HRRo0G4U83tPYzl7dTHyaC+XB/W5z0Z+Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0J3SlRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0J3SlRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF68C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723166153;
	bh=l/MRknwj51KzJfo9bL0xYgnAgC7jXCuqAoncpDTNtWw=;
	h=To:Subject:From:Date:From;
	b=S0J3SlRz6kUIKm5nF8TRStyBiuwuThOkQ+Vt9ToZDt/dbaQmq0apJd51bKxjGpa2J
	 9e9i5HN7bSKFKL4/NnvRItx4yXJl/9vHAe6jKIyr8zppjvNnv3mL8GwndGRmaYSHAx
	 py06Ec6ZtoZbdl2y5WSMQrBIx8x6hDFZ3o0C52sOlPWo0NIjzz95D0bNWicYKLhkpW
	 L2wCXX5ZhGvRRSSHUvybGD0foQrhNQuLVk5g7LMjcEDAT6Yz3HG9Od8ln591OoYQ8B
	 0tZY1GwaXHQw3RWnV/ebqBPwmcE+DnD9TyAmZDpMpEAtAVQHm49nR7Gzso4WjLxhul
	 8Mza2Sgox7ULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99746C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316615359.7109.12748651304787574853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39ca9705b950fe2b24086ecf5f6b580b4046823e47b5ed3eeda35d84a5e3f7c
Date: Fri, 09 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723166153
