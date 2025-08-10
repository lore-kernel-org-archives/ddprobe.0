Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378E92E370F
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754843994; cv=none; b=BJZ3UvAhoDSXcwgWE9vCEy8ZzU5ZOC558fqNJROqPDq2JjVPa/MoVEJHu2BcCHRB0cHXcH/VPkBRE6MwwpHhMXPiSSK1mEkQTUfxKtjARnIAdSExDDmDL0LkSEU+vIOUIblUr8g3FPMMbL98Nvw6h4VWeWg7i4CeiDn/IfminGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754843994; c=relaxed/simple;
	bh=MONXC21zVcd+8xBkAiEyX/3BdJFo3T4IlP38iGMIJaI=;
	h=To:Subject:From:Message-Id:Date; b=JDl3x5+BVzudcN/M4Wc4evXPqPSjuAeZnaT5lNwsOnWdNPpYvH5Dg2/rqb+6OrKUCtE0XfSBnU72LHPSN81Kgllgs/Ff0VPj68FwVkLg8wsZIzFYzaSHxLqjXniOMLx4OIFlF51Nxw3O2NjEnxYdVmQOepzoIkicXUc4bHIUmTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6ydXgEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6ydXgEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754843993;
	bh=MONXC21zVcd+8xBkAiEyX/3BdJFo3T4IlP38iGMIJaI=;
	h=To:Subject:From:Date:From;
	b=E6ydXgEi1YNURx43Q4J15TUwSmMC33hO8D/8hNG/b5bwbP7Ek3og1j6sx3/re4/UG
	 PQpvMA0hX+7jRTx7geR29vSkTIViHn85QJ1LO5AgabePXa7Uz7aXVKTp44RuUq1uDT
	 OC7Ng4Lqp4ppkJ5LeH2aHKRpJXio41AW0Vvn4WeSAgZztMxvPrZoa9E9Izd8g9Ztvz
	 a6isem32bCTp0df169yasws0O91nAgRRauPbaZKqu7oaYRFurQygyDdPJ+IMGCs0MS
	 fNjV+C31VzYVLOIkQ0I5bZcra2dA7hXXkjdmx8wvGf4eMd1yse7M+Sk37UtxeYcgid
	 6TZFniUuz3l9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92124C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484399357.13514.13771903420754797243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8cb269eb1c63b13ce5740163807e5c06cccde63dd3703cfe6b389f08452fa6
Date: Sun, 10 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754843993
