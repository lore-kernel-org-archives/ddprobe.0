Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EC312DDA1
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760250594; cv=none; b=gBTqJzZoL9a+yHHjeVYUD2tIUiWiQsxqJclvfsO4hYYtheqnEDfNncUfXcRKs7r3sKCcPsi45LvsTih+DazMnrMZc7v7ccprxMYzlUa/nNHW3W3j4+ZxdIq9Vf5vOgZN1NIthNZb0atqeTzT3NIz2tch8VIV2uOc+Vnd7h+dKag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760250594; c=relaxed/simple;
	bh=ve0OKtBw5Ly6mNnqMgS5QIJwC9plh0lALWZEejm51oI=;
	h=To:Subject:From:Message-Id:Date; b=EhpsB6IBSeY7toBofpvD3XEWQE3QRVR8ioNI7U7Rf2aXojsCmsDZ8Y78TeL1YjHJU6+ZZhFq4DCmoPATC6mpH+TMX81rARket5Y0N8ln8+VS1HVfjyt1RBB1FFjNawJsKXmusnTH3V0S2i2HjqLSh1I8B5guNqCXwUgARB2XYX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyMyz4Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyMyz4Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760250593;
	bh=ve0OKtBw5Ly6mNnqMgS5QIJwC9plh0lALWZEejm51oI=;
	h=To:Subject:From:Date:From;
	b=kyMyz4Rgz5Gg3AEgg+oCB7xctgjZxMaHl0er+itwG/g55JP27NVsVNPlNj3dFoipp
	 GXyA2lTCpBT2/bmQsDB4OPXy/0uxN8NklcGQSeA+K3QUgLJA+wkdDrePOSOLfXJXQR
	 RYHQwGaZvwk7gA8HxXX/PAuzpva3796XmAEz5dhC8ggK7IuTcKFgZzghMCEmi2jX+O
	 bdqgmo28Rs1XEj4tWoAf5D/kZqc5vFSuWUob7+wK3RJyZo9agOsqHvL3LvhI2+fFpf
	 iVPT22hLovy9Oj63k/ckWAEJ8JajfkvSnmKq6eoHxCmkggHMyeLOvf+6QNlTXuYG53
	 4xjtspZrg2wDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD5CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025059357.19766.12595963537879317309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7dcc3118a02bcf898b146f98b46c552e0ea4a7b74f8642bdda113cdc3893c2
Date: Sun, 12 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760250593
