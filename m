Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1164C28A731
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759894794; cv=none; b=qQqyf0TE9jnWIleHAGhMW2ECVYHZXmzaMiH1pEGZefkKfY3bnCN1gYAyob/Jwty5ryF6t+5uBPZXbV8BkNEwQXMVhiLArnsPWYzJ+6o6zcMld2E/VDZ6VS++CFfmbrMXcMi3zKoudWgOqZT5I2FDEOqD7PVDqomLgD4NI+5HpFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759894794; c=relaxed/simple;
	bh=ia8oJSetK5vrdrk+PZKo3BtGtRZNo3kGunbU4RwtxKE=;
	h=To:Subject:From:Message-Id:Date; b=aYQd3TRkv+gRPmSw837IOElAcnXl4aBlMgy4WGMU7Vbkecter3BNahSRWFrMu+d/9r+3noMw77RYKHXymeC22nGHEHZwmORXMjph3T/LtTVtkrAqmSrcbnWwQsD3fXQRPS5mUHQBdBrl2crA440iOwq3IS3o+4D1nKEf6R2aMyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keHWX6aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keHWX6aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3527C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759894793;
	bh=ia8oJSetK5vrdrk+PZKo3BtGtRZNo3kGunbU4RwtxKE=;
	h=To:Subject:From:Date:From;
	b=keHWX6aM9Cucon+A4wv+2iTbZXqSE/saqJ4JKjQAtT0VsrzN7laYYtkSCpmxm5iqS
	 qtU149W+lfLo87LbEyZCen1AKVZCm3xgqIW9/nPEC0Di5nbyPp6QRZZ2cnIeBvbvVv
	 SJRJNykIWZy/aR7r6w7q6jJHx1NNDhq8P0doHS+EHPNWhaNP4EFt1p3R1kuqxzU1uE
	 T77i6mKqhzmOjf0hVP9b5qgQBGEgUuZ2Cmsn/9cWB2rjBEl7FKgLw2avdqn8NqfprB
	 nePsXCBduisokwh7duh9G39Re2+EgJ/a8F+JfSa6puEj9auHU4keH9fiNUZOU8NCOn
	 lAhSaEaQ/GG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F59CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989479358.8092.14457864765077352945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be975ff13b6d7d49906a9108005f8b666326d8ff7737e3cb8d6ff0254e4efdd6
Date: Wed, 08 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759894793
