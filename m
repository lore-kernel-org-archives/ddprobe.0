Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69E95644E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706524097; cv=none; b=vDt9uhCeaASWDGxvMbKpa0Llgg9WL8P3J9UB+y9hhjYU65/JqRwvyyIqh3YoKthEZZetNut1yBtb6k49hluv85YwcWm6asTJDT5LWH8EqpscHac7B6ymnvJNYUc2tpcfjRAH2HeudrkKR4ImuCtWC6Mh/VyuvVRUf0AJOGQ8UaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706524097; c=relaxed/simple;
	bh=HK8HX2BM7D7iD7USBloQq8Zl3045G5Gx2Y3YsYfroog=;
	h=To:Subject:From:Message-Id:Date; b=cGJA+aEoiUXCYPl67pOtRr2eLnEGd91M7h20TO0fPtTCOI/74EyZwK1xSHpAudn45rp0UjjXEugnZeLBHbgMOYv+QhiACLzy0tSIwiHYC/6GvWn48xKNUJTArufLWHSHvEe3dsJ2CSmDzgwiCw7wlwUYTQPgoAKyCdZjXeEgYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZIiszeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZIiszeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AB4C433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706524096;
	bh=HK8HX2BM7D7iD7USBloQq8Zl3045G5Gx2Y3YsYfroog=;
	h=To:Subject:From:Date:From;
	b=kZIiszeopv9hIQSk/v1ur0igwMLd1B4rh3ODRzuE03/lvaQAzOON5JzkMlOlxj6Hv
	 I81XCA5HzgllKADI7nIiey3R242osnXjl3sZvWEGlWbwHcllkNy74cvx9TLG/9lTg4
	 DwdIeYY/vQY31xeqgO+RJNZyGUUSB0DDwVFXW2bVJjVLFXDOz3UYuJhGxYo+jJ7PcU
	 LC7PVPbUQFlNY5d+DogLlcs0v1rWYaxmJPvLKo9sFJlBU8ES34oix/wRWkwxlo0LeI
	 bF71xbr7j5//SXyn+inqpjjdJ0Wzl4xMs5Db3evK2dJrkIiYq1nXiPy/qv1VekCD+e
	 3anSEOMkbs1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFF8C47DA9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170652409637.31804.13788040123276245532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad09f972bdbbc7db244efea895a4289551e168f6c781f626082b53d2042077b
Date: Mon, 29 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706524096
