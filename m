Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1F440E8D5
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780665874; cv=none; b=mpzUCXKU+tk8Hcag7d49Iw7IVMJNblqjf9e/PBipM4BoaFpxhtKi7ARmME8Py/4oW/6pmJLrTUYevQet8+q6mDsHGsdWFrRTVpXZr3QybIvkcK1fKfWsh11Ism8XmW9qkVvJD+yRfNb63c9FHZie7H56GZf1Edgp7Wp0yy85Bn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780665874; c=relaxed/simple;
	bh=XGfVH+bEcHLpIw9xKdiZY5eqbcs+F8RAmGep2a36G+c=;
	h=To:Subject:From:Message-Id:Date; b=HWF/TLg1TqyX/0Q00cdxmvMxvAkgM7P2RuVDFVLng8P+urNVRQtuv9nc01H7Ud90094W8GsIlKitPrOArCvsXEfxao1PtYYcz2/JWZmn0y7htdqXVhe9rDPUH1i+MqS9nF7ubnCDgIgLJT0l0QGrwMgIN49g0/QkvjbLUeHah5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTaF49IL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTaF49IL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C892EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780665873;
	bh=XGfVH+bEcHLpIw9xKdiZY5eqbcs+F8RAmGep2a36G+c=;
	h=To:Subject:From:Date:From;
	b=pTaF49ILG0T9M4Vc0Fz2LqTXfsEXOuX7NB+CLr4TR+ubBwESEq8+62xmlYAUtoLiJ
	 6zeU7jGmJy2V2L6AtHa3jM3v0rjMTzd02oc8lJeefwXjYGNhsYABofw8dnQiiTVqWo
	 KeO77tW5n83Vk+WDdO8nD2bO0JsaGhO8xEr4ipYjJouv9MeW44saryfMe6koVSs81q
	 +peTqaVMl51VetnQuYNwPNVEa9Hm4+jv+71Lhmy94fbcPJHoZIbeSRK0HhEvgG8w6E
	 +mUP2tSKTVJH8AjPerR+HKFk2KjlpvxSgYDMtezMosCxg4j6KkDjrPfahA6QJSVdpD
	 jiE9owBgtLNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC607CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066587369.29186.14677473430284351471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721e0a11e80ec24538338cdc22168c36fc344e8ca7bdb4145aff19a14f8a83e5
Date: Fri, 05 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780665873
