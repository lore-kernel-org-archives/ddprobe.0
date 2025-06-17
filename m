Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2923A28D8D1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750145394; cv=none; b=q9Uq8eI5RtnuOPkvQArcmw5gBIBK7vz9E9RPET9SOW815GpdUvJ9Y5qP0Lttuk1Bu8t5qUg0z6iLH5Eb95VxhWWgWLxs5sZBPsnih+F9g5L5Xm1y3r+IznZS45fckZ0jFmArYRxF+7K26iRwsGhyUU70R0CDBjGng7P+u4fVjfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750145394; c=relaxed/simple;
	bh=Nt4t3uayqyF5T4HweFJO9z7O75Z0eZVnId9Zc514g6U=;
	h=To:Subject:From:Message-Id:Date; b=Rh535T3rr+KvfzR0X1QGR6hO71e9DpXG82vmgzOXXcGD3fhTfNdy9QVKKNUmcbcEMHn4bvwAVsvD6jz/FXDlQCGLU/lnmiS4niJQSYOr8Iwap53bB43rj0VL+ZGsxrFm7Q116U77iJj6UO5B7L6cCEnxt7xb5oaRfNRicttaxU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=innLHnFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="innLHnFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7602C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750145393;
	bh=Nt4t3uayqyF5T4HweFJO9z7O75Z0eZVnId9Zc514g6U=;
	h=To:Subject:From:Date:From;
	b=innLHnFWLfLs613A8GKssIgOeYrJdE4vg9WsEshgVPCjXoenpt1+BYI4yxBbbLYH4
	 uR2xIbOaxwbGILYHkeCofvRXJpHJmXTcc+jOeB3pm60Pz3RYCaY4KPv+TxBavWe0EY
	 IUJSp/5+EHnjBqLM3Tmby67l+YETwqSrJHEmsSz/XiWldLQ+e9piYD9HA74seHuNd8
	 xku9g/07/gOe51cNWVHRAhmGly3GtcLriLakflDp+7xiJFFpwiChi3Q04cbDbcmMZC
	 S+rwfu/dWwoGnwmGn7RMpkM2AO6AqEbTrvfXssbpHQjxrROD/Cumk9Fm59362e5nuv
	 wYMqVB62l4KqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EABC71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014539358.28441.4344015846475043941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca1a872dc42b142792be910195d1dd14d9f9dbbdfa99352629136d7d5006f1c
Date: Tue, 17 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750145393
