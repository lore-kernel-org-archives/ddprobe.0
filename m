Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13C81EDA0F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769957634; cv=none; b=SMwH7ctltQLseIyR2JhSz2NuUfo70ynO+QI5rywGX00Ym474BrfMJyH0SFQhp8aHlKkyuehoMuiY7pDkD8KTi6P+RTS9JVS7rnw2AIIFo24Gzq3ZTce33VwxwziVQQ6Y7OrLkasalGTyTgtr4kCuthxBVuC+CO1wVCvkzlfSzJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769957634; c=relaxed/simple;
	bh=yTRdAJOeAvD50ucVgWv3oENmuSYEwKa8WUMo4KXJIMc=;
	h=To:Subject:From:Message-Id:Date; b=M3Ki1OM4UtBYkA65bnn2jV/Yavo/ZTj43hnnbAWFm1p1BdgqNHwkWq8dHoVHnTxQDvKgOKGfM0+bu0PLYbbmBZd8QaCtV3id2OQWvl40niUsmdu0u07x0EfD3k/kBGMHlfX6bcNmz/3k/ck+D9lIQ6AHEz/7HGyJCGjjJvEBDyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGfWg425; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGfWg425"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F97C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769957633;
	bh=yTRdAJOeAvD50ucVgWv3oENmuSYEwKa8WUMo4KXJIMc=;
	h=To:Subject:From:Date:From;
	b=NGfWg42506dDiIkfkj/aMX+CIvL5hU30d567/E211Pu5V/auwotLeFHz01w2cfPaP
	 dA/IwsycDyLT4H8P/RBQ6+mNBlv0lTPbeyMWi58qmCStjr2qzPt0gXGw0ZE9vSrfnb
	 ism++hD0kwh0eBxQ1SAbVhRLYVxeUHIdevDw0mtbKWFmmxDNp6F1RoSZ0BkqGMeQXd
	 8qmBXXVX6By0oA6aik5TbaixA6nuMmV3KzW5LMAxZJXXZViqwJedR/B2PGKBuRNPFJ
	 7RalaotF49rVYtf2u+/xxtmKj00l7ZW8OIBoWeFP0UAYqX5nP2PDXNmICjWxdpBGJG
	 rPKj3O7KB4/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F64E65286
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995763359.5159.17579635588977336556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2a46d3e462b451a298f55a45777005734c8d81c56d1f281c9055ff73d5e379
Date: Sun, 01 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769957633
