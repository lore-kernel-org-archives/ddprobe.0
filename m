Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F065933A70A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776225454; cv=none; b=IziGO0bY91kAfH0lZ7ci7eigITxILl2fM5ODG7lNJ2zbntE13Zk6LxeDuWZYYbFm3RrLCG066txPkAPOHEnDl0AOw1oRegH7/31qlrM0Bl7HF9FwBK2c8AtddYS96e6gk+BiBA/J9p+/p+HOGu2MUvJlZ5T9XggE99IQkTt46II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776225454; c=relaxed/simple;
	bh=PkQ36R0GDR/l8y9o/uAt0P5h2jDV8kCk7xrk0IeAxnI=;
	h=To:Subject:From:Message-Id:Date; b=Y7txelB11QZnVk9C0M0f63S3EeKHmKNnHA+FG5K27rcHzEKWZRy3u996zI7zq11ZTivwDyXgsyIzGUScFjaz52sAZ+4cZv2VIRoRowbX8LmCBe7jtGFwQ100P8j5jxlDoDhbnKVV9d/Bvlxa1zu8yuq9b4JR+3ywyXj5ndfJs1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYookrwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYookrwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFCEC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776225453;
	bh=PkQ36R0GDR/l8y9o/uAt0P5h2jDV8kCk7xrk0IeAxnI=;
	h=To:Subject:From:Date:From;
	b=qYookrwrHdb5Mf+0aUtY307vcQKnXYUe4rKR4YS+trJjuYTkmomk3KKAGNkA6qw6L
	 g/pvXdt3RHXicAjSMSfwOnKAXIFzG6bTktmmERC6NniU+fsqOVlrQkZ8o8MUeTpT6/
	 VlEcw2weh/Uc7O3HezcnxpTrtHcYqJrdzoBD+7msrbO/xD1pzjnLxCB8hT4xoB9ams
	 O0xdFxhG2+dGGU0+E6Z0IgUXSY5HzTKKSr6lam3L5ajkvD0a6+qfGjuiRILpfEV3aY
	 to0IR1oZw2hjZg2l5a82+iQVP9hvgbEmWMRV7umKNBcr8CuO8lxRIth4Pa5u7Na6UC
	 XFCmQH2j4IX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF75FA0C21
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622545368.16186.8562490586667689797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9258e125c77bb50bebfb2acfd085ec6e2d8a4b47d5c222e31e4bb950ea2e63
Date: Wed, 15 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776225453
