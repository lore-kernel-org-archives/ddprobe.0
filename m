Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBE11422A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718800763; cv=none; b=Qu0KfjEraHAcUmh1FUdAj3QzMxtVwJBF19UyxOw/Ky6Nt5668zd/lFdmTHGmPLqRjSE8uKXS8uYHpc5afNmi0nS6kJTB+/10d6GPCSTo6CR+q6CgNgtFrhIj2xd+NEEGmHZLv34POhHC1U108CZ6fbzO0UfVgG3hd7N1dHCLQkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718800763; c=relaxed/simple;
	bh=0FZ/Etj3JuuTEsh6+aAcGNoCpuiJ423tXjWl2m2u1OM=;
	h=To:Subject:From:Message-Id:Date; b=Ur+k+32oHAXQMXglnFwe09xfXGfAea6Plq8aEfZGDO91y2OUXPJRMWtMS2uAfsHfxOEUBj/gCwaF6++ubDINkDAqsBs+S2FjqMOpbl5aT/Tiox/8c5StqHh3oPDCif5PsmofbvJnamXGayb6QTpmaPMDnxbaWWZBofgtgzjHcbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6XOoBoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6XOoBoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA77FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718800762;
	bh=0FZ/Etj3JuuTEsh6+aAcGNoCpuiJ423tXjWl2m2u1OM=;
	h=To:Subject:From:Date:From;
	b=X6XOoBoE/yxwoMkXpus7jor3MqFmC+c+EIO+CTdXxJ13WrFCFZDgslJS0G74Saby+
	 fYSwlxgl/KF1CREODmgiD/av1Z0jy280eagk0PRapHk2S950irXS3O5LD9Cph2s54J
	 ZHrf3EqLSPeyUbrWZTVqkAfZgtq51ix5J3dpI+ALwtgOCbcbdGnjVdy7+cddzDJttY
	 J0k+5WcnhD1ybysIvwuG+npO4neHyRuhv51pyP+gU+icXC5V/lfkgbi9VzPUGJ4mp5
	 ihsVXUe2yC2rY5K5LXmsRpV+Gj5yUS9miuANuYLSdWPfjw4lRXLLQnVRAUw2u5NUoX
	 aXDHQ6/zEsYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99A5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880076281.2109.266387732994403850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33081ea24d58991aa0558e4451a5be80570d4bb9a6c3b4671cb846bf533261fe
Date: Wed, 19 Jun 2024 12:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718800762
