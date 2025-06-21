Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125F92690D5
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750527594; cv=none; b=LhtIxxE0nREQ4n96rIwwEumppn/LBuGXx7V/78qJCwv4nJ8jhbENxmK4QS/1JE3XdiWy1HviwLLOqJM8EjZI2OB5d4JCF+zyUr0MQNqU/oCBb6rueQC6luA7aBOZ0dOqYclWYMD96jCHMIJZChx81M8/TsS0KPx8Rl+0gjWP5sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750527594; c=relaxed/simple;
	bh=XrsamIMZVWQJ4P9Ud4BuRFIdnqmusC5iuBKjDaeA5iE=;
	h=To:Subject:From:Message-Id:Date; b=Hxv+GRbGz6LYueQYjFFLzq5i/BFC584hudIGj9Oc2zNIxlU3PeY3abMT7bMboC/AMv9KywBtRJ02LWOaXaRAElMCbifmIMjLCG1NHgE+7e0bXopbmM9CheKclY0qtxQnsD8ax8TepZNOwEHUK4Py7T9JlcRUZZyEEMXCgU/hKHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh/1SwKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh/1SwKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A7CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750527593;
	bh=XrsamIMZVWQJ4P9Ud4BuRFIdnqmusC5iuBKjDaeA5iE=;
	h=To:Subject:From:Date:From;
	b=Xh/1SwKlTjdllijpuTZJoqhnOcp3joIKsubQfrm/lmVpwe1ZxzURJH/wEcl5ZJU4r
	 FxEDoypTwicwhOUoFoIkhHk0hthZUbVRtxkyhyiSdkUxanWFXo6oBBElvqKBlejdb7
	 v8uumLIHH5dvDu2PshNFzf8aHwdkRnxKieUayPIDKDXHvb8noG0tLNxEAKxoIFIfir
	 tFoq8dCZujpSwCeUEljD2famgPJqBchAqAfGiTjL926RoZz/jBXri977Pag9hzrkHn
	 FC5jyazFaEYBPKUJEmWiVrY2HhNBUZMmf2f1m8WQ1FOfTIYO8eqCtLyYCKlbMkK7RD
	 3jqdglLNAGglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94194C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052759357.5638.13884607406314988739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fe1f542cf6c4f86b94534b2892df2837ad9b893e7027857e83454d9775e2cb
Date: Sat, 21 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750527593
