Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F9A2772E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780147414; cv=none; b=Va4fMt2NAuIwjlz0RF0r8phROvIFtYsZ7NYCNVnOwiWrweU/R1TDZGydVGaW6r3O3N894+ossW2ur12WOCZa6mXEoMDsebbmfAIkfzB8B4G6W9+IMljEJoLB3XoNnCsaKrNkpiHBAZ6dhH28jqdwwIXqaN8vlS2v3aVOPrvc3rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780147414; c=relaxed/simple;
	bh=w5I/BuUzqp0NvWgmklCr2xcKTM9SqT+c7zXBpV3SZJQ=;
	h=To:Subject:From:Message-Id:Date; b=ShE4oZs3N+L5oiIuKXq4lcgNWQxi7rXCkUGZRlHkoeRHuNLTK2t8ubTxDXx9vFO8ptuaxFds4RT2zgEgRBu3mRF6pOlnhfhOnGdMSiHmpzRCIyBfP56q90QDbIDiUmPbm+jqvM51K2UEM0NElGjoyLCZGfB6M2uXAC8hBigYcTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiJVYtKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiJVYtKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA46DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780147413;
	bh=w5I/BuUzqp0NvWgmklCr2xcKTM9SqT+c7zXBpV3SZJQ=;
	h=To:Subject:From:Date:From;
	b=FiJVYtKQQX8wYDSxlDPBvgizQakf5WHUp2zRUcJVv3Ge8R4Z7OHExts1o7T+HsaK5
	 04AjQxeP/GO6N5YAT78PtInDz/nyljyBphUbmY9RtTcVJU+sd4OJNJMKg2DmxJTEQQ
	 IE8xMqKvlA820j83h+K+8fenTPzKxF88qagKuqE7uiInytSyuRHuH5Uhsx0aTFTyFm
	 8cHACoh40jHUAgXJeImfIYeff5ZRMsTAiH6Wq67e5x+IqWzv/kzcQpclnZtCqbxe9+
	 QSB54KxzxmQrgFBoYao5dqUmjxn+tA9KdZ5OTcn2IqXuskG//EKFdXkDUgnoEcm7uL
	 S/dRvCgXM1V5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A7CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014741368.22821.9225356030527370655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd9222e41f2d25cfd55f81c674cbe604c998113f5b8e5f49b86d0d333964b1d
Date: Sat, 30 May 2026 13:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780147413
