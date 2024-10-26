Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2C213C80C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729918554; cv=none; b=Gl8IN7QCaGTxuO8/nQEl9wViQ1pRZGa1iNzrVIYNxUryRm7LRQHC49wsCG/Fzh+lkQwJmkNsoKndin2pKunQYE8A4/Z+Lk2ECfUBjAr6LW4JsyhJuv8jRktBOh3fgVjZKw7/fYIEOhkjSC0YPEdbr9S56X0JNnbELplhPwatLdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729918554; c=relaxed/simple;
	bh=dfIKOsJ00tIvZPVM2ebK+SqOoDO7SzxwOFZ7o4NUVI4=;
	h=To:Subject:From:Message-Id:Date; b=UPLs5omAnDVoqMqX6vqb3OvAdVpNPyiJN5x4huk0xo3+ll4KizA4MJy7tQQkZYV7cjfPRJsjIRH32+EMzHft5KMqkvV2CZRCogG6Rtj18k4INmpia+2a8479352nd0iE6A80v7b4s3QOVkOOF85IANK+nCbbVphLyT7W5lb5TIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIfMEe1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIfMEe1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA09C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729918553;
	bh=dfIKOsJ00tIvZPVM2ebK+SqOoDO7SzxwOFZ7o4NUVI4=;
	h=To:Subject:From:Date:From;
	b=OIfMEe1gAQhfjqNiW97NuBDsdd1Pvtr/n0DEhWzi9uWodxU0pma+J+seTCRPruiwm
	 cP5gY7TdBCxlYaV+zapNXcqdLX2DK295WZsp8I/Oe2gy6RenOY4mwHL4JTVuQHk2VK
	 btudah2nQdMZts42bCAOcINn2F5BfrTD7lnXCbc5wGZUVRKKdUsZkhm5GGKFmtINny
	 ADo77G9OefUZcDkLV72X2B+nR29X1Wl0ZYvUcyZmep5l+qtqaHHEpkxKak2GXS58eb
	 85f/q8YhfwpC1u5PrpQBF8aCtp6X5ApsyWy9PksYI1xw7jEHQmoNgJA5pK1bDTFkBc
	 tPbTX7uSCkjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E95D10BE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991855358.32076.6098512646231830095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb034995c8729ee3919da2d119a79efdb05804dac61deeee2b9cdb2da48f841
Date: Sat, 26 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729918553
