Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24097357CF8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742034; cv=none; b=GO0fb0cpvphyAFJzIXLY6T9VvNaQz4v1vyNO2X+gkx3V/haoCgJU7ULsdq3+UmZtXezuu3lQheiuRYEqAbnuLKI4FQFskNyXtxVQRcXv4C7f78skLiMuHQhx6eJtxPV4vrJdFx7QAWkv+AoGSX9B36LQ0lS6/pQ5BU4bKVcfSq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742034; c=relaxed/simple;
	bh=JhHzWNm+X2Kx1BcYfy7AyuL5R97Ku3gylvoKSSfqT0U=;
	h=To:Subject:From:Message-Id:Date; b=NCv1aNDrecmXoagVrmz2mnE76APShn2EcJj1qnanKQjsVLh3UY3BDnSLEPeDIhkMmkLPvn/XN6AGXzAdC2iiV4wCXgnKWCRnAuvD4aSoNbq/utABfNosBsljEPld4Obik/ruDIsS3tRaZUT+BggAD0UvPVUP5pqB0u+hyy5dTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg9drSvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg9drSvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA742C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778742033;
	bh=JhHzWNm+X2Kx1BcYfy7AyuL5R97Ku3gylvoKSSfqT0U=;
	h=To:Subject:From:Date:From;
	b=fg9drSvWcth9P4Bn/7xFvKKi393sgBg3m9Iomw5qO986o3ApiGbzeSfie55v8aOW2
	 DfjU6Itcs4s+R8qGtkpZVmdavcOecPOz5EIacWQNvOrLH45EHSXOHAiy1BQSWhX6G7
	 amG9HBtn1Spu9oQnixWxNpVgxGx+2/xK7Cw3hWRZEfaJ5DQabRvR3EG/zFoD7MXS5j
	 zytGQpl+c6XjnR0DlXkUQyFHOJ98In9ciLs4yoYUiupNWCxXGDkEnPn2e+QjoStPgP
	 Q+E++NM8EUcTX80aeHT3p/ZP1ARnQ+MJkc6ecMzjBXM+WTMHbBySI7/zFXWvf13PER
	 RSXWOIWEKYAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45DCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874203368.20121.9342610453776584472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e09fcc9329546228fc72bcefc2334690ae75521a50ab926bb4997b3faeba894
Date: Thu, 14 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778742033
