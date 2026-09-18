Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EFC3CCFD4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789735234; cv=none; b=rB0KOzpBXnX2eltWp/LlF/BDuSJ2H6ctrrzzCu0Xt3/Hn/QCSQ8MeRLQlerpfQcfr/oVdOkQKXoIAuDBWsUvES2kyK1p7ho7y22KBq/HX3/SHEGYR5wdFYUJT1IB659Z5NkBSxDqrtH90DYtOKUBnpsJgGswgyLTvl6CgwxRkBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789735234; c=relaxed/simple;
	bh=FsDbEVH8YxuidBW8I+uMDrqCUqAE4ozJkY4LqSJ72Cw=;
	h=To:Subject:From:Message-Id:Date; b=i8y27WZ1CuJY7KaFZPtO04kKRhZwRPxGPxMK9w/jeMmA2wzgtoqUn8WxOWiUonmbMiuNdY+lcduoGRUepUG5esSuRNArWCDRt3vchq0UJWEcfK2kO5XKs6tiwxIs0ePKECNOYY8y9nZEA88GVgfAiDRCjPHUR4+MIvuViHlRleE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+RuHv/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+RuHv/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD04C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789735233;
	bh=FsDbEVH8YxuidBW8I+uMDrqCUqAE4ozJkY4LqSJ72Cw=;
	h=To:Subject:From:Date:From;
	b=h+RuHv/C7YrtT1d1QX3M5MIF684IQ5BKsFlN+ISMyCuDesxMSNlvrNz0x7ZRjjdD0
	 XS/ZQpK+azmfg/R0dBOOAukuPP3XfJEqH9s432f9xNWthVHbGhrCHIglM5AK0pU84B
	 F77V6wyHAJhMhVHlyXkgXFjSmK4uimaZkmx8EKpNFU0p32VfZmbVvy5jwBdmtvIVMG
	 qqbkQFGVM5sBRRrJxy1EhEDke7foi0V6BSgW/S+hxJVrSI6JOWY/2FgKqbCJckOIUd
	 mR+YXazMVPTsEdecW0lLdMxqSZ7lCYTyEpqi3tnCva+vCh+nm1a2nRMzvdH+Hl8mz8
	 YVLBTGJsXp5zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9801C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973523368.7924.14253601993258126828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d024082058101cc5389d7315e582260f6decaa639d86af14e8d0b25020a549
Date: Fri, 18 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789735233
