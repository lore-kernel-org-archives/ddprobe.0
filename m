Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA7526B76D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750928394; cv=none; b=RCGhslJtz+FcmShzMnfwqCawWRfSy57AlJQZ38ZgCVYMez8YKOC2H6iQ9PJ1s5oXlAY70W/Fj3lC49wSmaql8cKWjJvYI4QjsoQtNjSEGXds1DVZzawK+NKX06ywPITiHJiZInJZyQcReNmafJKaIoBq+wSfXyZlWSW5N7ryZM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750928394; c=relaxed/simple;
	bh=HOva6wvz9Gibly7R9Vwd+N389IBk677iF4GGfbH6z2A=;
	h=To:Subject:From:Message-Id:Date; b=KDETtCZdoXPe20ClGz70DrB6ZSQss6dqZ8gP9/UdHLLfhY8sw2oxd6wj8iCgBOnxP/aKBsRVVJB0k5W/6NWU678McTgLwuqtwqwwrzwRwaroCoqmSvcbokBPePSwHdGeaNUt0+AsljsfxBeJfq/IUD3kemDvexjOadzjobLuug4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJp4LE4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJp4LE4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F7EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750928393;
	bh=HOva6wvz9Gibly7R9Vwd+N389IBk677iF4GGfbH6z2A=;
	h=To:Subject:From:Date:From;
	b=GJp4LE4XFOh2FCC0yLUnBaqwMklEvwA4SVxzoJglvYpAtx4bdYlzYqNaXZ+vFfHoP
	 t3AwRsUXzN2ZqCSdE3jveO7Fv6kaI6UVDh52HlVYGFgiNnt6svN6PPRQXo3nTsKZ/3
	 ZAx+9CbV0b3JRCI+Ie/2QLeh8dHcwKyIOMF3Ubq3PCjAq1bBH3ppKlsQj7lGD60ze9
	 dV9dajZtu2YOLtN3/IbJ0P+Gup8InPU8Trd+4i6KqxM6XZWl43Y0wwTZMktLow1CW9
	 QOQ1YZNcJuMfv4AYaM5c7Dt+tTkg0/UF23mAT0eXEnEDrNsZ5Dpbstn2veVGg9WVlQ
	 Pk7OpqY6FJsTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CFC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092839359.19678.2869356467141369996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009aa5a2139dc67ad5e9f06e52e342ccc9b7319fbc8f86c3ef37a9c2958020b3
Date: Thu, 26 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750928393
