Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F6A2475CB
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787011234; cv=none; b=UeAeAFs6mDl3tZLGoWRzqboODdw4bEE9zFC1cNdG7SLwXg2cZ/Nbf+n6lls+uWTgancaQi0Tj0Ir0NLfzOxfxQVPLLWmjj8Eu+gRp07ImYUvI5gqvB//M6eartZvb29Ct79RYfWI5mS6KYMnE7cH10t2ThKYmzLp/XZ2KXE4+9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787011234; c=relaxed/simple;
	bh=8QwE+yYON34yPi92KKoFqwSkJQJXIVDI7kBhtSLbb9g=;
	h=To:Subject:From:Message-Id:Date; b=An/2BOZvUYvK+gfv31KDzj8rywypIxf4RUYAerTfVg7NhbeJih6nvVZhMtlrzb8RKaRsjRHNbQUv9xTR1awFPO+SWniAaE4B1uXFwES/XvI96Bv4CA8kNubCxoKQuE2/ZMLLa57K6pcrWd+oCfV5uue5vHPCqlKx8xNTwBsNh08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niyqXvaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niyqXvaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3BADC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787011234;
	bh=8QwE+yYON34yPi92KKoFqwSkJQJXIVDI7kBhtSLbb9g=;
	h=To:Subject:From:Date:From;
	b=niyqXvajdS5Xxh4Z/RV/JkP9jXTGF/sZM/PaJrU7XLgYeOxmaDTWF76vqLEBdXxfV
	 VQAkgFaK+ChYW/BOqocEwEerVJhkGkc8s0TxjlaQZEARPwya4eF4kpSrGU3eCiGEcq
	 LmJVzONgOZwC/42uXZA71+d6bzBDYnCCBrNTWZaXspeL0YWGu6WTj68uVVU497zsvR
	 wbiXHp6/QkZAxSpXXNU/ex4GmiSV/hRnodARroOPahmz00kHS1TFxTdg3zfGZJhz5H
	 tzBhSOHElQ/y7fTbESf6RvlLM0Y1tEYj11UvhXl7vehQsyTR1fB84DIOor5gt9V/8v
	 B6OfS2NLam8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9019C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701123381.982.8520206493814376711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c249de7396352deb30ca7b96da24b3cef07696e9d9637a6cd619c2aefa9a02
Date: Tue, 18 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787011233
