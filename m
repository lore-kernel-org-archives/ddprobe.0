Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EBE3B14D4
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788715234; cv=none; b=YZudpSv1mtZ5j18hBfOioStY2Upeb59jgTeiappnBzTqIHZVDsiZfe76rwZE0jFiejiWDEUY36bA2E44cby+rT9uPgbQEiOAFSnQOsgLMFVLMSjz/R0JP6/n5871Owt+OtdAAEieDv7PrHPolp8ng6liEr8SKZdm3FvjuFNHUB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788715234; c=relaxed/simple;
	bh=RVIzdkWafpxU2/DKluvU5TSIxsv1FqUI6zxARMyBfCs=;
	h=To:Subject:From:Message-Id:Date; b=fndjj53T9tm5nStnGNrGHZYrNtno2DJ1WMO4X5Ef4ohdQmyVwCo7TQP/2F8nBOiwixCTiEbu7QdMV3GuR2FmnxLA6abUoqyodZrJOPT1nqfUJFWmrqh6zpia6MlH1XVeAofAO6M36WPrEFIjep83q/kz4R8aEP5H7Oi6AgBNPP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCyRHAWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCyRHAWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F17C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788715233;
	bh=RVIzdkWafpxU2/DKluvU5TSIxsv1FqUI6zxARMyBfCs=;
	h=To:Subject:From:Date:From;
	b=DCyRHAWLA8A2RUVesco1zN1TT53S1VLbFeRGZ+sDHj+d6uFOfCqBPDixnHtfKm2eM
	 egg1FktheF4XCjY6WGB9lEJr7RNoCBd0CfNWLIweVDHc/lqR9ooMj/P+mgkhsC1QKw
	 pMFgIQ9seZOnFP0TThvaXchUvJtiaM3O9irvK0QZ51yKVgL5NVm3EjR9zR0f+ortXn
	 flW7n86EXco4vB8DC8YgmwQI9gix+NyUe+AOy0MHmViYx/iL3eICOiSprOnjWC//+S
	 hLulmafrJ4Zg9VPXlMFXAfodaAXxVoukCmIXxRwPaSpfCQ8bXX+RZ61K//j3vBD87L
	 KazYJJmld8kUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2955C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871523370.11347.16954683749565906810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166040bb49e9d2e33b9a42c1ea42f3f123ed4bc2618e72210e640f32dbb14a52
Date: Sun, 06 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788715233
