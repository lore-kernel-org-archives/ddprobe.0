Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1865194AF2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722331554; cv=none; b=f0OHbIn0q1p8bJ7clREkLaJy+CYDVgi0ByqdLwJmSnReu5uLRXtQjjHn0DfdAdl1HYdCuTXKVyo069PZ+iUKb64V3RfiKJDQ0u4PHdwJeTlB3pO96a/iasZsVoLiHNrGN6taXRsMR+Ea8EW73ZXUm6dm6qIbHcDoAqE6/n5EG1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722331554; c=relaxed/simple;
	bh=4PrZ36SQPT4JinimUnv35ozKErn6emxFVhdPSM0Fhc8=;
	h=To:Subject:From:Message-Id:Date; b=VSfCdRIRKnOKhWdPUhUn43UaqCZaFbvARN36yT6BN1oA/+i55kBVEFZhBhTnYKfreyh2/SVGOjnu6jk1EkdNi+6qo+tb28NF/Yt1bTnn7SzDNgK0W/HEw7crHwyy+MRtp1lRhkG1388GhxYH3bQPuAHpd6CRmNPH5aVTBYTilW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAMylBr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAMylBr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89EAC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722331553;
	bh=4PrZ36SQPT4JinimUnv35ozKErn6emxFVhdPSM0Fhc8=;
	h=To:Subject:From:Date:From;
	b=rAMylBr60G7x/Gczy92dLiJ4hlqfd24ZLaDCoMo0NavD1Q3mCL61r6RtzcYRstFHy
	 g0LSUcmYX9qAhVgSGs65JV8VQ6V285pGlREuMvoa4fSvY6uwiWB8w/ZUIHhHTVttOj
	 oDjTtNFMg1/jXNzxxMtIlXxepPKALulPHBcnyDWpVm94y9jAvBosWKlujyyCgk41uf
	 jxeK5U1gigkY86flyJbC0Vl8FkS04YAF8q+GMJwoM2PaBjZHW3yElTVOwjiDdgHZXW
	 QVOMwtk8LCjVh1NZjNXB7e7/I/E/Q82vlsh4zKI8TIu/dTkj31/+qK9PaiFj9gTBoH
	 XjWcBmG2Bdc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95886C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172233155359.25310.17640655794625275649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a836ec0cb84cc20d6e53118928932bdccc0a89b01c4aa27e09711fc17dcc3a
Date: Tue, 30 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722331553
