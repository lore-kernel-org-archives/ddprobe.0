Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501D128E7
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712885363; cv=none; b=PIFqIIdE6xli9GoCaaMnM2VCS1DahwEWhn5iaXVEOrCypm6QaIFwCsPseBl+dqOYlfRPvMpLvXCEDbnnwEDXuyjj9M+cGy6x8fAihGMA0ok4NXs9UGfw3FNRWuPIu+SwimgSI0dvGJrr+mR9C1Fx/uZ9/nspXY/0ALvJHqGP0o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712885363; c=relaxed/simple;
	bh=E8GBkrxxw/aBe5xnNjIcsjGaI67SaIFW7c1SmcDVrs0=;
	h=To:Subject:From:Message-Id:Date; b=AJXyA/ghqblnNQXNSVsl81ys9Ba2o0yr2TRSiVKhs9EGvdUAXo5BzucEoc71zNofoIWo3WLKy18tgDiOehkXQtTuqdPKjHCMGfpwCPoxGWkcQXLdfUbVzlV5I5+t20Kp347dP8aQ2lVYiM75bSeKjje+jNaGJ08tCBpoY5zfmxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQqT0pMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQqT0pMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7C1C072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712885362;
	bh=E8GBkrxxw/aBe5xnNjIcsjGaI67SaIFW7c1SmcDVrs0=;
	h=To:Subject:From:Date:From;
	b=AQqT0pMleNhTAbLJFeZG92kYAo+zj+mUBaTrbbTskY6xvp9hx4oIbLzcgYYFXq8Z3
	 NgJkozGqunzwxP161cT02/HCgQWGdSwN1DiRv5Qzpj4jhSTxKqXoWYM+yCrQrmG0G8
	 l2Oq7oOjTSFzZxesOmwEDqRw2IlkYwOCn9db3DN2wKsbVEg63xKfziv6e0OHD98aG6
	 tuHaoCAVV3wlMmPKC71bsfVHSq1kbBAp6HRJRppYbKiQ0BHTB6om7fKWQg+xvGAiGd
	 Q0g2D8CHWu+o94CslPibANxd3Mnyshe1hFgjilIzc90phYWtUC/wbE/lw/pM+8XK4C
	 /mqKCRRJZ5Vhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB937C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288536276.4555.18047559453449159586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d5e34fe5f0e077d0878a0e60aa6c0eab50e613e7e83037c91336bc750ac732
Date: Fri, 12 Apr 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712885362
