Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3B423D7FC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767593634; cv=none; b=PWmX4nkI1YT0F44Xp3wC0cQGRtcKUEXFAGW/7M9Ul6hplikurvPXy3gVVhehQO+6fR6jRM5DFQtK37k5Dt8OqAOHdK2Am92iDEI6eRykHJ8QpNWzfJa98zrOXzg1pJBagIVbiCC8bvEU+mB0pgzMPum6BVGC+XVtcUjHdezFmpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767593634; c=relaxed/simple;
	bh=Rb8S4PmdcrSGXXJhaGBJtxJY/EUqvsTH8lSfCre+WjU=;
	h=To:Subject:From:Message-Id:Date; b=mH3epUpMFqNuVupLMVd/g/T2CpcJWyNm+Ad2nHPwjwOfs7PCZ2S7mPexziW0X73typtUFG3z8Z60vc9fDbWc/AvolMJot2ED9Xids2/E0+vmpw8Nfg9qtAr19LFd0wCitGrtKezN+rNWxYoUiue21NuKdo8tiLUJD+HZMD9WYMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYv5aMM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYv5aMM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1332C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767593633;
	bh=Rb8S4PmdcrSGXXJhaGBJtxJY/EUqvsTH8lSfCre+WjU=;
	h=To:Subject:From:Date:From;
	b=TYv5aMM5EaB5PSt40P4tuWsKsYQUPiAF0ZANAWFZ5molvekwOa3XZNprf/pAZwJIn
	 V3mpVASN0JhQkYnT017Z3Xy8uYuffLUgKbYPu1alZPARDEoeN3vk75TB3gha7cyl+3
	 ToYxymSP4eUMAlHetsKWSB2U71gK+4f9ngftUcUst8lvzvn0DGi/UtgZebG8apRlkS
	 jnhzaLjC4eV/aaHGL6zN9bu63kTpR/s5SdSJbnIpeE4J1HpMXMsqSaWGVnJLZzBTYS
	 4pEIIA1kkQrHvIVMXqUMVzW3cxQSBPiCG+aozhS+PHzvrRsaD+6R16NkblSVQ+YXPw
	 nKNgq12fpvFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99107C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759363360.18604.5235210054602102214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3923eed2c0c1cec0f716886cf6b5a038870922e3876ad8239a2f3d5131e049
Date: Mon, 05 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767593633
