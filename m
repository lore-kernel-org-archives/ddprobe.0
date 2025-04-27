Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5AC1E5B7F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745729994; cv=none; b=Zm/uqJgxxtWTNS40NpfBPkb0YTKmDrnTp78zGHmygZBSBusr/u0Bk/0ur1Orppahq0924cl0vpxl1vzlWeKsvM2wbZQr5KoOiXsAMjun2coMqGJoQA8cyBmWzudDgG62GBmXKPApJsK6ruvSgLWCB2b6NFcY9aD+VipLGvNz6Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745729994; c=relaxed/simple;
	bh=x+2xgkTzrI1FzHfIZR1NCILAvUTbzVTFzrD3XdmSwnc=;
	h=To:Subject:From:Message-Id:Date; b=nWN8aqStSPOzLmH+7rZM/N3keWsbPXaRjzI8loQw8nLpDZaD7to3w8xo924LiD/R+lg8ZEWhTPx9Y16TTfjlc+1wNPgKsoRVjlFg87AIU38dLcIggz9K5Yzbul9uh5hdk+vJYHuzb92+Udvx5wh2ex0d0OJHPvU4/VnlVRR+xf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDcW2rTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDcW2rTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745729993;
	bh=x+2xgkTzrI1FzHfIZR1NCILAvUTbzVTFzrD3XdmSwnc=;
	h=To:Subject:From:Date:From;
	b=BDcW2rTo6DjR1USgaD5LPnVfm2GaGqEed/2TeGdI6LjIRGceozDP2ZidyP0e6+wDF
	 tF7HAT2HWJyVLJ2jJNdf/343A5aj8sbkF5A9Jf3ca+YwOzJr0T1zBDz/y4VajqD/SA
	 gOCEYTwJuSlgCkJdimYKARj3TLiwE3ZXyvmTwWAUFz3066KdtpxAApwRIvACi8x7M0
	 24Tm0oPacYGcXi+iDAXasR9Elf+78MrZ0yWDLMPrW+KNZkovbg982ZT+Dn786F0XVL
	 rOaxWGmAp3wKMcpv3nAgvqeXnNPHkhdtZ02FV9MGxG8uuc1Au6L4Oq7KxfMasIOXMG
	 DdSHS2KGuVHPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BDC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572999357.2990.7653363204868050392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4141b94a96d675801511e0ceb95db8fb7a2b7aa35e4612425a4d0e024ab194
Date: Sun, 27 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745729993
