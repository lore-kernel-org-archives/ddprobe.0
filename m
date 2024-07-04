Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E87B15491
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720124123; cv=none; b=fINyjfUr/eFap9pa7Bvl/7LTERLUXrbEXbslIuoK+5ZliYWMXWdsMyF/FQmdwjVGxPkb4kb1mcVNPzgN8XTCEgKA+biCPpnoVLKd+Jv1D7OiHx+RVbS76Z67Op5XEcUG6oMJ869Pvhl3GVsApfNFN3UX+dcHSNOWHBB+dWefTj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720124123; c=relaxed/simple;
	bh=iRZZTP7x6K3WF9D9wqHLseLoQiVGs/mRPkN2UXIbjTI=;
	h=To:Subject:From:Message-Id:Date; b=ZGim4UPyFcshpObdAj6ABchfzNfisNIlJNgJHRiGRP+sShG8jamNQZ8/tcnH1T1GvOf2e+QgFZaQFWJZlL0tydUKsK+ADSQ15yyXvgP0UAooGwxtM4bXPuCdma4KFVIgKSr5Fc2El5DvzlQ6e94UDYuJuOmonFc3NVUBkgYFT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seKDVph1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seKDVph1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25E7C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720124122;
	bh=iRZZTP7x6K3WF9D9wqHLseLoQiVGs/mRPkN2UXIbjTI=;
	h=To:Subject:From:Date:From;
	b=seKDVph12+c2nZRbubggM0l4NMlorwNH4tcy72Xac/LhpD28RcP7EzXkpjv3O2+Uk
	 1pNyOhwKS/qgEOjUXrS2wNgKG4HNWAKlk56/Rzpzp0BuSQ/0UNNokpBAL6wFap3m3Z
	 sffp85MEXH/MAs0+iGvmqv0GXaf9IOzndRs0cm6cr963D31VKgamQi8gM1fq8/DcUg
	 5k2Ew+kWd0KRcrBmcrfcXua8C4nhm3WdXc6cwyBDZgQilt7qAP9ennCK8IvS1mYkt+
	 JgSkUfiEVr1l2AjLNTwvrJiS9TNzX6Lru7nPq5JbOfCR+Of86ZanVdF6IZTYSxxmRE
	 zdfcxaTsTJeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F25C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012412278.23313.4290006258100778292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81655f48837aa68f4bf76137f3289494d3f4ce4697f5656b2980e7a41c36899
Date: Thu, 04 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720124122
