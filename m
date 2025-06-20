Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB1B12D758
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750390194; cv=none; b=BcPYoqf2LXj/olPixTgLsK8LbeS706K6cql3Wi86Ssd1tL9GE7Y3Iz7PlMkvZfRjtoKOnO8zpg+jyezwOz+L5dbxG+EqB7fr1SvUAYZqViAhlW3wlFVYqyxHgnoaibcgt3P4lr/s/DHTN4NXqOIEFT+th4xDwe/S8AEPnxJYmwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750390194; c=relaxed/simple;
	bh=J+/vCVV7d2rNp6Pceav8D73p6zc7u15oXhzoOF3ihCw=;
	h=To:Subject:From:Message-Id:Date; b=RnkI5ONrmD2qewWa5iTdEX5njGl3fR5hKwTQlDqs+GVgIHUSvaQyt/QRnrsbgvnQOk82OxPWh+BoSw7+7a6VJsXSOVwfP0OCOpYQC3Uy5NIdy17X/hZIoDfkz3fBGhIkH3nDdXgSHrHqj16/bPFwzofpyUUP8lp7VwQDkgAl+iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXOHhlkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXOHhlkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FCC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750390193;
	bh=J+/vCVV7d2rNp6Pceav8D73p6zc7u15oXhzoOF3ihCw=;
	h=To:Subject:From:Date:From;
	b=KXOHhlkkDfQA/I17tfB3BGWZw52ZItSYMJ2jledJZBRIixcnboTE+TNoYsk3s3wCB
	 ixWxCwb2nMC4eJvOYUyscBRCXLKiEaaoqn78zzyWu6jBZkybU9KpB/GaphMCDaTkGk
	 gvP08z++fvy52dORF1qlOT6G7ReSfHM4XFMLehaq0zendho1Euj267da6J58m28xGK
	 pcgv+wIlNBWBJOQxHfSjTH2pTh7OFNHJ/A9cmjSinQDTOc3O9QbQ/k0O5RN4lKlrcR
	 Pokwt48XwYbGWgdPUpXyzlpfHny17m6SCmA+mI88+SKLVIW8G/7ECBShosUisqoRR0
	 XF7WLdiUoxNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A6C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039019357.13234.919448093839489788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f80b47eb77a4f8fa3f81801da37d0a0b83a3b1f7a1edaab508b4de08b1a627f
Date: Fri, 20 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750390193
