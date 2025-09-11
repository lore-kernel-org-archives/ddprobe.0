Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CF71C01
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757551194; cv=none; b=JOt5c97xAm1M0TgXpthguZJ0v7NLqcY13yc1UAcNAkzNJtR3V/R9LXDcqpu3jgAIygSVF8ZJ+WVmCrKbe2rxzzIBf4swpV//lJGps2Em4bSYMlCkYVQI9T7mt+MksNaAoGy4UKYj8v7O0jp+y9bixHij6yOhTKKCU7hZToxfhx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757551194; c=relaxed/simple;
	bh=3IlbFu+bNeEtEsyh+McYMaIrR2rwl1uBGtAxXGGopOQ=;
	h=To:Subject:From:Message-Id:Date; b=YGNT68IjVNzLhtzq5LNIrSuAU2PZ43W6+Dv/H7yqpcOl8P6GZh4N9zTCYm8Z0t7WVZRp0/mvxN2SabwhxVZ+6Gc9iXSpiAuArLsncg4XiblbfL92MJnrEqCHEhfTcZIkVlQfaV3VfE4OOMf0WWMwI6m07IZZdmR5qCnboJt8GGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGPY9pYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGPY9pYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E3BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757551193;
	bh=3IlbFu+bNeEtEsyh+McYMaIrR2rwl1uBGtAxXGGopOQ=;
	h=To:Subject:From:Date:From;
	b=DGPY9pYpCg1eWyj0qqzdHfzj8PiCx37epNjRiIQkFKP1mVEEaInyquyyw2mEf4Pxr
	 7n2EmQNeGAJgwy0RBd2KrpkVUNOdf37362IH5OUvKE9fZca9x6cZwqfPimqQ1VBFbe
	 Xsoz+0+YHn23P6DbDH02ojFajRszI/Pgrj8sf+PDlLn+p4xTbDMFEkMnUKi+Z3DjDK
	 ISRfMQTWtV1ZSBdntBIaxr2LadGz7u5HULLBPh1C8qQkXeFkqGtyEEEgfgRnQYW66U
	 wa34tmPlrcb/oBhNCRy/iN27WOoIdBrLMtw34PHtyKvJK/Lg5Crkj6vs3myTMIaYyy
	 nIeQVgx2a781g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9523ECA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755119357.26052.12920934008446039971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec47e453d55d65581e86ebddf4e6c19115c4cd4f4d1dc78bfa70cf98fa2cb21
Date: Thu, 11 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757551193
