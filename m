Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A04322A
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785664234; cv=none; b=pAwiiacGZDbt6DhZYAFUkIzQnR+GbUuvh7wMpjI+Hw+BBbIlJhiukPacQ4Fkhn59Pq+6ezmo63MyY93tO+yjoL6aULx33j78WCbPkVEawjseT9+jW2nD/H+eEoF2gSvhvXMhNaROUCtKEslfgm//a5F0mVJEex9lasrkfA4D5sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785664234; c=relaxed/simple;
	bh=++w4VXwa8IHjJFk8yUZOZTnehec/CTnPGttamXElNDc=;
	h=To:Subject:From:Message-Id:Date; b=Mzd+Zs8a6kG6ZMLxP/sjTZGgxaCGpNOEzzNmBWw6h/YlUliGQxm3+Q1ql6YEUCioJKuueh58O3zOkvyJjIlwh/GGtbc2K/8pHUvGg73Hd4YQKG0Hny/ECmwFthdgVq69z7bhiBEWALnXqhnDJDW0HAX6m3Gw31FoI48v0gmPUOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS2RfDib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS2RfDib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6220C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785664233;
	bh=++w4VXwa8IHjJFk8yUZOZTnehec/CTnPGttamXElNDc=;
	h=To:Subject:From:Date:From;
	b=CS2RfDibBAy9N1RolOaM0Zbe+mRwwmlCUOnee8SFKaEni9EjGMbIj/GVluxKIkXsm
	 raPA0DwOMEyUpb+Mc9AhcA3ceMuH8AUWqHO2kjFji36Hv46pLUjwSSSJoH8DVLcOLy
	 xEEHkdllKKRxtPNWQFVXKpTDWkYdj8K45Kq8yNqkw/DmsyGN7+5ffnh60Ff9Pihb/f
	 GA7xVHhy/pdgxyDI3dX4fbB4n3X3qBMwbysIyU+iIdcbV/7fT7cvoSt2aGrCfv5lRR
	 94uyPH7GOg1NEB6bDNEy9BfsEOKYYG/BEXEOXunBoeEr2jr/fiHuKNnsoW4rfbbrmr
	 V8mXWtLiH35Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAA2C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566423368.28046.12555096393991731221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa95d16287bd87b35d06f4244b84e56f0b3565ddb91cc567b28d7c70edeb09f0
Date: Sun, 02 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785664233
