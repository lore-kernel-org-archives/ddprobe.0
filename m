Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3113412B72
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721879754; cv=none; b=cIiqGommf0RJF2sfA7FcXg03SjwGFB2lCVq9FP1rg88WZu8zi5abRHxZ7hDudPfJjo8ywSrkK769dQukyoEz/hsrapVbfCizrsIEqzeG1usAT9aXS1Cn+rjCTwELhy7WSgGeOPGqh+64R8p4Kb21Blby/zGrm1OAhLob4K9IZy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721879754; c=relaxed/simple;
	bh=7FZ+aAp+LP1eW2K8ILUxyWid10yr606CFJY96jGoUh0=;
	h=To:Subject:From:Message-Id:Date; b=a14ucEY9lX5DxfTEv7ctte0qgi++c6GWUNanArS4OksZe44ZDCUyY95pd0mFel6WOdsIV4y3J2o3PR7QL8YlnvY9fxRBmQ35dp8M6ubUv/oaFi4ysEd5wbGmWUGCFAyBIcwIAL32aXj1JB33v8fMMxpqxZVgoSPb+hzb1vFtKT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OED347R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OED347R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE200C32782
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721879753;
	bh=7FZ+aAp+LP1eW2K8ILUxyWid10yr606CFJY96jGoUh0=;
	h=To:Subject:From:Date:From;
	b=OED347R+PqX9g1A5InV5QneX1GbjbuqGBm1jrsz0KlvqxMxPVIUUyHFBirgeItdVZ
	 i9wsy+9zSL/S+6WKIQjAspY/rD9V9iA/9ao9pO2Do/eJhH4RSmG0aTrePghIS1l1ds
	 butiZscK+AVwkRR180WDJrlLIBpauWleCP8lhWEuEOTLEQrnlkjy8Nerrs+MJueXcj
	 a4BIAfqf93yD0Oa6/wTN/hBXBG4tFm/mnZOAZOkmo8/e27SYhY4EracX0wuqSiMnNV
	 neqaEDzj16wF2yXTG5BtAZRdoBdNoWOEX0Sj2IeosOPaQsrWiAYqJeCvJZcWJTozXI
	 ta/TQJXMl0ROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B87EC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187975360.8962.12530323302382479864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6da88f1ddaeff8698e1400b2b0f9eb1a0cb0e0710598faf584d6e50e86656ea
Date: Thu, 25 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721879753
