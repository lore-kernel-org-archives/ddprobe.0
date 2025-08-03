Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316012628C
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754192995; cv=none; b=IrQKvugmrMbZeYRjP0n102khGpn48AZwE86DN0Kww/pqu0ZZ51PM+cJmLE4trDFscHSKxjBWOEmERlJFT2SAoE0UCeIs+9b+3P99E4xm5vNbSDpyUweRvV3EdJycJrkdONxI205eUWOSnc2JKgtBx0NGKQUbKWafXYWiiojrveE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754192995; c=relaxed/simple;
	bh=S0a47XOht8u+h5JKHyzFKn80jmTF6tfSWTFrdDYxSx4=;
	h=To:Subject:From:Message-Id:Date; b=luG84S9JBUKx6PErWbhjCVlxwh7p1pr66TiAeVhMy8P+MHOQNxgZtyviH4SbOIc8EDljK33SASAqWxv53hBIxPVoPYzjH4Hh43TtyqwrcF+pjsmyimUtWbmUiXocHBiEtCT0Frq1K2oaE//hQc8qWTuJzhPdGzdpzrNf+ggY7rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbiO6NcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbiO6NcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6706C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754192993;
	bh=S0a47XOht8u+h5JKHyzFKn80jmTF6tfSWTFrdDYxSx4=;
	h=To:Subject:From:Date:From;
	b=TbiO6NcUTZ8fH0+67AYDALMXCiv15E3X4gwdg4KnaXV3k1R/EnUC0biDovqzON3P/
	 8H9puRWRy2IqDRnH+ZW5Cc4GoP1geVDu/xNySo7YDboF29Fdv/68JnzsXcSO2AModT
	 Z2a7AP8BGUxsSH4B76oTLoWYrUE4ArQO8YVwnNPE4MweBK/S3Cxjn+Y1cwwxMzC9Mx
	 Q/2nxODrxHIMwk2Mliw3EgbE5le6FIBHfbIJ67ax4MFrdzoYjaF6zMblEcIyUgUQFF
	 NA2uFejXablRSNRiD2dc/pzp0JYfXg6gEZ4bEH/CjdSNyXWVtG1lfHtQEVzgl89aJx
	 5iUogu246oNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4CC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419299357.13296.14651719385941925924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4de3f25a6371f696753f666bf5bf5d4a739de497df6c2f1993cd810e182b5c5
Date: Sun, 03 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754192993
