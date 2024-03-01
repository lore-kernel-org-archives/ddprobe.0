Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA76BFAB
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709290697; cv=none; b=s2HfCJ3xfgg+6B7MTvF6QsMGjT8G6Uh7MzjTEW/8j1wrE73Q05QMyHRX9XuYTcccO/919W3ZM2AZPVz99G380uQNvKHWizAJIC9I8j0wrm6iY2r0K+JkGJs1peMhyCzKVKM63Nz9oL75KPFdUsSO1JGt1e8hLsX4Wkngwld9aFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709290697; c=relaxed/simple;
	bh=w4bnfdx469ZXpTpREu2U9rmi23IVEQYoYlWWavJteHM=;
	h=To:Subject:From:Message-Id:Date; b=oJAYxG35yuyQyhp9Ezuofnfc581dOcjp2klI21wi9uskMXQDbek/+KKCj/oksoK2G1RW149we9Rv1cn+jVh21cKBvvRjJgdec9AXfzgDtmT5odqOcVqLs3Ni14zWgAf39xg1CfZZIgqL8UdD6yJo6VEcRiK4uV97uqjK2abvLec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad+Y8X98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad+Y8X98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ED7C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709290696;
	bh=w4bnfdx469ZXpTpREu2U9rmi23IVEQYoYlWWavJteHM=;
	h=To:Subject:From:Date:From;
	b=ad+Y8X98K8ikbkt3jg5zp4pxs8LzMReZc+YAeu0NVxY8CyfgP3Ipc3it7D+bywkZ8
	 77K8cU41RBYIwzMbZiREramr1kD0RYa2kBC3Z8vVMbMvz9RCpNoqAagrbb3fk2fTpU
	 mTv5YXUZBDZPG8grgw7hIdem8ife4uFRIlD+W7ksgpbOGI66ivWkpVP37fWX3K/n8T
	 UOTFrNZYpMQJEAuoDHnRrFsX/n4SI0Ncp8tcaN/za5N3dujOmuOJHNVr5oyq7PtU6P
	 Oa4WDR/ebVyNoCx/iyFtHxR9aeSSM66AeKcffXY+9iemW4PgCLP+nn6iV/fVpqZX9P
	 cXrTJtGtmNx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ED5C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170929069640.27528.18380167502981151256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff0f5c9811e4699a18820d1b27ba1041d0e67994af91cf841dad6c7bddddf49
Date: Fri, 01 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709290696
