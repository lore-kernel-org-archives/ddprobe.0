Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B221D45E8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783602514; cv=none; b=l2Q8FalrvoZACAWiXVrGOwj6FutfhLWcFyJyxGfOm+miQUx5pradrpyPCk1U5VUXzo04Ol/oibvI8d2Spx/IM/1tOtTOkOeBnCt4uIxDnyYf21oI8YzNr5J8wrYvh9M4KpVg2zGUMC6ED7Kh1sb6Dw4UQWaDue2sxD23LXc+KlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783602514; c=relaxed/simple;
	bh=w/39dQG5D46yLBt4Ev5Wz59mWMi+fjSxVWLgo/fLUhY=;
	h=To:Subject:From:Message-Id:Date; b=vAa/Lx8yF4ebl5GeSKr+2QPiOPSCsFNxS5dCcdUWzxOQ6VO4dFbAzl4VpCQMfOWUS6Q6kBO7Ku7aepx5iT35mCSAhE+fqU44Gw5mhg3cUlDrpcPrvb8UfdErENmb24J2tKCI9c8QCP3so/SnG7en88mxFme9pNoAzLYKm3p5lPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGXIsJIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGXIsJIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783602513;
	bh=w/39dQG5D46yLBt4Ev5Wz59mWMi+fjSxVWLgo/fLUhY=;
	h=To:Subject:From:Date:From;
	b=ZGXIsJIFymOp8RIIimyEM9HwDe74Tnv91PmjJzfnsL0v22PKWS+m9gofE8gTVkL9o
	 VjIo6cxQQ5B/W32DOJ5k80wBaqtrNnUzh6wdOA0moGwZEfkMDP+dECL5MRS/lNDwTE
	 SyPnI3edka53w+9z4Zcwu8tVTjejRLmKRAcWaykRkU9jNVciyPhCD8I0COC9Q16UBj
	 BMgS43goiZgCOtdZ5F7L3FsvgRAuGSbJgAMB6AQI896SOGhobs0JFBWSyBZtuwzmok
	 dk71/EI9s3/g31N1qxcz+i2+blE22S7E00G0m/rOaeOfJGOIuHTDaifoCX40GvOC2N
	 WagBmqVEPkK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A795DC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360251367.8448.5623440867483247964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79860cd679ae1a442d37a9cf2ada421ea4f8f3d0b9d3a4b8f577cd8916ad6ad2
Date: Thu, 09 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783602513
