Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A67F33AD9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776458254; cv=none; b=cKdEdfZSaNpUjLPciDPfRqqzvk/OHjOB2j1sxgxbOZnxkOQv2XYy2wi9bIeC80BUm2w9FB166LJngBbu7nfSdtdvxA6QDdc8YzAMaqZPYeRSp+89eyPc92ZKWt0TM6M44OJ+RwNb/ohLpRTLzBqErkxHUWOoXRKcLKSXVasbWLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776458254; c=relaxed/simple;
	bh=U3euxRhVh9NourwjdioPPohZqQy2YlQ70Csh4hKwl+w=;
	h=To:Subject:From:Message-Id:Date; b=Gljw3uvTplwlrWCQ4ZJX68kRl6NnNFQ326AupvwvNodnwBokBuMrbWphuLKqZQyXliKBHbbaR42V/IgFyyYH+v+n/ZbOhoC6bDqc0LAO+pUwrSnXJOJXvCGQ9yAaR23k050PV9mT4f9TjGmbimKyBONaUdXgVMbn84xasJeTAM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufXLneX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufXLneX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D6DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776458253;
	bh=U3euxRhVh9NourwjdioPPohZqQy2YlQ70Csh4hKwl+w=;
	h=To:Subject:From:Date:From;
	b=ufXLneX6jHCAChvaf1oJJtV8mUeehi7cHEHLbsGeTaba4K6M60m//KoLNXUbmXdk+
	 mbBHcuyoxFvvEZGV6i5zT3yKxVF/1H9Xb5+zlebeLOLYjlWVSPteOVSRzRJXA1vKUZ
	 FXe/TQTMYToOmKnk0I5WmcQalPbBuHft+Bmfqpjg89y0Oxu+uhLFAgBslRkvidfuxg
	 3wuuPEgmotk/an60P1om/AweA/3OvPE0w6nibSrF2myFQbtGfj+9AvOKkFRMNWY8Ie
	 rgYIz5aBnPrbcRx+8Wao4uysfrDtQYA4R3qukj9ABVUEA/vHGwFl9y4oowL5ZRM0Ly
	 gmhaKy3m2uiFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4200F99C60
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645825370.13834.12222546959607151259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5c68777fbbdc0f21b80c63336a3c7370842da3d8eba1cdce89af436b4465e8
Date: Fri, 17 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776458253
