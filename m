Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C903221DB5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771288494; cv=none; b=Bu01A57VypgdCKxc/Sg+L0oRkrcUmhmL90Ndu7Zp8JWRAhY7bNepO2bJK7Pmjj78czLs612GeNlsnxBFHqn1jdXX+pzrmL3P0fai3GD6zAs9PDmKEWoNZCBiZ0qxSFXrBbvKSrXd/Z2jbU4uVTj7N69hpvKJpJpa1DEt+3b4Z4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771288494; c=relaxed/simple;
	bh=9S85/2uJtjMSLxWXYNvt77pJtP1iO8nI9vJ3RrRyBUQ=;
	h=To:Subject:From:Message-Id:Date; b=LCghXnnkLYG9JlxJkOcnaJ5qeTKlDm/1/EotzsXviC1ukAfHaTrDUWuFqXBsVJcspcrTXxemXuPDDAAjRj9qlDN67MmunO3DMsbr19OqC3s2xH7AuzPpX3lcaQbELejpbsOEYhvV6injHpQYN9wyT654QvRPkYHIZF+9YxsfJow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNvRGhNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNvRGhNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD316C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771288493;
	bh=9S85/2uJtjMSLxWXYNvt77pJtP1iO8nI9vJ3RrRyBUQ=;
	h=To:Subject:From:Date:From;
	b=iNvRGhNNk0tf8JE6632dEM++zpTcgFTHDrcOIDEfzhKwsWP1+gCevzbCofJb34gW4
	 Pbr+thLxwzQHak8AwLpKiN5kltm+neIM3U/+69BsBse3JHlIBSIeC3Ypc3NKw0Fl7N
	 W/HlbrrOrJX85LU3jbo/fPCNRANSB7PXG0CqBYWjdo+OxUa9vPZzCv63ZddSQWnQr6
	 vjoQ3ivawjxgY7x+Y5scVmCPfQF9qDSjYAPnxGf/LJO0WGRDUKjuUOWUcl77mu6Mrn
	 we7a7BKg3VeSppMA8nFX3if/B11keVlvFyFOV3CLxq71X2iIKk6zQQN8OVg9+8vJ2u
	 F8mpU0XUWve9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8A3E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128849358.11107.9162691611470511148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68aa9210f1470f41cd08fed615f1ba83c4b5ce5f74951df61ba76ebdeed9652d
Date: Tue, 17 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771288493
