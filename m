Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD134C66
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715410943; cv=none; b=NFiUvNxBV7zRd1vJf00snUVTcnSAa6K7YArCLfU/sSgwN6UhUiVgtq/6BghcbvrQ1uMCH9olNncdwyQ/xa12rYwTQjAk7RPodfrSpY3yzKvaEzHT1oY8EFJ02pWJ7p6kc8jOIbWbtPmjnLF5HbCaVoGHAoTwTS7vnFtXuFN8Z1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715410943; c=relaxed/simple;
	bh=RxtiN3dOy8MHU/KT21G71MdltrMMEv5vl/wl9tfyauU=;
	h=To:Subject:From:Message-Id:Date; b=dIkIn6LSeXO45qRk8UgRAr9/kbmA1FRMSVfb4qaRB72MdWxfKqufu7gRpsnbp8XWVof5yENYdG+gAXaJe6OKqwcM5x8U2hpSsGDIxHAaNQZyBD3gJw8VQxffoGlyH333JNjeGdOfNuvzPlKRszv9YZayEn0OAyb73Cvm4IYa07g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsftNECK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsftNECK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C8BC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715410942;
	bh=RxtiN3dOy8MHU/KT21G71MdltrMMEv5vl/wl9tfyauU=;
	h=To:Subject:From:Date:From;
	b=nsftNECKJjMN0ea7Llu35O+/LVt3FF182XVcPYD1xzv9bk3a8d4jSnH6Xpy+VAI4n
	 z7PcuX0s+/aLbUBu6sxm2cg11FxQ+tuQV4gcrZ9/q8FBXveUOvNbiR/QklVEB6OlE1
	 L8CMOxCdM6YD/n+2TtDq8UTax2v18gajur60X8SoWlxVkNb3P5fh+Qn7gmhzfdeh93
	 IbBj3aled9L+ADMKvXLAACkwMuw1jSwkyPcDI+5gYlVlSFIwe85EcX2Y3Z7ciS8Jyf
	 T7ZkVv3NEXXmpJQMKzlPI5xvlzKEvUqNNse1DNWq5eTqTDaPp1ky1sAUogdUDESDV5
	 X/nbXVNofXLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1577C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541094278.6663.11548700364707207034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af3856478386975be9d13c3bff4c4149e465d9d3028e40824d149b44dd83437
Date: Sat, 11 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715410942
