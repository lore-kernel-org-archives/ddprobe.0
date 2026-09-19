Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1C6547049
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789839034; cv=none; b=klDIWqZVtlWFdlNGGGMDwCdBfew192gQlVpdON/P8W2t1HNvhlQ/1OsSeubUbQspF8cdVmFMfSe8kahwQfuI/rKMuB3CO7++e0OgkcFV91YGFeP/u6HvzSgdQ6Pu+tLYQDTsB5KQMSQDiAQqXRJQ0fJLDsEFEGaCUl8/BzCOFyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789839034; c=relaxed/simple;
	bh=R7QoOIugyg+UYVtbL1EOwga9M+iaDKvuaWehLb8xFeo=;
	h=To:Subject:From:Message-Id:Date; b=Iuzo1tiZnZH0aSHNP91PZ4cZEkKMMRdig9xJ1wQvn7eXjF2rSOc3doFDgtP53BTG02u2FfnHV1qo8vhx/IqZGzQtPVHCoRWhmpgTzBT1pn0epZ0RGtH6ehTQDYfn4keI2OUGNC3YHD4kU+o9dVT7dyOYExuefDR2ipw3Vci4P2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+J7dpno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+J7dpno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789839033;
	bh=R7QoOIugyg+UYVtbL1EOwga9M+iaDKvuaWehLb8xFeo=;
	h=To:Subject:From:Date:From;
	b=A+J7dpnoLb4ETzBBS0tpob3p0K/Grc9h9JG0s5pt8PSApR7VM1D/oK4uxKnWsW4qm
	 CW9xLCa/zTzaWMMFXbJ/wziGYE+Qd801PhhjGH9tl+GyBrnbCLoeEwBudNpPE5bM90
	 O7gPKE0c9Xgi1RQU/5c2GmRn4DAAY5zT3Y0WyLRHQasjFeecYItpkSTdwNU6xxw0Mu
	 dvGCkFXsYS5OymkzBm1g/zBWdG6JGHSvl22pVwzg9UsDB6b58jS5Sqt0mXD/+gWQly
	 4RsUYZsOAyOeb6D4PdqaiivpBQyl/rS7V4SwvZE2tEYfFBEAUuevM7JomTD7nBKuFx
	 1iBXRQEsrzCRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8BCC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983903368.10897.8132074220838179911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fb29263daff3b421da1c1b42c049af876f20f5ad370d195bf20e04b6208bb7
Date: Sat, 19 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789839033
