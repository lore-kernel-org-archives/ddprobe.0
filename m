Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647ED49E5FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788302434; cv=none; b=KDAKkfRdUVwA4baBoZV+A5ZYBRS4lVhcRURkMTwZXO9LLVN7z0g4cC2ipksuh88Es263FUa33SdAipVrcvTJoHpZDsfqjEKY9A1mbIib1R8yY/dvzjE6lRLnSPa1amOaFtvV+BvpDU/nY28lU0v9y0oHqY8rRiOO05lpzvk/0VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788302434; c=relaxed/simple;
	bh=9DoRbbdr2GG8pIDCnBbGZFeinBZlG7TyUsgP3VO3d/E=;
	h=To:Subject:From:Message-Id:Date; b=BGSPP321vTZhIwaV2byEpoe742oBvM3TJyS10qH61XTXCwH4DOx0QBqChNFNkmN82IHRmzmHsSZhERkIyOiryqOjuog9DYUrOrRyR/bYVgGUIOJcGkgLTOv/PPd4nX7V8BNE1PbUi9s0Gb9QxGL8IntU8fviEMkig9UoOZOvcuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR37y4k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR37y4k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA4AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788302433;
	bh=9DoRbbdr2GG8pIDCnBbGZFeinBZlG7TyUsgP3VO3d/E=;
	h=To:Subject:From:Date:From;
	b=rR37y4k2vH0z8PRkAWRsl+sxldjA5NvLdYPJlu/m6hX5LwsR54fSwLsN2NSD1Mnv7
	 dIndkWSlXYR+/cdsPc6BN+OoUV/4wyAOdVzFw23IJHAVuclqxXKyUQ+Luc5f3ii1ZE
	 pvMgV8bLMPrNRP1rhXMunC+pLePkkbI8y6XYWNnbxAR7EWMH3VB5Sq8IyFNXVG1y3T
	 AiXWLAz5NcSXirBB1C0kQ4gD+s34wcmvaKl0gQhUQFKxex+CkkSnZiLoJrVM12tdr1
	 NCH7ukZHeKVx3If5QPQ1YZaG0JWBMxCzExgi0s2AHnw8JYxJtfQTTvkpAGGBtDqLKT
	 jF0k38831tbWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB023C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830243369.14144.408632096762127799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8477b33250fbc670e1c0121df86ae954d2efa03b080133426affea79cbef5c
Date: Tue, 01 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788302433
