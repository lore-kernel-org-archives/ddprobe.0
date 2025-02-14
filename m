Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44948267AE5
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739552334; cv=none; b=ORMSacI6Cl3Lb2P98pBXzi9tyBg3UX9jzY5gwgC4B4aU+VGjxPQrU0wTuWvRV91k5lLY/Dr9/+eWduivS+WVOq4L4htyqp4sbmQwlr+DINnhaAZNQ0jdzlCxgoZxkQPWaFA0wodvQcGQdqOaXkDX4H37HtiE6L8PMPFr4HzK/Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739552334; c=relaxed/simple;
	bh=kwCFcbffe93yzfwjl/EoHfKXHHC9Xtm8TrZ8PZanOK0=;
	h=To:Subject:From:Message-Id:Date; b=lCc6Xs7b0qRrWjSUr2oBOm4ejr3t847zpq3RFB322VaX1CI0n+ZTq5SbgXNExrQuxrds8Ge+QYKC9pi/K9JQpcWQH8mEQNa0iYqfABUIC7rsVCD+NmV3E2maIfrIu4AHPjKtnu3vZNHkcchtN9CNetbV9w5R9IwFwHcJZLjz2PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnLfHmZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnLfHmZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739552333;
	bh=kwCFcbffe93yzfwjl/EoHfKXHHC9Xtm8TrZ8PZanOK0=;
	h=To:Subject:From:Date:From;
	b=JnLfHmZefZ2b22H/qbt3URsmUwpK/6KaByKlQExOCVsdapWiFFPJs6IAFYmqnWT4e
	 v9Z1h2ROnSJg5+SD8ByGbM296ejNReNkOiVEU2XoflvUG9PYoYRP5H26UC70t4KLpV
	 Wj0tZQN5fsJKA9mykWrXLtSbrT+ks2icjGA0MCvEzey7hHRQhbcdLuBEZqRxDEGtpo
	 VIdpsxZZY93sPI3NuRJ2Pem+lKjBw11IWi2AYsRznoIfxAiiqeUAz5TB6gtj9fng3H
	 K/RmBWmTB5aWnWhXV1+m25G47cBiFuMzWN6r7sW5xyrJuxqfjVs4gREre4WmCRsIGx
	 ruq4qT5clVJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4E0C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955233362.32142.135413855586384408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a10a35aaeb062ff0d3b7a99cd71341cc3c1a328a65d6f9b6013dd37d0451e1f
Date: Fri, 14 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739552333
