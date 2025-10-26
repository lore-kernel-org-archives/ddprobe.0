Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8852AD3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761445794; cv=none; b=TZbCdy4bFRpO11eQ1BNr6B51Qsk5AWemP0EFw6b4Vauc+OwHhYuMrKweEC1DP2fsiRBwBaZDKMoM4NYNLz+RyMgtbUsUg8GuX8fbISgOaeZQcTbn3s4W8eGrWZ01hrwDTTgn7LeEtccF11C67/IGrzkXiFxATis26oJp3HMvikM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761445794; c=relaxed/simple;
	bh=mwu2hlM9D6l4QeajSihj4Ofngdn54AfpGMNfOangL14=;
	h=To:Subject:From:Message-Id:Date; b=ROWaI6IgOfvrWedcDZag1oEYG7M66jb9infU2ManWS/ZtWMEapG8qprPWaB76noDLXRiAYNoyDNhoX1ywIuHd8HjBTd2o5ie+t1bBG+SGX99QAski24UemvodhrewQhvjGap9yhr9JtAv//x7RnUJTPAeh/drowXrB4aluoGvoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjKGmHYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjKGmHYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A965DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761445793;
	bh=mwu2hlM9D6l4QeajSihj4Ofngdn54AfpGMNfOangL14=;
	h=To:Subject:From:Date:From;
	b=EjKGmHYSS+dYi5KUgkVsWeJ9RXEzJSg2jd+OcrazeKCYqln3Pz7vs/rNsD/jHkw0h
	 HGnqKvRKBT8YbcLcAUBKbiXyRxpkedeQ38f+HGQBRd89XgohdNlP1kOMr0oUO1X0M0
	 OQf0KeBeVYk0atS2UeXJ7tOR0lBnhqqt5qzIAFLWn1rD/nAFVabZYGuNq5rjT8fCKP
	 zIf+ERScjuXEUgXQFG0/lOxZDHW3vQ2i2Pyd6Wh72YQiIHy+5m6w4aEyZFfxUZcRFH
	 72eT/6Nu9Lr6baegQXuP0XwRz+SXuJ74rIBC1nzd3Fw7ZnafowILzosOTfMXXos/DV
	 fr8YbnrwZSnPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBCCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144579359.13638.12857096094283800239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2031af3e1a1d4dd159c405e860b2ef921960b6b050d15ad113687b3ab1eead
Date: Sun, 26 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761445793
