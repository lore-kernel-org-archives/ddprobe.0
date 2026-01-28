Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51532236F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769562833; cv=none; b=oJj1bVM4Hdq8eMvHTyq5vKwEB5qyIsRSuzhGm7dYv+umzcbuxyJYafwYg+7PETQq/vz1w1pMZ1hJ9YU7/QaZmdKTnNCoDg3LWGTX4XDj7DOQvDbFPA07r1a8qxvY3W0b6rwJ+p8OUwSbM8tAb88x1fc0paME7C8mvhANB5Gcu+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769562833; c=relaxed/simple;
	bh=GrH3s+HMZK1JwvHFFxxt6aWuAzOGBj4jSYZ6W/oYFpE=;
	h=To:Subject:From:Message-Id:Date; b=DcZyJpo1HBGCcmmcA+HqempDnGU/nZL1tXxXETSBn9TNwXBrZyP08IdLXWMsF4bi/226Hcw7DchjyA6HL3xFo+kXLzJaa7Q1myhkShiFqlT+8J6rEgHiVIRQmVcxbVW7xbY5oS2V1GKJ6Oy8hzlvl4CgWc/GhFiO+0mwP5O22Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p++0DTZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p++0DTZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA1C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769562833;
	bh=GrH3s+HMZK1JwvHFFxxt6aWuAzOGBj4jSYZ6W/oYFpE=;
	h=To:Subject:From:Date:From;
	b=p++0DTZiYXXPocZzbTmIo6dGN3D3/J9uT9Wo9ihbdEf8oV7rx41NBrtaaTg8uTlc0
	 AgGXyNULitY9hdSZaT14D+GUhqyjVPp88mpzkAK6C7UHMO67mTi5fe6feUqazTj5+f
	 5uEyKaC1Wx9P7ouNRBDPVzIB5ILl6v7yFX88TPcDC/zQo3lMZCa17UbReHvey0eR2p
	 4MJza07AmsISuRSC16GwHajtd0oAg/LCbxsBqWBt0xnDhGjY0/CQbDRGM4JjmHUDgq
	 ljgarhx9mdD7nPWEHI/MsEsxQfFlnzb2jKg++Y2hfMiA8k0sjtqMKEmSRGqYAW4H+G
	 s4DVTv4IYHUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94455D35663
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956283357.24019.12437576554889407210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9ae4ada14d84c2161c6a01f35041b6720e6e4e4ba171f135cf1f1b62ba901d
Date: Wed, 28 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769562833
