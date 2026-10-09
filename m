Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D3A31D375
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791512434; cv=none; b=tyUGd5xjFMP6fXEXlEkMRx/FnzXw1acUQ07SzdTwpFVGZhn5WdUEesUUH7WW1iMrs4oGpyHCfft6DjeP4RSW7HXMRUcJLbJCsf6a7Ty2Ge3ax9OQuCKNgpqh71ADvSfEmo5lq0pGPpQgTAN1nTGZWOJM6jo8np/adO/tFNr6+s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791512434; c=relaxed/simple;
	bh=kb7MNbgqSxyZY+lzG/hcwPLEt5rj6Tvin9CvqqLs5Rc=;
	h=To:Subject:From:Message-Id:Date; b=EYlBVOkGK8nJ6eE/UUM+6mNq/OnqcDNwxBAZzmgF85Jy3ebjaxbdEGi7/3k9+QZGS3qOox5tuzyd1gd7VRv35JdEyhFLxdOhBWKpAv5Z0MwLP2t5WC8RbGNzxPSdV88cRroE6m4fUHGEdjrxjEWHIX8DF3Otb2idJIHyAofaF5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjYvXdLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjYvXdLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9DCC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791512433;
	bh=kb7MNbgqSxyZY+lzG/hcwPLEt5rj6Tvin9CvqqLs5Rc=;
	h=To:Subject:From:Date:From;
	b=OjYvXdLEFzobSLD1GDDvgsIbgnqBawADK10op6WbTHDiWCt3/6gQt358UQcOBCB7S
	 cymbVQyTUrNQ+DZ2q950ZRfRoVJFlIjA82ChwspRNhTMXFYEzTxkemfIiuHsGHaEzq
	 +4NEruuqJ4ZsQnnNSsimTm5DNB4/rAqqJeJVbyBdjOdK1DxP/NZci40OCV/NQ3eOR7
	 EOO8hkLJeLpluqbHAGYdkibmxMEdqLLxckkryKxnk9Uk+PUGxNdyb/wIYK8maLAUMP
	 22ULHDbFW/jhtCTmsEgRe9MGWeSZWM/GI3tSnsejWuqdMRsDFKC+hiw6ZkhzzrrVZn
	 khFN6qa7/Cmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA021CA6017
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151243368.12952.16222415040563526005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80797166422ef2d38c96050cdc0d94e723688f619521f7870b03394152103b5e
Date: Fri, 09 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791512433
