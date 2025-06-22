Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D1E4A2D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750558194; cv=none; b=EthLxiCDMJ/ZarN+KwLHfgEMreqDbcHxPEGgTRq0XDJw0Ex8izxRj8dG07H7vrQFLR5afIbd0mWD52L1VQoi7yuAoF1Cs1Otvk43JIwHY9UN9/q3hXV7QrYJ/nFq3YM8xTJyi+Jnq0BsW0+SqRQow1zKzRruRPh3+Tj/xr9hCqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750558194; c=relaxed/simple;
	bh=jMWB2QOjgWvG7B8Ii8iU1j8FVDmwS6aHpYcAAKBdQdg=;
	h=To:Subject:From:Message-Id:Date; b=iv9Quamt+gC9uLyrQ8D7KUNONmUXeEEGjZihrLB8PqyI3ea58dks17X5wYjajF7GJGnu78NAGNymayomtDoRcH5PadfSoZVCg/YSbsXCw1qbUaAFKOxK3IeRTlyTYAB5t7UapeTFeXUGvQ94egB1B1q0sndjNpGrzw15vKWgsXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+1sGyoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+1sGyoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750558193;
	bh=jMWB2QOjgWvG7B8Ii8iU1j8FVDmwS6aHpYcAAKBdQdg=;
	h=To:Subject:From:Date:From;
	b=G+1sGyoMvnT/rWWo4i+SXFYg8Ktecivt1ET7q5hfPhJFEEUw8Tg+wPZfr+sck3Pkn
	 yJDgauYmrXqShER8l2FWGJONUIp6e57dpldtcBzQUt5uqNauUERCXiUVxxKtB0y5Hf
	 FHSNH5oGA31QsRPs3YGmi7LbKOy0oKRNSmXbmOfuIMF4iLpR/xk5K4c8xZ/AO2QazO
	 acnEUqqKFXA7ARQVxtJ6EdOijlQ9mOOQPYb8W+J5ilZ7rXrkUGiVzbzmQwaUhey8yk
	 ceh5u8PyOiyMPheJt329CaexC6VxUzew+mTE3ZmoVOlJXuOsU0UVEYTqUC7m9Uf+ix
	 jouk8/6ghNekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03FC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055819357.28011.520362742072826808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0544c13e4df57617d35fbfffa25d7993a39d1c84e7e6e17c0189d18a6627670e
Date: Sun, 22 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750558193
