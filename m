Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE33D512
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708044497; cv=none; b=eLYmNiwhav1QDM8mdBNGhRK3Jh9oYKkHd+Yku1VtjoqFqsmBxps1KNeNHzMZlPHeASdXlTeD3KOjFzE23bA3XikAGDZtgPyFF29JX4zClgrNE/yVzhZR4D2VrH65l/3a2FWUr+HSty2tQ6ie+hkvHBqIwHZELREbN/sUIP10b34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708044497; c=relaxed/simple;
	bh=fvyhD/XaX6RkMpcDBMH2nwTT5w7ppQGTsDLloZT9LyQ=;
	h=To:Subject:From:Message-Id:Date; b=F1XpZedQ2PdLT3Y1TPfaJRy2VlL5VC4j7uuRhtP9lE/bsycYnnbTh0HHdgi4Csvm2KzOY08huMpIptgfeSU6l6eTkFWAPHt6AvvOdnBToX/wAXVVz1x04V7w3rWYmwrliFWvV7HMrgYEvLTkMwX9YZwTk5rcON4D1tGNc9FQyvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDvO04wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDvO04wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F97C43399
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708044496;
	bh=fvyhD/XaX6RkMpcDBMH2nwTT5w7ppQGTsDLloZT9LyQ=;
	h=To:Subject:From:Date:From;
	b=qDvO04wiDAVS93YsEeurG6aXM3K2aKYWcEwMOg7Au4wGM/IqMlJTwXLGYkK4Ckyls
	 zS1d7faSq46RGOYKgc0G0Nrdam9VRuARm8s5aZZi1WPnMEAWBlEh/6DmAg6iPvq8/3
	 fsg9+gKWrFjFwp4lUOFLGydLCLyeJWMPy1ISUgXMBb7u28ea4sSW94Cz3IUYPNW6bC
	 wgIiEIRokGXVCg3hyBTTJczj2doGNkbTrIYJl0jPNDPzufHssukL1CO9boxmrzM7M8
	 WN68bvxnNo6m8g1hKCzcxnDGIC5M7373LuHRhfsJeXfpOqJA0nWyDNYWrZDdJugEs5
	 XhiuGfv0SFEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2FEC4829E
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170804449640.14948.10454026393741943586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca80bbffaee6efaef5fc17e138eb8e49485607cee061f10994b2fb1d181e4767
Date: Fri, 16 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708044496
