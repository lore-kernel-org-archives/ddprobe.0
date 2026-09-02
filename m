Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D84624DCF9
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788310834; cv=none; b=R8/FIjqcgEwLPtFbjnUkpImR4dxI1PISrj7AKl9xJY/tdFsQyLJS8z4/xlrr+DrfHL0q4cXFBgCIpJA6QJeDKrZpzs8thHcgGhUWNKVIO0EieKAt2kF5bnMTDIC56K4mikgoq+Rv1VSDqUVgoibr/DFdGRVRfuikRwxAwfss5mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788310834; c=relaxed/simple;
	bh=2D5ixXBmMzafCuOkrqlQlfjnQ9Df/1AvEW64/YDddo4=;
	h=To:Subject:From:Message-Id:Date; b=RIBrAxgnjsu4HNCJRBdTZOejuSj3CVdZnpBT4xyQZUipbPWOGLfYxLmGYRXxSArmPhS3TR1SayZY9Wmb6kDSpklnh9piUl90OWaNDuu2+uKwzpvp8qF4BzbNRbMRF7wUD3WhV29hXG9cMsUv8gk153hXvipweuGJhUdyfUWLLro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksCgyg9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksCgyg9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0443C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788310833;
	bh=2D5ixXBmMzafCuOkrqlQlfjnQ9Df/1AvEW64/YDddo4=;
	h=To:Subject:From:Date:From;
	b=ksCgyg9ZExbCdbU2o7IGU88ltijrub01o+3PzscaxAFfYtfvq4yvGOm2mrExfUZnL
	 PDBzNx+dQItxDpWX0jgisCPUXOq8MKsk0gf1qqVGvRn6fKFsnZPVuYMC1dUUqiB1Yh
	 HkqmfzTXq0s3Qlw80DUHA91mYFoLUNYJX1xMl69fr7KzUM/j8LdnkWYKIBAtBZ0LLa
	 +5dQhe6B7ZHKCuQACqX3/LE+5YNz6vaic6jE/C2aAtJ49TN1mwzenAFGlfM9q6ZB9c
	 p4HjBPQv73tkf9Sp1Sbd0YhGj4cFX/lOZOLIBjAZMAwvw5432GUGhjU1VORbOCz7JJ
	 umK72m7ae2OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB955C624D5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831083369.19105.12282179030833271528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2180e334540c3c04b25565138079ddcb1459198c1362578f83a319d2d752c95
Date: Wed, 02 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788310833
