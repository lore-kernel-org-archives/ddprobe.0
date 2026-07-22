Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F52E368296
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784737774; cv=none; b=uPD5hXTUxcD3D2OGb7wozSKhKHeFajRELpsk12BnHJvaA+DUwkTAbVinlgDPrv1+0H41HgKkSv9cM3dVJqUNckrTF0eMy4mYdnweGAQJp37FSIEiUlCp8E6OTLfKLvC3ySyjrnZSat5kw5Up8dUQV+iJqMztib/FceRVpeO/3MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784737774; c=relaxed/simple;
	bh=AYOMZt8MLFGZRary8Awy1JkSgzCVHfJYhYPFKzR6TTM=;
	h=To:Subject:From:Message-Id:Date; b=MXUBanloM81QyEmbA1FlqTIfyP5CaB1OOq+MuuDGVtMsMEqpXFPzCu58zpuh5JsFQiWalYiII8WyGVFjN0y2EueRpXrg9t+sHujFp2ddfdJ+94S6Noe2b3WJnwJHPNzPz5HsUufMM/+zNvY0JSWT8YujE70Nq3RfM52h9qXi/k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhYwvA9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhYwvA9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D046FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784737773;
	bh=AYOMZt8MLFGZRary8Awy1JkSgzCVHfJYhYPFKzR6TTM=;
	h=To:Subject:From:Date:From;
	b=WhYwvA9IXTnNgPPUmNkrXIoLaOrYs/JsezlGsxGZstRCjlINvasMDy2WorcvYdPho
	 BIYJRUi7gDeBHXLju7LkikM8YU1c2OQlwswTnPrBopFSzm2xTs9OXwWaCUbLAMgTcU
	 XRqW0zTYxOg23o7cYsLWZ1wSn+OYdV3s+37ThlT35kaXGYbgu+GhxNR8RhM18hxzgB
	 3L+3CmyLgeVhV/KjmID+9RMdmuBouUhJKJM/BS1F0lMVExzV/hLbFfDcEKg8Y9/VMe
	 G4fWNSrmeoCE8pIRXba3Dw7cMmkBXLhGBw+tzAUie8Mn0Y6QmjanBDRUACGW18n0ws
	 G7HFYNA9NTW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC90CC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473777369.16810.4050637334677567378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f42793932c7422155e848b4bc6d4ba8fc47adb51cb4ac4c4e60e24dc6c2d4b
Date: Wed, 22 Jul 2026 16:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784737773
