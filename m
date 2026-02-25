Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2B72E974D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772043894; cv=none; b=KvX12cbbp33GXefDVhTt/0MfZujgrZFnyEqX/QysuElD9kJEvmLdO/LQHVwKA0dXbm5Bx4agojRr/KYjoCdTcztUYrpWekYTn7eHzQyuYW+QpHvQZwXuyuJaF4XNIlkxAhdU1rw6M2KYHz6Av9fhYOlIjiuDyqj3DSDI7z2DV9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772043894; c=relaxed/simple;
	bh=/S051GIvyL0CIhhHwdNiwyEa0gxd9qn+VK8MDLgTF7s=;
	h=To:Subject:From:Message-Id:Date; b=CmK/oa282iO0pzxkzAfj03nxu8RO6RmUmZKxO6f0HbV8Zr9pXP+xU68ttlG7tVwy87kpVz+BAiwP1R6ORU+MR/C8MqORQzvcWt53qcV1iwMiA9uhZVv/g7XYXhRHNIVOwGdCZEmkUNvmzo4xm2suoe2v38gTcI+g8LGLrMfRCFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyRJKon1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyRJKon1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8843C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772043893;
	bh=/S051GIvyL0CIhhHwdNiwyEa0gxd9qn+VK8MDLgTF7s=;
	h=To:Subject:From:Date:From;
	b=PyRJKon1Kr6533rPfNYVTjuFUngvgiLO4CPOYe9XwZzld0WzHwJ7GCn7dA08KF+N6
	 NcUYoBLeLsP4s4Ac0W3UhbWp0zgWtJ2/lKmnvBVBkgJ1KdID3KZ6Eh2R9jnqJ4QkKM
	 rZCwL0T+GtTPxqlbniplH2HdIvS+UHJWFSZ5W+hRnOFUT5494WsIzA4pgZH52uRd68
	 T2zfDVy6WVvMreaszoptXz7X075FtM/t4DSFK9LYc7lECrVt30JMFfX+E8jv21BvRv
	 3i6O7FN1W7Wy7N5sr6mWS5dJBOWxYUaMvZwmo9GWSNcn+SyyJ8CRcGfBCDMk9tb+o5
	 dZBn74aqZDLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93024FD377B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204389359.7966.280678643607170843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9220f928b3bb8c2c390e17957305c25f0fbd5174d93b359772fa286d217a82bd
Date: Wed, 25 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772043893
