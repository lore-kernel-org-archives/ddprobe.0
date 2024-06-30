Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8F33FC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719720263; cv=none; b=g1nLUv2RVjbr2UK+O0zFvo8tuDaeO0c9cmfI2xqLwcMWfjqCjXV1WIbiOW0RESvfSzKqvd63cy4INoJWAe+PIHziMgpJI4Se4unMX8ulhgJ3RjtuOg519vJHN5LKXjmHzHSiZ+6E7HkzB4r+Hc6W3zG7R0i3alv5+9TqFXwlx00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719720263; c=relaxed/simple;
	bh=XDtyzclJelOrKagveDwRX03k02Jk/HLNsjpCX//6HEw=;
	h=To:Subject:From:Message-Id:Date; b=YqCdBwQhgF1mPJwIxXKY6DOU2o709A8pnj8ILmVdt774qroBZChEcdfe1sdONNvmXl/T9MXd/W2CvyNOCzwTw9jFuAhMeB/U2Wk2tNiSseKDRI+ozHSBqi6QwNbJQx44a63FHDXtTB7ssP2PAxx1EC2al6qRzfhPl6jqSFEMOKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBVsp9Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBVsp9Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C80AC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719720263;
	bh=XDtyzclJelOrKagveDwRX03k02Jk/HLNsjpCX//6HEw=;
	h=To:Subject:From:Date:From;
	b=NBVsp9UedidB9hjL1qXMriKcv6e2Rs9fyfakqgqBzaux29dAkAzVugEbkTLyOoZOY
	 SiCQ6+O+H1KYYyqMqSVcuaPB3S/0lim3WXtReCu/abuW93OMAsjnNv1OLjfWWg/uCT
	 Ve5pXmL7ytIONxIhAQODeZsmVosFzXZVdLEIf+REKaLZ7FeOgUYoGLaTy/wStmtWC+
	 zHodI0TcDa8vcuT6wRYVkKJSo+ieRwI2wsk7hT5qGG+BLkkC+4HFkasYhg12obda2n
	 JadZJ/2uUu4CvYhcRczSFC0vX/J8/A8dUgZzOZHz9POKs9fv1eUsWaoIwzrdLQCgZn
	 yvtlcvyKLiZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05A38C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972026298.25297.573751402464255126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6ada04d972bbb28d3c2ee0326a916d9717378affcf11bb048cbe8fb3f49255
Date: Sun, 30 Jun 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719720262
