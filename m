Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA93BA239
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777813654; cv=none; b=jthCMIcdUmYwITvJmiBNIdCar/oICw4LvGtJCnR2VettwgX9H2wbuTcNKYKpvhhrLvmQf6CAAvKtzT+piBJU8wegbXzxRT+SeMtEW/vimm1f7c/6FfQB87DiJ5hzldVVQRRTU9/zUl9Hcxef8fg8wzII3NYrLWSrBp9bpzMmayI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777813654; c=relaxed/simple;
	bh=IdES5Xpt7wXqCsRBZIdESkR4678F1IwuS382Y/XQjC4=;
	h=To:Subject:From:Message-Id:Date; b=X2Xgwe3mBDIXJ5VIPeyURvNwCYiNLFxvlKdgybOux0cWGHWR8/Tfq6TMZHuP4AVSrax8+djTatzexxvH64gJ0kMUYtcd8P1YBxd2CJuBuPUjoa1wQ39uq9bR3L43CUDZRFp7HrdGGMLC+RyQFpgiPBSgT4a01auLkifFQkL5h4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afh3MU30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afh3MU30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F75C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777813653;
	bh=IdES5Xpt7wXqCsRBZIdESkR4678F1IwuS382Y/XQjC4=;
	h=To:Subject:From:Date:From;
	b=Afh3MU30rh25I20xLWV2Id9LER6dM1sWLbqEEln8kiDy/DjQoFtNijY1dW2sPCm/h
	 /IGvlEGlFiVtf32xvlapLl9vYwX8PEuQu5Kz+rOEKKKXU0ImceU37j3trfs78ckAB1
	 gzH05O6Y6uNmrP8h1wOmtB9rJY8ytvRmPMblsWNCP00apKdYf5GtPD2LmxDYtfCiIZ
	 4+ritBYKD+DQkAi3GGdIbTO6z9FcGD4GXR6aEq4bokU6BJoakTLii6WZBSWOH0KaBx
	 MmM3ECslub76x3dGv2nM3g5v6BC59owJrSzfls3qQm6rN4NXnnGhMXL1OZIMwzTcJN
	 RQKjejxCiIEuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A9CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781365368.3907.14166792743628794043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1eff431e05a3d212c0e73493bcb361a446fdb9b9510e4dda8214fe1ce621a6d
Date: Sun, 03 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777813653
