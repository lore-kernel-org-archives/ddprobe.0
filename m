Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE6A146593
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715070743; cv=none; b=nbSqO08RkXN/vq+WUBZ+o3fHDYvNqCokC8QmPGrWFU30Ehb/f/W2mcFvbfLpTjc9eJWx2ohtb1qBdL7s0njR5r6vunRAtF1DE2Sf0wgfewVUrF9+7l9dSlALyThEurdOWiYj+E75M9R9l8ZfsVtpc9qgD0EHyNv0x0QFCGKaPXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715070743; c=relaxed/simple;
	bh=KqWgXBNM5INYKLaL4jUzg7NRrm5o/HgOhZU2e6tKNb8=;
	h=To:Subject:From:Message-Id:Date; b=Oss2R0GW9JrG32ZJD8bwK+bd/bCIlIChhQgj8dkQJGqkbmo+ZOCKr1RaJU8TxlRp8fvZCzDoI3124dd9pv1586p7+um9Hp4iPkpeY/H5RTY9xmsBMHZwpjoBqi4eferqqm6sv1y/CqY3idNexLigkToW1l8Zly0DSivW9EKnj6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRKMNb+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRKMNb+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF7DC4AF63
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715070743;
	bh=KqWgXBNM5INYKLaL4jUzg7NRrm5o/HgOhZU2e6tKNb8=;
	h=To:Subject:From:Date:From;
	b=aRKMNb+mqsxDHO/bLhZlh64cxNs7EriK0nMMFFJUpE6rIdTgaQmWslhxwHXzh2+mC
	 Fo7DW48zNKGLQuFhioPzM1G08oId9e7eZ1fxP45lE8gpGU29ztcIubNl15iwVEXFmE
	 CHA4nbEukYr6lmLXSYBxJDifQrR+wzdk84CAyouUXaP2SSGU9iyuhSAyp9hkkAo6Wp
	 8fbrCGVQE8Q9uYw7Uc0xuShV96drrOh9bRHUefjHZHKOLXEWZ1nJMMJfuyIELc78hA
	 N42ZlEefTV5mp+tYUzkoQoWFioyggIHG8egFJ0fMrhjoOw7DLLTna6BI/gvw4aHlFi
	 5cSGNutQCTAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1257C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507074284.18504.14732565125105204009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f685d0f11c43126096f894029beb828ed061505ba69b132051a1ac7c2460001
Date: Tue, 07 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715070742
