Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFA42580D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771031694; cv=none; b=Pr+lI5l5bNZCC8S4aEUcWInwTpH6BaVhcg4jG3TV835WxZMn84m8Akv4hGAP1aXKayECCmtrEL79H7SGkX/7PH+QuLFUHcfLDJNVA9qNZRjBtubak0UYHVeFaTgImgTkTQ2MvlkhCyhr+T1JwxkEYBIBb2UhlgoA07jpNtfLiPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771031694; c=relaxed/simple;
	bh=aehaZOSNjOgZYOKyk9FLDhG88OysGejhy5lNy179WyM=;
	h=To:Subject:From:Message-Id:Date; b=e4EIipjI15cVum+SY9ymfJIlv1Ca+a6z1GPycIEoFix7DBY7wn8ZZNB19B+HGLr+9M0yDRsydkeHa7o/Q1Yd2QDDpKKWIu4HTAFwvjF/xjI4h6Kc2HWCe0Z/GD9+RXAFX6avpqqAuCa0USgCIOUrdXseuAUNRDzXyP00hCqfK/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enEedyID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enEedyID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ED1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771031693;
	bh=aehaZOSNjOgZYOKyk9FLDhG88OysGejhy5lNy179WyM=;
	h=To:Subject:From:Date:From;
	b=enEedyIDBw2eFUIy+9EM8401uArimL1AIkJOUp/1K/5olCxt2DIsJq/grVcteIyEC
	 VOVGStA2/SSOQxSTZVmw5RRZaGtkTziDA/xi9GZOWFmN6IL81RAwXUPCx7Er1hSi+Z
	 mJFUGwCbLD0TeVzN5MY6avywbKlyT2z6xiMBUbB61wN364zCwR/JV3FrFC4Mu9HqmI
	 5CRAuOEANyTsJ/AMlZiSEVS82YY2oRwWqpyJeMSKcNKyoYk7oO0Kcf7QXS3Tx0U9zT
	 QQDHjxjsr+kh+9FnG/6+B3heQc7ZKe+ARiaMsnV17JOGT6scqkwVzQJx8CEZv44OgX
	 AB4/Ghqex3qlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92805EF99EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103169359.22701.901700757528282788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585d4ded8873ab8027e80e661c4fe79d28cf806f3449ade41ca0b3e77ad27c59
Date: Sat, 14 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771031693
