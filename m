Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3354170810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771911294; cv=none; b=E3VwvaDE/BIWR5kyAuGgt1UD1/e4DjoqQ6Xx/BOeat4rVxHcbOa/Zq0gcGBG9Ily/FkBgov/s2S85iyupOEin8wQJI1+Adi8u6sS+La7R1hH9gSyIHnW/r8/12PT7V7c/DZG3XSUjPItmizGhbBD239OUmwK8ZKtscVfldtBzC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771911294; c=relaxed/simple;
	bh=KQs8DzmxRuixLtyewzPPGJsOslm/2fETICje1A+OfHQ=;
	h=To:Subject:From:Message-Id:Date; b=MEpMLc3xNAxKjIlIpbMoar+nD5qZkDVtPkB1roBZe5uRGJsy4jg4PDvCO01LvLmKJlOCcSuFdNJ9GRPrqcgKN8bWwZSAairVSZ1u32Fw/HsNYGL0fErgQOmY2dT9mYPaKb0Am6QJdmVCmB/XMfRbZF+AteERJAcnysw0hZz85Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mC0l3K+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mC0l3K+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE436C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771911293;
	bh=KQs8DzmxRuixLtyewzPPGJsOslm/2fETICje1A+OfHQ=;
	h=To:Subject:From:Date:From;
	b=mC0l3K+GBYjVDP0ReOHXd475Z6MCZQj8tp+Kibh8g3QaRnVDZEgysDc8ZhH0vU+Pi
	 Vhh2TjXwIuB9FtTU6/DnbLj5O0PJI/5abxgaE89DSgA6Y0tR83KYPkebBtMMyQ8KQl
	 Og4eyqfK1fbj9KIbB9Ebmq4BY3h4wA5ifx3MsKsjH1hvtn6os5JubYdkW/4H9UeYXm
	 hoVNS/nYBoliJI0bW2kT8uRMMl7mFBIcsn1lMoJjeKzBZvD1/yEh3x/dYlZp3zYkFi
	 PBLJ4jxVhkQUSTO2dDZggxqeaCL3v4HWF7UmL/abNN9scDU40pXCIFY9msRHKKbngV
	 9r3/2kPKDrKlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E24EFB800
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191129361.1280.12969239838800178433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10dbefb4abdae4619f1e0190ae488b2ca51afeddfaca2f16bc790e5873b27063
Date: Tue, 24 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771911293
