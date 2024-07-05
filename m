Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E0F5C83
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720140923; cv=none; b=X3Nx8wfDpDyJaG3oQ4h2bZGWoBm8s1hZa9c332doL39u3E0zXeGlLY927ilPsyBJkyygPehWI34nUZN+SOx3hbXn53Lb5nUMk00vM3O+bylDOmyojR9+xNeaXfw2fwHGDFiyWMGHnsCqrtfcEQr3vVUb+EPkv6UTnH3fK63EVEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720140923; c=relaxed/simple;
	bh=Sv+YvbNLoy5I+coeqrnqChaQJy2BIMME4Igsg36Vo7U=;
	h=To:Subject:From:Message-Id:Date; b=B1KR2tXY5Ge6rDOgId8XqUAlv0OKH6vo6YNxyz8svgTZjLCpzRHztuQbpuaCojMd4mnOJ9RvGCu8BcZuTkfIOKHpsjYpUZLg5CLJzzjpHsiQ5bL7Nx/hMEy927MjfhdVOAFXJiHcpyyHSk4t4vBv5UnfHTvFF14QkpyzcGsW+As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcQJNyDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcQJNyDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE112C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720140922;
	bh=Sv+YvbNLoy5I+coeqrnqChaQJy2BIMME4Igsg36Vo7U=;
	h=To:Subject:From:Date:From;
	b=gcQJNyDKlIGL3K7Z82aGBpNHN00DMmL5RULMYP/Xt6k2sSTGupIXVmiXIfE+LYnMk
	 eaoozuM05Vjx+U3oEV/z1u7E2h21TWx7CQ4y9TZX43YEi47DksgDaYHnEijd3K9xGB
	 gnIw/ccU6eQx+pSgyV9BQXjD2/PX7KNVxK0CZdCwD5tVUuG23xyNGlSlTQ+zOVsZ29
	 Wce1h9tdW+1hwV7Fq6FAxzu38CM7VoJACC+30sUya0JduPHs9Vw2D1/+UtTfMlof4s
	 HmQqxPyxeROTNWOJLae24vRCT/X/9KPhaRVhIOB/Kc23ASbraVbczpDfEi7IC0yRcj
	 RGgE2RA0B6wRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB405C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014092275.30306.18325841339482186738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4815e3a1a62c95b661444542b27222c1e5e0a4e20fa3f53ef631b0506c79dd
Date: Fri, 05 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720140922
