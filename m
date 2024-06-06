Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7110918638
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717641443; cv=none; b=pC2drWzG8IFwDmpPhmiF0jCaY6LluoM532/qajf7EDRphs6zkZiDMsR8i3QFrpHrgfvqlLkyjy2Nlz/YYdTOiZxhl+3Lq4JR/YSvIE7pxaPVsBRvwnCon8YjNPmu3XP4WE5/lOrZNod4/yCEk0bXODhma0eDWG7KlAO8jweLNi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717641443; c=relaxed/simple;
	bh=uhZHy0thJgrgCB0LaK4P4GtN/sOJzqsyYqudYtL88aQ=;
	h=To:Subject:From:Message-Id:Date; b=pRAV1ORMinvW4IJlgrNxHdIs3eJO8I8l/FaA4gTq7qGTzn3Mi2l+EaktdIafQH7hdvm+H5+S7E4u2cZVpFn4V6d8+rJfX/ACpXPDehuM3twihytVh0Ziw+QYVcw/Nqpx3SCs3HMtKWSgfMlRzmNAZAFErfTrcx2OiFiM9p0mLEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfpr6p4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfpr6p4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23FDC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717641442;
	bh=uhZHy0thJgrgCB0LaK4P4GtN/sOJzqsyYqudYtL88aQ=;
	h=To:Subject:From:Date:From;
	b=Wfpr6p4VCjVQr5EeReX0eUch8goHVnLLYUES1lyeS4233PYg2h0VDb9gC47i5Sels
	 Z0y8UP+M8NzDrQwXVM8BC38QzvcApDja904u3CZbBa+ORmTxty9nNzdzohWo/LQwwE
	 BFJ9PiCVv3Hid+Lb+WODSYk21jbi+akIXrn/rXqBDMr1JnSoiWbRIkHNZr9sRYsdfU
	 OSz85t1EKeS0EiL5iigPUBmoZ/OkT98i166OR0Yl5lxC1jqa8p8USsh4I2vfKQgpu+
	 4aVelHcabg7FYsNDkn2XJo4B/6vgQuy1hgrQePZvW2avGI/+LwMA4KBXu5SdCjP076
	 Mu5eB+GWThIjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C663CC25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764144280.22634.11288154947048902783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af6aad2ea72e65e865dccf69290ca42a2195356c01b9fa4ee1396732a472986
Date: Thu, 06 Jun 2024 02:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717641442
