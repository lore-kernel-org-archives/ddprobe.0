Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212822BD5BB
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770881094; cv=none; b=l2kZTZjkpHPmIryZI7nWBgFeALraTpHbZrnjNKc7rWrs4UYZ0+X/8A3v0laEAYmoWacvYaZrm5luigR6saXw5nrzZ6MTGHUj0mMmniV3xxwwdf/rjsUJF1KN3kn6dmCvoUi2aeBsyWKRHMXWT5Tu2GvURtjX//Gfr0bsiesKQCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770881094; c=relaxed/simple;
	bh=lDqZWd8gWolSKfEGNIhLPj9pgMpx3dqXS7SZu5pfaa0=;
	h=To:Subject:From:Message-Id:Date; b=WNCNXgWUB2QisvBgsspaQAz+uKgpvDZ7pXj7K6q8BBI0OMGoREOZprfE9UHVaQRHCJG8zt8gsbBzT7p3lu5AS1R0STdjhjx4zKoc17GbdpuEeQ3/rk2pMqIYBiSRv7OJeZwlShfP0B1+eWphWTDzF1X0+8sOdj0/ebD84tVfWEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5DgAjhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5DgAjhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20ECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770881093;
	bh=lDqZWd8gWolSKfEGNIhLPj9pgMpx3dqXS7SZu5pfaa0=;
	h=To:Subject:From:Date:From;
	b=K5DgAjhGdleWjcYyragXlUMU84ZT70MHsmrhScefOrJCElrxfnWQ867wxl6bKMn97
	 HvTqwgMdsS1x3+KhxaVF2mljHfFkm+/WHhd5/ASTYf/wznfzd+MI3udnaICPlY2FyV
	 2Rt070wOsXuEi7iq6ZSM5kw7W+YTUv+Tdk0dCzE7SaAgzYKRQc8n1NXEyUjAtjM7AN
	 nMvEm2IOclONPxedhSnYvMkNI56H63+rFG2MwQ+PCHTVXNP2AYjhtPYoXix3558D2v
	 FSmylbuwOoOaxge35lHG9cfcha6vhZNL2hYneuBQTIZbYRBJSH61lJ9jTyDh8ayIpP
	 P4sqZD7OZTdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8C6EDF050
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088109362.20963.1668252788012943986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7eeeadf29798763fec594c0cd56417264ae581cd73b1b33cda0e92711ae592
Date: Thu, 12 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770881093
