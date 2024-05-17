Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA8379E4
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715944343; cv=none; b=AGCaw6+QEwvXUTWboh+6ZHCDafntI28lLBoEfUCivATL82RRWXZrtuFyViFv1EQK3hzgTo4mnaVZjg4NOszQfq0p4an3nDqkiFQ7auBy0OHyZ3fyCLsPuXmDgANDfIRGusjVW/Nx7LsiBt/E8I32f9ln/1AaUpNdsb8Nj52nmlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715944343; c=relaxed/simple;
	bh=YVm79hL4chRGEqE2UzXpov2/y01yNkmQiTVPf8lewAo=;
	h=To:Subject:From:Message-Id:Date; b=rdzLwk+r8FAeRNDSF/h/kUdZ9fbmnE2VqEJTdCazMlsIvUROCRfPzD4sUUsJ+54kqRfbsiPWYqx51QMfzxA8JJjxZwYWqOBsSA2TLDcSykAuwJpu1s9spTnjyxF8NZjnTmwf4UKGrLNz9s+E6D8AcnHTD1a1ziCrLHflDNkDnpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gh41R+26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gh41R+26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64D4C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715944342;
	bh=YVm79hL4chRGEqE2UzXpov2/y01yNkmQiTVPf8lewAo=;
	h=To:Subject:From:Date:From;
	b=gh41R+26n+yj219eNbNSdYPhiklF4NroIdwF0xDn9wFZiZPlF+8GQAmyfLgBKeQ+G
	 1d0hsflJy4x4cordFnSxfKmIMXFeJFk5C0W8cawOwPlFxBBUgvbnCBknNdYgdGaPrx
	 u0A7HYOfTMpyuiL8/rDgg0LYYFtWepZW/vXG9aNmuotGNk8jCJ4ruV38n7iLlM9uX/
	 DdoaqRygtSP2O7uS3tNCVWMTqrjAKt917p7RbDI8sloplkzZQIlOu7mpZ8WssxInp8
	 9EywD3JTDz4ihKRIkoPGDsJtrLuoKe7unSLIbUCPy2fUfbjEiImIBSRoWiKEIGO9Ym
	 dOMJR8UYvGU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57DFC25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594434279.12535.13428376661103228378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252b598c78d1d453f5fb47578bcca41f8d6c98c42b2ebe734c5def6ec7f64af6
Date: Fri, 17 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715944342
