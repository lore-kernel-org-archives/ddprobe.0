Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4F41C68F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779598954; cv=none; b=crCT/HXnUhHoOdnS3ARPjERxiyqzTweIT3PJ8MqA4cxvNh6mUMxN7eHo2IG60AKWJr/VYk58RCyZHijP1OTphpikVCrxrQC1uCP/zcpOnBgnszhYkeiSbUV492Aj9B2X834XeW5idkdHAJmuEcpuaeGK/GYAkyXp/B6/YK6Y0UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779598954; c=relaxed/simple;
	bh=MSzMmczdmpYLjCdPZCCBNE/BvMR1fA1ki7VMwUAGv1I=;
	h=To:Subject:From:Message-Id:Date; b=tneJpdXCKLuWGKIvfYoAIhoUJ1ZK1qH9+/Fo74AO2dm4vKnQpSEO6SqAhqkJn0pG8SMqXLo1f/EwrbRjgT8qgDdkn3RGE5p9G68ahQFJdFCRQl17MXkumVtMPYsKUAeFzYNEfGoX6Xhu3oSRFsgAbKkhI/DjwKgD/xfAmgqfvcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1CTAxUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1CTAxUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC33EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779598953;
	bh=MSzMmczdmpYLjCdPZCCBNE/BvMR1fA1ki7VMwUAGv1I=;
	h=To:Subject:From:Date:From;
	b=d1CTAxUPBr+8yXKJcrMgNCIMarpy0ZJzjwHQ+G8DbUFegttOi2XoYAqME4eYunAmS
	 XxZKO0+G/DgKqbGZCV3cmEjrLJlrv8aLLuuHbs3mMBPEa+kXSkZwaQB732EyY08iBd
	 kU9H/wZlyINkbQpGmaspJVI3JlgJJkn/X7AkUH1GSJzbeY+YCaP48UdBo+b+p10yPt
	 TkOJIQOUlEWX+xNwiOn5SGp2KfOWzLaqyIjBU8o9ehOo5UFWUfk39m31ZaZOMZCxd8
	 YDQ53PaCtZ0Fj4+yqe/HzxGdY76F53Lf9TB74oC7PEN6IceW0ImJ65fdNRzdYDNdrt
	 kNpvqnsz3y+/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F22CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959895369.17632.17428619576391767509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474e6c40047ff5a8705e9be46c68f784f4a440751bffe551c35b6216ca2ecdf6
Date: Sun, 24 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779598953
