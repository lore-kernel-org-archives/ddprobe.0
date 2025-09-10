Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CD615E90
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757511594; cv=none; b=Kn2bijX+cYt3g30O6kKISQbQHZqfJYRRGl5vrs4BqRIMtw8vlkkvs+CjgXqtei5ERk/hWd881gK2s4Lh3bYDEbkxJykVVxXMS01rtQRaQ89qDiJjQmKRvzLQLgrWNwG3knD14ybWXJdF6aDOR96adUX8BX5fXA6ATidXuwmYAxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757511594; c=relaxed/simple;
	bh=zD45rjeoDeEYxy9WnrKdH3oESHF0/ocPzN1V11RuhcY=;
	h=To:Subject:From:Message-Id:Date; b=RLbs8JUXmpIzzPhbOkAsi4og5utho94nWrp6v8gL2wIGC8HoEKYssicpd6S+S1zh2FCf5I8Zn73EHSAQE4K9vhA+6uXTtyknrsd+jsgQ8Ar4R1yRE1PCll7ylgHYHsO3t8CxYgJUucJgNtprL6n7iWyB7CX6WmLjwX4RmYA8IXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtzQDpyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtzQDpyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA7CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757511593;
	bh=zD45rjeoDeEYxy9WnrKdH3oESHF0/ocPzN1V11RuhcY=;
	h=To:Subject:From:Date:From;
	b=LtzQDpyvErv+PLy3ZGzv+SUYUD9nZ+dHAml2riqdyiixqvyGdV5n2Kx0V1nsMpgn7
	 M/ZoJLF5atj5H9CHT6nnT0XNPDx85uqptbXc6ock7VeYVtD0BI5vvHMuQlSpGZ0Nrv
	 QZitB3HpS8ZhOpFx11a984tvoD9j3ErEY5kBmK0IhRGmlV9jcK/csX5fZTeXRFKhZ0
	 Ouxavbl3RU1zynzzdA9GQbh0fxAeAoNzvGGIGuMAyMbPobev1xggPeoFkI/Z1e6KiF
	 cJrkfTs++EjqaTVXMn1yobobcFDEhU1Gxvw8n/TU6UWklVi/vr3GrxzyqjgFCozkbG
	 wWch2S7fUigpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3BCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751159358.736.11418703178136146814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c862f50c877afd13088139230dfc4f0caeb9a4bc813989f96b35b8aa4bfe23e
Date: Wed, 10 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757511593
