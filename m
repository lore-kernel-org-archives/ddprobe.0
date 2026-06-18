Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95B3C4575
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781781394; cv=none; b=MKwXOKrP+2KqZ1hD8D/mXd1R+skhDo7LxcmosFXj27u2otlfs7iDaSUAX/Ft7KCO7f19FX/EizvlFrK6HRxrh27tL4y+enQmUIh8sScTjLLQt5zeiLLvaKjfmKNPQr3B/Q7eMB8qmxbUEfR2W2Ujfky3AGdBoisHdq8YNHWwH0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781781394; c=relaxed/simple;
	bh=EApCpwq4Uh2UkPeUz3shcb4I3wqk4IWyrzlWshlrxV4=;
	h=To:Subject:From:Message-Id:Date; b=jrC3dzkWyMA/LLPz57mTvtNgTM81BsKNM133aWr2e3BYNor7PAWeLR9FwS7tc1zmSf59J97Lfvv0wNHcm8+AEP/OgyN7vDBmuK01pvKt7Mv4p61zgf93LavTPhjVCdgNoJP/R7V5P1dHlTIVXXOZerA0p12xCcUUowt1sOw8V/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp5mbx8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp5mbx8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F3DC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781781393;
	bh=EApCpwq4Uh2UkPeUz3shcb4I3wqk4IWyrzlWshlrxV4=;
	h=To:Subject:From:Date:From;
	b=fp5mbx8jQ9uK9jZ2K9J9H34PUdH/xJJlPrKBNlBeK6AU9OCMfoyJSzhGSbPOTgljk
	 MgqwESvvtdDqdTgUyx6RH5hhxcJvRe8IXpXeQqk51Accv43/4KIwhCCu8cfhmZsfsc
	 +LbPR9F1rZ4vUHgQuFCElMEBj7iO/6pe9ul46XGr8kv4xahRx//dtijoVLVFm6N5W1
	 jTqoKJDKKpf8Ty3Wk3pAxDc1h9OgQMqLpRYd97DR2yefOybgUNzxhesZYScHs8gH2e
	 rGpJmkK0C/X2umfpLxNg6V1ceA+7jP2RgD/Z4Vrn2OgDIwqqqXaNNWZm9uZr523Sjh
	 bCnrwjSnYE8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8B0CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178139370.10905.4096897688208331927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a27792a1e75130a91bc3f48cab7e059dd58d55d2b9a9b1ae7bb3c2413c0bb2
Date: Thu, 18 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781781393
