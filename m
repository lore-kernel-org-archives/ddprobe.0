Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7563F3822B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785729034; cv=none; b=owWFDfq65uGrfkMnwKCpAcU4DyIMUd9s6tgMdcb1Q7Cah4cvSBF/GEeNGtFnUKjAkTjSaMc6dUJbjnYCWWoAdJc2z24Qb7idjdIQ4T3jwvby+NM13Ksabg8cebNtNyLaEFz7hzdIKxNcAXFXqr0KR90raY+T/hHJWgHkpT7zJKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785729034; c=relaxed/simple;
	bh=FM6HQxP/EQwOcDWji+dFSpQjbetplmljLpHa0RuisYo=;
	h=To:Subject:From:Message-Id:Date; b=OJWy5RAqbNOLkBP6EjR4rK8AXbeDkcpk1BZyXg5dsj9PbdeMNg9hiJTOTct9yKoGbeD3v42Ens2Gdj3/+ku3YmUt2oWG+LKjO1xXmQKHPbzi4jXpmQevLagOjAHaU1XcdHvF3TpOtyLXsoqCI9x326Qyg9c2MtfGJFeFYjUM7os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+vuSiPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+vuSiPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26B2C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785729033;
	bh=FM6HQxP/EQwOcDWji+dFSpQjbetplmljLpHa0RuisYo=;
	h=To:Subject:From:Date:From;
	b=e+vuSiPB9S5fDGvk6w6JfskEdbz7QxocoB+aw+/8BTjylzeIJJ7NZKgIhRRL6oeqa
	 yv6OcbyJTpN8RNOahSl7m+0JH1OHn1X5ROjinx9LcE0TcGNrzuN6IUD1cO3Z0YpHiI
	 Y2c/4JFcErleJT6BangRgtgaW46/+7jkaGrlVwHgZUCVfDjG286sFk0qFPQ+wKDghX
	 tx1ybZwFnMwppUUGnF4a+yiAZmGdZjFfDGHV6GBhv3cpOXF02Q/4CigcKUsBHdxxnY
	 UkDQ+8xLLFc4pcgygfv53idtuktbo8Qx3qF7LqvuTsRChkAoUWf3ZljiGM7THalSKS
	 LgZHrO9Ryey4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE41EC5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572903370.26387.8562381637912320412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77c41703fd9a738cd7f2294ae37e9582a2c04b6968d344a5779fe2ee80d0718
Date: Mon, 03 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785729033
