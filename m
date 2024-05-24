Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5337EC8FB
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716509603; cv=none; b=OqWddSRmH3VhWCpaEBXCzddJ9PlVkFz1HC5itCCkX0DyoX27LdEQWCdibfA+FmXRu5uxMmvKNJcfOali6bZfxDGzIxSfI3aQilBW3LuHUMzfxeAqVmNasUdCrBCtP2Ad3tSoPndmw5nN73Z4hVceSfH2FUsoetKwaWZwvZJpU1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716509603; c=relaxed/simple;
	bh=rcl4bu05i9pPmwuQNmrK/yRydUS5vckUeHsZUcJYGDg=;
	h=To:Subject:From:Message-Id:Date; b=ljrNUEBasQMTPr54hpxMflb2ZOCTn543XZDBfEXhWHpnU6wt4rgvJcDrKSiCA0ncXGLuOFckCYpGygVrPC+e7zG2uLwy+TYh+IhkVEtkipIWFbp50e57KZPnsDRi6HgNNf14W+I/I1pyM/HyC2pTuj/FMngYaFSGaMHlcOxwRrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP4K5bco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP4K5bco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDA5C32782
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716509602;
	bh=rcl4bu05i9pPmwuQNmrK/yRydUS5vckUeHsZUcJYGDg=;
	h=To:Subject:From:Date:From;
	b=JP4K5bcoTacMbOJCGyOiaP/Njot78kFNrPyuAbRgcJboMbCmBhZTWjyP0rm2oxhup
	 yp/eGGk8S2B3Sam90BOPYm6iPsc9wUQ7BSUXadk20QahYz8CqFap5Jn08HgA9AiL/P
	 XYTGn4gUKFU06scn6Tp0pwldeVZTO1jXwCKTtXFNPszimKQzr399G7qIAdbAfEYnYM
	 1kYAmYLGPG3PmmtW8KZeTOEY0liI/9PBb5UFX3UqOu0MzYQW/kWeGm4qXvR3IV/XVi
	 YeZXDSvPzosmxFx0i0MwbnzqlKkMeIYSnh9v+Vn42y04fvMlZxtDP9GrGRn6P0U6lj
	 jek5hMl8vlTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55BAC25B7C
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650960280.13939.16181254148873298181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e240a2ae5493c1032343045576b3cd03ad46e2b84a12b789fd207ce3603f2968
Date: Fri, 24 May 2024 00:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716509602
