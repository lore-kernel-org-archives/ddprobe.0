Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EED14EC47
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728140754; cv=none; b=mwk12i7huxxz6UuSBFiUILVQqPoZJAEFV97aM8GahkjN2WA6oVWreWfSEtQ00zFa2cD/6QsK92JIwEremvi827SmAravrVOnJaPB/xjo/x1KtV3HVPSEfIYmJwIyfLaF1Mb0ITCf87TGcaDUnBk40XlUQ4IVCiDB9FtsauyO9Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728140754; c=relaxed/simple;
	bh=sV1ZRPZsfweUdTGpQ4xtf2vGAlAKbwnRaRdJo0qv1xg=;
	h=To:Subject:From:Message-Id:Date; b=F7U7JdwZ1kt5FhmwGFyla749MnrLo8OiNbEOry/r6FbLOsMydHUssCtvUiiDNaoE5Ytc/1eUTnw4Ccn4Cfl4AniLG8W7wGurr/Yqiv8G6+1Q5cmrlLltGXPNObDNOxR/qFDVnNXr0+GUPwiAkwRS/tEN1T/joGa7z4Pz/kQhvDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8hs5XBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8hs5XBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA734C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728140753;
	bh=sV1ZRPZsfweUdTGpQ4xtf2vGAlAKbwnRaRdJo0qv1xg=;
	h=To:Subject:From:Date:From;
	b=r8hs5XBJDv+v6VNPnlePDpOthH7Y84EwUUdSgvXUeB1sZiPCWRdtojHdyOH6SmvKg
	 hMaY/ncbUnQRR7enInPuTm6XYcQp9VwcqAha/RjeJViZoTJlowMvlIWWXHwpqHNqen
	 NOXCR2OCwOsX8b13Xesk36PfB9pmAj9DgcH3SDPPfrZanplzIK+L5r8iHDoHQFhIuF
	 RtcoBpKDXjvDUKX2LXhmciO9LZgYz8NiC2UjE+Cd0GGaTGH771mIgtZ3eOrTs01lyG
	 dV6100f4fhWTzhW304HIPMjhWqD3kaNyVPLmk4GTWNydH63N3s60jBF1qRzRg2WqjI
	 d2vVffOl2UNTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA3CCF887E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814075362.31997.8375733002899327098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd73d81341086c64e8c916b72b7e20fc0c987200ae3b44dc0fb6300e5027374
Date: Sat, 05 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728140753
