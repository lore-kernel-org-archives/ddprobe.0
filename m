Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E5E29AB01
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752710394; cv=none; b=kcJCK/7PTo8H8WZvZhKyJgykbKfwGZMxKgpfJuLmGHnodSPAMu6qB2Y2liuEykStHGe99J6+evuDWRndO0aKCswkcD6Mp1j7KQ8kZDsIlQvHiirRbL/DIYLOMYB3WoTEA/FCTNFLwK1mezp/5+1xqttUgXOsfxtsw+ddVSlZyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752710394; c=relaxed/simple;
	bh=bmlwfK7YjzVOLlgZaF+7MjwYlZ1XvZHYnggnpOGlIdk=;
	h=To:Subject:From:Message-Id:Date; b=JwPbo3Uo5MIJVf0BEns59LiRZRzHB7OPVYxPE0jgCkvDEFBm849o1xGvKwv6PDYw+DORHBUqkwKT7jiFWoD8f+dVaY3NNCpQoQFNPdeJwS1xx6r7sAHPDaegZhiTb5p+XZi1nMa1YAEMHf5XltFN85/cxUDuuGzAENO1lJ19t8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOPhc3mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOPhc3mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3494C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752710393;
	bh=bmlwfK7YjzVOLlgZaF+7MjwYlZ1XvZHYnggnpOGlIdk=;
	h=To:Subject:From:Date:From;
	b=GOPhc3mqlv4GM3mzPR1KHh5FXtqOhciV7JFmIGMQQhFAta0SPid2W/jl4bYXoIfWJ
	 5bHAlEdMAtZUFFeOW6webuOlg3geWTHlH41UBcrXdMHPj9xhfnCLetKQxIPEGkXvG2
	 cVZS4U0iO8hBFaIB0GADdbgDmwfopsI/4Lm1VXFvV+fmw+ng7YvAEDpLp1PIyc/A8X
	 EBRGKrZiFL1fzo7BPs6qpSJJ4WbGkYt14CMKu1ikI6cHWtfsgSjI2XjaLhLbyAqbTm
	 rGcH84onYUZ+7WrXc3zXlKg09GXefbZaZztlOyLo6GOughzltENvRawQrXoUHyRPPH
	 ljsG2BTJIF63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ADC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271039359.4270.9409081130455103378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3344b0fd0d70ae65c1524b4b149d922f5afe211da329bf8512a623c921291c96
Date: Wed, 16 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752710393
