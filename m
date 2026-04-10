Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124D11B4138
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775792254; cv=none; b=R4CxlxaUcd6GCzFQpnpJivCZ8AwrTgdZF1goX462mzQm5j6ZJAYkpw/H+LjyuXCGJ+5BErCyt8iB5Z28BhgGagzfwpkRNiBQDT3qtvKBExGPM7TqKlL01ogPjwCuu2ns736YSq1HZWQYP/8lxBuVSGbz4O0Enth/z0ANZ9RABRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775792254; c=relaxed/simple;
	bh=D4nd0+EzAnlsRZzDBMKmQAJiyJpHnWIIQ2xlHkYAJg4=;
	h=To:Subject:From:Message-Id:Date; b=bLOmrv68D18KGO8Gzimu4U1Av/1gxy5WlhVcCZQTDpzigb/VxhNgOFGLjrwkKmpj8l1m07StSGKdBpR75vD/JcAVPZuQ0YyJU1cnTYmnu5Z0y1L8c4ADmlro+C3oaAtstSHXWVpo3GT+eJt98Ipr6299K5XCv2dpaIOEcFsB7pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlM7Khl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlM7Khl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81F4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775792253;
	bh=D4nd0+EzAnlsRZzDBMKmQAJiyJpHnWIIQ2xlHkYAJg4=;
	h=To:Subject:From:Date:From;
	b=dlM7Khl2Uu3zPi/Ii/wd54zSbWytLfuXlmbNQKb15fLuzA7XpHrg4Mgi8SlNgpbnZ
	 SapSJ3u65VV6XOLAbRO608iLDwiKz4FdOpFN4mz5eCA0wNodxBg+Ug39/nLlma/+xd
	 L8aqAaQ7iDF2RdN4dx8jBmKlfA0hSbw32KgYWHlM+TBk960psNxKK2cZJ5RxV4P/JT
	 tf3OABj+zFI2e7uAlN3RTrp11domdhobUbRV9VxAHlIFldyQoQB4HA1j52x9W5soHZ
	 ctLrr3vOhTUVpbsKePinB1XI8NGoEstxRztxGGDu3BoM+Fb7vlf1AIBImE1+xLxEDp
	 Nm/i9nR9noZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE5F36BA8
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579225368.26688.16173771588973582767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80438cc0b73ec954af1914f09b71f83f2b9f1c672744e1478b615114e205bfbc
Date: Fri, 10 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775792253
