Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4CB10949
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713835223; cv=none; b=ZwF/sHfcVADxBIOc25WhG0V+oEV2T2pyznwSn7kXGooUAPQx84n7sewGAcL24PGQugtt6rb9qZ1MvCSm9gqk2J1KHXTw/JUax18IdtR+BY04VUOh1/fxMHyU+jYH9iyyZQ1UDBln25uckNKVr+1EYOkvERzKXpohbBA5ESG2CQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713835223; c=relaxed/simple;
	bh=n71JjLDTTEKtZitEzTOndEpFF8YwCzsdqoatJln10hc=;
	h=To:Subject:From:Message-Id:Date; b=lMl54LFQq4vqvlCDg71yrrbk3CJqFokMWcN3KFYlkzG8230iskMBgjGuOJIEt3DFePcecArHJcgewCTm3mwEA2/CkeqzONGvZ7Y2ixNenbsya0LRfpzGh2PQCMClkx/rYUeDBy3gCFztdZOPuq+S5DOVG2L3tYaRJrZZg9CJAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShXEvCia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShXEvCia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F27ABC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713835223;
	bh=n71JjLDTTEKtZitEzTOndEpFF8YwCzsdqoatJln10hc=;
	h=To:Subject:From:Date:From;
	b=ShXEvCiaTYwcbTcue//MbXeyLdzuj2418JXehdDammrxCE+5i86nluJzeXjI3+NLp
	 tXRzOlvErNj4wY52s4z3RPUTpgh3uFEA4kq5mxn6iqfwFinlzkXG/epQIjaBSHaqnA
	 +JPwGhrr76wOTiJgidvrRAOfBUfcfUPz9wEHUVUi1gpgSDjdflwBFqmVqUZGzwPLdu
	 vFivgM7V1q/WhOVdLz21epCkK0VQwOAQR9lLfOq/Hy/Vo3IlFbmIon5z5BfjxESfgP
	 OHzvJojYs8zFvIV3BoCCWl0iRUm3HLSTEUycxLP+hCYPG+z334C6uKNffMSYPTkF48
	 3HzCvwlPRPhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBD0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383522281.15397.10782188088503309662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1dea20273c5d44c1e29c8e7305571d23d70a41c3af816d630784e00a1a1e5b
Date: Tue, 23 Apr 2024 01:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713835222
