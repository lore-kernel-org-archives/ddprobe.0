Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D21D63CD
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746906594; cv=none; b=qi7NvljrKvEB0ypNr1nBbX1NW+Jzqqdc6VvZZPk8y1qzsWTPoozhVGfGZoC8EW/33iFNYi7SRvRK2DpvYTnEIpL4GJXWh1ox8faz3KJ4gpSSf8PFSmOXZD4CTaAzK4iZ7pXakHIovAHNgWdemEG/VpRwA0XNpCtVWnp6DyTIgFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746906594; c=relaxed/simple;
	bh=pfwQfNoiVB5qOKGuCCuG42nDv0NhGvGzf1BNm045EWA=;
	h=To:Subject:From:Message-Id:Date; b=P788v0vCyiLxU3jYKjosNsBE3Ad5jzroy6HUytdDLP70ViuBXhzLfdMt0NkIcGDXiiyoD0lGX5/fvVV1IwZ/RqExoQexaBH+28JoLO0lBaUpHVcecDfbJKDHFWZX/4sCvgAbjnnfotGbM5VEAL11oOlWh/VeIinU3kB1anj49qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU09UVk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU09UVk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2683C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746906593;
	bh=pfwQfNoiVB5qOKGuCCuG42nDv0NhGvGzf1BNm045EWA=;
	h=To:Subject:From:Date:From;
	b=eU09UVk3geE34JIS7fKp40eOly1uhnSW+LHRPW/EWFf7+sP4blc6tazfSrHz5oQOh
	 zI7g+83upgdR/LrVel9kIookcM71TpYrp5nayZS2zxP7DiwQTLKmb8bLRuV0fG87Bm
	 CtXAgR7dGcJEmjWmggX+Wxq3qDEHxLEclvSjsSTHdwnAB4GitsCBRC7kOhNra2C8dT
	 kfqqy+EP3uOzgTKtB78B+ZQz/ymZwbgbeG1afA9bWDAefaR6nad6GTYHWau1HpMvpz
	 TE+MizZlKc0O3gKxrcGqocqtVj4r1JmQfJuVKV8QGKEUh1zoSCESIbEMF7NDPkTM03
	 rOYMebPj+fnZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE1C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690659357.2513.2118165618874944390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c178757e19fda1f916086529d41a47e1fc11801d2afaf9e7216cdf9eaca095ae
Date: Sat, 10 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746906593
