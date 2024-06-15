Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720CA8C0B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718416703; cv=none; b=LREQ9vFa6KEzlqIpLeuwd43T636MfwJ4pBnNRGYMd81XvPTtTEdrReow2Nyhf62T74i9gMNFueJHHrNTDSO8guRKgL9nekJGB/L7ZdTaaNbTwnTH4xNbkJrKozLRDuI/rOs8YukJWCyerN0zFbBje80CxjQgiEqGnZjI1ABqB9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718416703; c=relaxed/simple;
	bh=CsMbt/TlpgnAuv8TyhLU74sTZAsXSanhKaWqwzhKbZo=;
	h=To:Subject:From:Message-Id:Date; b=Cuxiocz8s8FowKMqIrQ45P5sEYu30whtu/0hdCZjX7ySkKBBcnNvdC8h/JyX8jOlqPzBH0lMYh9ISwQn1LaxmQ6v1mbnYolbmKWZYJcyfuqiVc4Z5IGJp/Eu9QDyfRiNbWoh0C2yupxGZSY/eu4gkMkgYc8iZixT947hbzoyT+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmlaA2rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmlaA2rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED88FC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718416703;
	bh=CsMbt/TlpgnAuv8TyhLU74sTZAsXSanhKaWqwzhKbZo=;
	h=To:Subject:From:Date:From;
	b=AmlaA2rIb7xBulr9FVVG2Nsd5qgNiEywYqZTHBoT3X6vpNEI/5I+u2GNs+79KSnPX
	 5R7tPGueJFGWjVaIrqHLKyI4jo1RzWaN38O8SyqYnoKANI/sNCWS1Lim7Zh02KDaSR
	 JNDPUv2/BPUNz6hF6DOArAlGiQdOateyMewHsjBGbhjJuaphGLniYRYN0tZH4ci2yT
	 RmPsMEV/yIEPtRv5zfJBi+Uj8XpN3qBHzLXSn80Pm1nET1xwhde/TW0xUj1djK1KWn
	 jDXEbSKMaMhes4vZPMElHwGym16yhukz/Nt7cz7Aa2PDlZc9tpCaiDuxI2d5nzwhIZ
	 CUM1KioPOmi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC336C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841670279.3673.8512752090010842276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d758596762d71f0e433327861a050ac3a61c730ffdfe299f06de305b4548519
Date: Sat, 15 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718416702
