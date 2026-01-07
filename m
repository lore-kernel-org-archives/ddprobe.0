Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C174A243954
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767756833; cv=none; b=ZnRDn8ilGMyPpg9EfFGz+kXaSHBHheTcQDTYy+uhZ20l85rukcQhQ3usxEujU3jwyW8JkgUZd2KgyjQyzlhaeKfvwciNfJG97hOclb5dRZUo52jr/oLtoqCq7q2Utktze+8TTEt4kYqGA/B+K+b9CPkq6cJ0uuOGQqRgllIyGPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767756833; c=relaxed/simple;
	bh=GB+uFqreBxoyCv8S06HspCGMeXaVIj823oXR3RltWUo=;
	h=To:Subject:From:Message-Id:Date; b=QSMpSradR5T20osfVl4rarSaYPoldRLXDhsyD+oVeITkGtYhIETQN8g/vQ9Q628mRVtQUVK1fZjXMGxg7J09t1d1AX06I+pRkaBD+RHbf15xJusjyR/eU/q7ypPnfK0pNX5Szo3m2Zm3gb14BRJnvp0euxayDrC30AOR6IXpaqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQntQz5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQntQz5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D22DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767756833;
	bh=GB+uFqreBxoyCv8S06HspCGMeXaVIj823oXR3RltWUo=;
	h=To:Subject:From:Date:From;
	b=iQntQz5fA3/01Nv0aZ1D4NRHWOHK05cc2gJpYEBxJ20OiHbXcSwmeRi4fH3adsS0j
	 B8FUOCKJfroyvN8O/b+HsRmaMhPCD/J1PlacDwtkEic+2gFeH7ZpzSV9GIIPDPY66s
	 3mIl2KU0nN6qV9BFy84ptNgQuw9muniEd0QRN29x4Hf7gEFNnRrpX5QhCrjT5SrsVZ
	 vVRhrbt/ePKnTFz0agfxIzgntYDlSG999IAeVDPOjoGV3aguwFlvnqHu8ygTIm31ZG
	 pnO6fCW1zDi/Dd8P98cbxcnzdWMjRJqhoEj5mzTQ0KBMlpX3TLPVH9HxKZeblOhGDa
	 w/IYhfxRexq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CFCF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775683357.29362.13877077600216763959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a06902ef30ab93b1014ece46b27f26ba20da0ce22f7caa197abae130e65e29
Date: Wed, 07 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767756833
