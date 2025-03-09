Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50406C133
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741498734; cv=none; b=LxSpMLmOzK2Uw9csSJ42cUCmhTU6LzuNuvQQ61eH0q685gPbykS8uPqBbEWyOgCf2K3fzz0f49DV4VRuSJe/swApfFx8fSQGEubxLEyMUo2uUNaix2TV5U+CTK7ofK9DzvcJEfHmKY+Vue4W/ruOmBMF5/Ep6ZnBA+3XDBTerJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741498734; c=relaxed/simple;
	bh=sMpIAg62C7FvNl/LpXbkg8/AEwklutMYdKLNYIDZav0=;
	h=To:Subject:From:Message-Id:Date; b=VGjF+fvTVnMQe1aMQ5OJoLM9jKCP1gaK8qIWy4K7AR8XWfdJtPJMLf7ZDsgvwgKKTyngpBu8iU+HckByjTYggfmIzirdp5nztYncvMQakpxle4EfKaoNPLnhCcaHvZ35lUmjDbE0PCvBZuQt8QLKMyLKE3oyvG7wo0d2eVsOx10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzAnuEA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzAnuEA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B57C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741498733;
	bh=sMpIAg62C7FvNl/LpXbkg8/AEwklutMYdKLNYIDZav0=;
	h=To:Subject:From:Date:From;
	b=pzAnuEA1sXavyJaCUB5KVpuD2oa8yleOTwdmKCkbTtuLq6Njkq/WUvDw507Gu3t0u
	 V2k8DmBfmBRgvhczdt52qTD9RYUVqJUKv8ipXaiOERMBLj6Ns5nHSI67C8FYJ12PFs
	 bVqdugfwPT04NdBUiIm0uJ7GEUjiGcqJm0PMHOgVgfnaTwIKnC09PwsoGWexqlTxQ9
	 y4EkdwcZ2t3vzH20dD2eJTAskgwB72jxW90dDi/SQtbVUIX46fURq0UYc8XEH4UZZO
	 RYOvupgImEamNs94VGildaUKNEBUyrqx4Kom83QbMkwNBqQyIT17M4iILFa4aG3a/F
	 M9S1MO8fiyjug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD4EC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149873361.16763.13371069550933460869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106c9b77625df9e6d09a6434ea5922323f6299ae9effc15e691ceec1385fdf10
Date: Sun, 09 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741498733
