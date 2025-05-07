Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994228C2CB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746634794; cv=none; b=i5dIEkOAy6wjXnFrtGrZOLWM+AqyFTa/ntV6ro/7xWFBM1W8e9meA2c0wJEil/eYjfPVJ3GH7XN4ppIkrLgX0B920GU6hWnsZxEszyMiQS/l6XK3H7xG/dwksMpTQltDIeAYQZAQT2kL3i1vhqg5qiYw71hRz8oR2Pe3guPOZv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746634794; c=relaxed/simple;
	bh=ABXZIyTSAcXO+8vnjGQ4APmpD3TZy+ncrcMRijlKEss=;
	h=To:Subject:From:Message-Id:Date; b=EiEiQiBN13bRI9ZvahHx6sB9CDo46aRpJ4zqad65fhMnZwKaIPpCGpgaAhul1cw9Ju/rgrZPSWgDxx1C9ud/aFf7XDe7yf2ho4RqnhGtMtI/E9hqntfpNLJgGVa3YrsPAo/gBi1oMLW6tg0Y9xV2eshJMMbDS2QyMEuWsGR7HXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBLh2P2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBLh2P2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C08C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746634793;
	bh=ABXZIyTSAcXO+8vnjGQ4APmpD3TZy+ncrcMRijlKEss=;
	h=To:Subject:From:Date:From;
	b=mBLh2P2uxRSxjYV8QF5zoeCP2uTlgwFC2PKPPRRD85QNL9x9wnf5SSCpHzjv8H45u
	 3uBA1+kHBIiZg1XdAtcdr/t0nex7RfQZRIdilN/DyiKNGniWA5FN7ppFDE0mL4ncdL
	 fY6mppaVwCrGYRN4Wk13yHB4XhrLUEVe2eWZEXmzJx6wTllI/kONG8+XH010j6HmHR
	 rps/lUdz1tCT2s9qrVUr2pl7LR0bGD/5WBT6cuivxozBdAxHqG6OYR2WLoYuu3WMAa
	 Lyk/HS0o9i0BlxZfbUWqlHbPTBu7GhDAAPoicBY3T8UUW63AyH1fHNa1KlFtfni74d
	 zUNjyv2jqEqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E46C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663479359.31827.10396926637949385444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec4d373833348e1c1d9a12f70f9ad4814c4ea024598f2e0c8311ad14a1dddf7
Date: Wed, 07 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746634793
