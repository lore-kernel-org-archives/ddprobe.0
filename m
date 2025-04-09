Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7C622DFA2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744192194; cv=none; b=iIJUn0lP8URR9mNBl4+KGhbfneexf66+nddwlDePHKDI/Yb86zKUbq1Cnm9AEDG7gM4wO4igcQMlNgmSlrX2G+JaqE3NHw2hL9B4abrGtR9Vc3UeKOjGRJairD+hAtBdPlnqiWyddikLAAu64jjhbyHOg5F3XGKfh+HhtsQs1+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744192194; c=relaxed/simple;
	bh=DYlloFIfFT1y0TJSA5mL1E1776JGHnGmG7Z84Soue80=;
	h=To:Subject:From:Message-Id:Date; b=Qqq2d6mVFWDGES+eKuDqShym/q03l25JTwNtJxex5clfyaQGpnOfNqsTL7uehrZk3GsGaQxOxgFzQXIrYO0NjNxUS6rCvlA35JciP63llvgc8ZtlaDelThBf/wZn2Y6r49oH/of7UlTo/wiZ4/zdrcaoQRZxSOzuDZX3xTCEKec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9vhmCUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9vhmCUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5676C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744192193;
	bh=DYlloFIfFT1y0TJSA5mL1E1776JGHnGmG7Z84Soue80=;
	h=To:Subject:From:Date:From;
	b=b9vhmCUff380TpcFv9EsN2unJ7OAdBBzmLpst/BjW+zCLL3ipvCD8K5vQOKtSMYoX
	 pt78Rfy9dfhBm55zw9uQZUaSwJT57kE5gTmn/WqZMAwOT+E31YAez0Wgn3FXMjobh8
	 jEphCvokQFm2T5/3M4E665GAYu4DgPoolqTGXzkwGLKoMqduMubHXFsLnJmKDWsS0s
	 3xjBdmyiE2VS2eQHZrz5+PEhytPUHxdJ4/cYEJfSijGhpI57P1qMd4YMc3W5yON31B
	 yKXEM913gFnfDo5rL23XbKraGLfafsV4Df5nyoWWbrogS1IMk0jTo+vwubsZNmipgC
	 vgIPhjBlSDwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8817C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419219367.23256.998516312247585436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2833ae8a22e873878e0a0290170f780de45f56bf69cd2718c07c75247108353b
Date: Wed, 09 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744192193
