Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D7C1B949
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719457403; cv=none; b=TaO/nyFGlYeyV+nNjKnJ6uTNo4sgYEiezQ9+0ndSmj6B0LfrgT6izJ7P1NreSWHMa12z263kUByAL5kw7BB6C9adwWjfZle3UVLw/EsHiyYymephylbVuaIFQHvM2w4Pc8Glem42k077hGGjPNuN7ZCoGlDuKUnFTLsR8dxgHDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719457403; c=relaxed/simple;
	bh=NMCDysHC4m0d62u5aereeNAX7zxwnXAtCcNUEMvXjMA=;
	h=To:Subject:From:Message-Id:Date; b=hkMqIsOX8rAfgIaOkGnDBIHSVpg19YNZz/GEpqllZSF+fxmT3TG/hhAfassyM3MBUS8unFBTkGLN7pz+A3O/ZLbauyOI5xRHOk8bzDZ9qnV8VAER8tv7793AqLw8DSKXyeSMs54ILqbqIKUkEU4OrdKwV/3fANXneQHYRuL7gmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB4j8THM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hB4j8THM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719457402;
	bh=NMCDysHC4m0d62u5aereeNAX7zxwnXAtCcNUEMvXjMA=;
	h=To:Subject:From:Date:From;
	b=hB4j8THMDsNYzKfQCzNV0H9/Mzy6LCaIG3vPrKBrKewWFzr9hDi6XZOnnEqJjAkba
	 ZGIA/KII899LrKeGzxOebDqPevf8pfHIxCffZ+3PausJrWET7Mqqrj89QYfgCVjVhQ
	 nn7UWFropSKT+4OyzxG7MnMUrseZ2j3bCgw4YDYC4vl/Epcbdac9p83o3gHOCQnomf
	 /BXh04xXXRG6nzoX26v1ZYoChpCBUldw6AHSAiyM0TEoZrIeNQE0ONRtqT5wjnrQbL
	 Biioak2bMvc3/Sr3THIQXHqGdwvvkIMJ0MflnDI/c9avTqXEUkDXAC+fJ5oH/vWG3G
	 pHde+X9pe4LZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB5FC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945740277.13628.9303711440838398047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826b676a566dbccb5115142ba23dc461ceeb7c97097d4ab8980cfa5dcf4004ce
Date: Thu, 27 Jun 2024 03:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719457402
