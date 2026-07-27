Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431633EC2EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785147634; cv=none; b=HwP4T5fdt1wzuJEahNb8aNGVkBRerEZzsznIDEPoJ47TgIVX0AM6H0eATWys9uddN7rymBp9TWudC78iZTHmwNaoDiBNX86ql8cZbmLxRa2qHAULeKvo++dwO5pJppek2iLgouV3r89qmpRPEOZ6ehsRcgAJP5zqzG5P0MsDwZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785147634; c=relaxed/simple;
	bh=265KsIQJhaz+n5Wmr5N4n5nf/H33M+ZnMmw8rwgEfFE=;
	h=To:Subject:From:Message-Id:Date; b=OOzdZUsjNKT3pxDIhJmwUGcNl77Vk2kNW3IT9+zlwovRNFp/gkpQv+wq5JHw1/eXyUVZ9x8IC5IUDsGCL4I26dWbGWyZSGzR7qkst0ErJlyju82nGHHTBjSkl61SxeA3tIdJPVH3Q2mqxpVL2lKyGszIrXoz37DjWm9Y6Zj85yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikz208Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikz208Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91EDC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785147633;
	bh=265KsIQJhaz+n5Wmr5N4n5nf/H33M+ZnMmw8rwgEfFE=;
	h=To:Subject:From:Date:From;
	b=ikz208YaVWBKcFCDYC4eBnOx2Ar6k+lyjCv9nbe6EUo0nZNgjQtsROpvZVOm7RUTR
	 SOU+HkFag0oVioem0FoAL9d0YUPOtGPqEiqsBnNTLKj/J+G1pM+5dtVW6HrnbmXdKC
	 y/sDMgHOXETWPUlww88OeRdqXURZI/P4PLnx4v7/Lg3GAuEdM+S74wSTdu+5TPZaha
	 TvGj+f2HztXOWwyRf/Fr4jRR3ED8C89tWaFyXZe50tHrKpsVgbXATI+/b+B5ZoI3r0
	 TLq0OJvZHFBdBh1a7/FSZvh5lETmGcukajPeF5Zwh6BVkXO3iRuHvFDyt73xBbwS+R
	 YsANAJ+3OI47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929AC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514763368.24121.12522331035450532135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf0efbde7fb3fa41bf28548ae6955ff558d9343408e94fdc954a9b7a2c3e7c2
Date: Mon, 27 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785147633
