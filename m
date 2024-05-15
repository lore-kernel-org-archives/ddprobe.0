Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060313BB22
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715751743; cv=none; b=IW4nd/Nu0Xz3xUFDi318pKvoLd/WVaCGbVYS7tr6tiyCZt4NkshEgMo3aTGBUOZ+yUiBDYO8sPXFwShLEtvn+GShqdAdMbUTOyVkGU2qERbOYTtVaZfsBD5/1aQvg6fgRwYtsi4cn28rQ7uZ6Kiysf/ZxNUyjCA+G4/+3+dcYCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715751743; c=relaxed/simple;
	bh=GQZkwzJHB2ERTM4yltwzuvSObSqJaKXMcyh77z39wBU=;
	h=To:Subject:From:Message-Id:Date; b=g86yqUTJG4gZDehRogLX+n7yrhc+yeBG6njMZ9ULvzC82V3BC3AXDrZbrJLha7iWB0nULUpyGlzAuCbcc4RgnLM5ef1Nk0VBatgfKgdWyIY5HIhSyshSyW6X5X2hnz88giX7le/i24msQog9iwOY2KiASn7UXKFgltw0vgC56Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpUwpnu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpUwpnu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715751742;
	bh=GQZkwzJHB2ERTM4yltwzuvSObSqJaKXMcyh77z39wBU=;
	h=To:Subject:From:Date:From;
	b=DpUwpnu1ODuQwDBlyZHysh3ds+v5fBp8tSQ5WtuRpNPZ/cvntAWa9Kl0VApyMO7lZ
	 JtWMBFA3zCrLshxx7bZe9C9HKEfYFACPZdZREsrpZBxOiIFBjswh7n0aDInfgMESEm
	 iFq5hnTUXCb3vyCWTblq9ba7qR20rprFc5dE/bn/Fe98+8RuF9t7FTckBEr7rk2Ch/
	 lQfOulggJzepaUnFfVrpRUINSX2T1I7aAssZukkrd1z80icpXCSE0fZN94BCxOXOBu
	 eL3QB9WuKSYLADuKyP0/jE9rdaZ6+Bkt+1RiVQaoGRyxCX6F3V0QQM0pOsQOGVd/Tp
	 mG3JxmGa6te6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F93C25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575174280.3167.12806435033230294516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1990bd97812607e3fbfdd1cfaf6cae7a72d79d0f853597470ed1d6ac1d4bbe86
Date: Wed, 15 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715751742
