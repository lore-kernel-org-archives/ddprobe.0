Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6143D25B4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779366034; cv=none; b=lNzsFxAq7mhR6+ozNGkqlKJjT1RMMZIsfN4hrgWEsv2puv/dLtH2o3Ml86tTgEUKDzgMiRNAFqpuayj5LP07z/XVNshWuUvfYajov9g2uvi+lWCKgCPwxO/n5DPp7r+nn2p8sjsH+XlLaqnyfeNzvmDU+zeiInqbzyahpM4KKSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779366034; c=relaxed/simple;
	bh=BJ58Hj1FoTXEdgT0a5UbaqD90CDZ6t3WoPoMynolA3k=;
	h=To:Subject:From:Message-Id:Date; b=X45LXi04ImN6Zx+58fERrGJrkrK2h9NkoDgLGyPcXsug8hBqn1UkApNnM1JwBTsAA1PIX/t5ssakJ/OeP7PBKMjjEkgXzk1x1CelKPyjyi7AoJ2b3TBMBB6vCIo/DPlGUV2nue4YkNHWXwoRr1mpa+dZa9uTafoGddZQ0Vuwkng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FV19Kxqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FV19Kxqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCF5C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779366033;
	bh=BJ58Hj1FoTXEdgT0a5UbaqD90CDZ6t3WoPoMynolA3k=;
	h=To:Subject:From:Date:From;
	b=FV19Kxqs7+D5zxCQnF3PTceabdmtdAJZPLeDd031F7E2uli05XtbYyM+SHakjB3ip
	 vwFVWlkr7ilHxBZqa5Wk6F/XEoMh7TDZD38bZ2aDhZKXmYnQf8a6zudOSDGTCxE8VL
	 PXv2LlQo1EMosHM3Y58Ph18q133XY7Qm2gtiJugrcw2h8HhK6xERtnlbu7j28UgVhn
	 92TeFZveaLK1adKh/U0WQT6e9+cNhs5KmRImYBAXb+FZ4ehdWx7+euVwhd0+t36ck6
	 iv0Rg27tITwzNpjDKhhB5bEg/9dcwV8GMZdERa9drL/hRv7WIEbXi2SNSyxQf5V9Ax
	 4izQytpIXfWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAFACD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936603375.20784.12997546725677511189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727b42802ca28b4475c1c49205c5cef7be17afef9e9925ce9f73628b97d8b1ca
Date: Thu, 21 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779366033
