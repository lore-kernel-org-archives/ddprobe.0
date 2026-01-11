Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E394239E9D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768121034; cv=none; b=kyM8CeOe6YmCrAGEmVyWrdB1CGW9XGggn/oyLLHT9k3RxvSexeXWV2n5Hh+i45xSH35YCnPpkuSoepUL0I6X9Sh6xQyHQNEnlmDCdtgA86j+ELF4KyT1AG2JBewr2M+rG6LPlNZxRhNrWMySPcZ+5ksPxiyTa7aht8YGHc4zTAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768121034; c=relaxed/simple;
	bh=8nkTUcwvyhThzVrO5wXmSOsV08bqKaef69hup/0OUyY=;
	h=To:Subject:From:Message-Id:Date; b=Rtu6tmYV0JA7lNowT3m3O+FqoABjyqVWtDf2lLoBDRGwZ8k0VLFdzk91I/YJwAZsi2xkoiUKHlMvJcU4ONJlK+p1geOmEJ4eNJcPftSNLpha/yU/jmJjqbhfPAbng0v7LcYpxSNxUMa1Rt2jq7cIjU4NEZsV3T1Y/u3tevHqesw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyEfcY41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyEfcY41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768121033;
	bh=8nkTUcwvyhThzVrO5wXmSOsV08bqKaef69hup/0OUyY=;
	h=To:Subject:From:Date:From;
	b=TyEfcY41k/DxP26YdYfUuCo2l+l4/BGosaSpofWnOgDEPpikPVEgdyveBn02Tl5Z5
	 b1yqe1/Tt0MjxYK3z5hRabA67zaD/hfNcBLEdVAvcS6NFWNSMjtHKK++pOiUExzw0k
	 eQEgmpoTWFUxG3m5ySL8HoOxCDnEKWs9wiL47ziUjFlqpasN/qG89ISceyEqv4qWfd
	 VR1h71c+uovJvR8hePRoPFk+OHKmEOPFfKklRGtTSa4MBW2c5V14+apoESAP11RP/r
	 vmMFzfXig71XQ96tAhczG4TeDmblM9uuj/mBfxv9K8RDbZKQItJ4r7qOhIEUBCe8bn
	 jm/tvJSaC2OhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96059D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812103358.653.10311009245358454726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ed104c5cca2425688f92b8e82cf6a907b3b2946821909dcf75c0ebd799c9a0
Date: Sun, 11 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768121033
