Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6980318C36
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719628463; cv=none; b=dTIqdlr31gPETqXidEjXg0gvwLbg3YhJlOohIzPY4XzZDDdUjPwutuzWKbRBUsN/ArXEUwVRwfG+VaKvl4/ZnPSeGhB7pi0526Z6vcFd98fZMiLw4tgnGNTRNkytRIbJ4ryWBg1QKTNUeq8utljXDc2o17/GJPhwt0utN0hCxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719628463; c=relaxed/simple;
	bh=Pth8EQER6AWj6Df2X77PBgBVTVlf2EoJ7+SCPfR6cXs=;
	h=To:Subject:From:Message-Id:Date; b=CXkpInyY5mjb+IHE1kA/5i1G9cAYo+cKQpP51ys7YmeG8MM2Spt1N5MFEid97GKuc2xFuueHSoMoaOUB0vHs/SfjLGq3lX0A5P044XvuGb5VBn7hcHoAywGH5LvNOJxXEyexW1jtQ/Zv/V/wNkteeyQivYbmnZ+GkVyFDHo0dgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwbUkAyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwbUkAyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA6BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719628462;
	bh=Pth8EQER6AWj6Df2X77PBgBVTVlf2EoJ7+SCPfR6cXs=;
	h=To:Subject:From:Date:From;
	b=iwbUkAyffiiwYTl9MmaibUdUdUnwMEAonUYxskFCevSHMzctEkHp/hYKFpO6bHESN
	 G2DyleIDY4FrjcH/doccgUiN35g22Te3TUifSYpnGees72OpuLCYGnP+hUK/9bXGNZ
	 cw9neJeUOCgo7dd4oB8E0FfGYIjI2AIOsoF/b24/Eh2OUZ9qt3Y1VmmQmf1Nwr3Csx
	 9wgr4i+nwgbmhp10VZlZ6ZDv9IStd0UUB67Sx3ADNETt/m2TErJ1elESv6niA9kJG9
	 ZO2NZNVtrsjaYPoqyyQXDEJXwTaZ5T6ed6A2pTbRi9Qf/GPQfv0cJ0QNAJLFekRSrj
	 dqJPl1+FGVrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CCAC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962846279.19492.15718461092520618750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab29e7b9fe8b9f526a3c7d4faab37b8cf20ec4ed7b6190827accbb78df842f85
Date: Sat, 29 Jun 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719628462
