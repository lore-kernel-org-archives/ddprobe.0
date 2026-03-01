Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227513AF2
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772391894; cv=none; b=i0eX0R58Nq/xH+CVQXxZsw3TAvmAYdGZWzt86XSnIDRCBKkg49sxRM90LlJxttz6JCd8WPdUzcz0WsF3OL4tbsj/AVO8yngF/S/Khfnfzpx1urFN3m4blNQhwOue9iLdFhGLUaY3rXBv3Dl5y/yq7MQZE82iYpwKMjDlt7+rpKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772391894; c=relaxed/simple;
	bh=eCkCs/ApruBSubH8LTUVqARXrOIbVbwsQ0ApoxTB+Bo=;
	h=To:Subject:From:Message-Id:Date; b=Yk2QWc+zgau0QJxn8dzsXPA+HDysk8w4XSLCEwG7/mXMTwpjaigjIVdSV4CfPBa0Ltz1vjrLdy6mCO+adLyRGprhOY2Daon/7ExB589KrbM+E3ciElFvm9Ve3duRn8CJHf33LektJCDN4nNRvfG5EEGLm35HlW0rRJlORh9JwJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASvFK7qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASvFK7qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4667C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772391893;
	bh=eCkCs/ApruBSubH8LTUVqARXrOIbVbwsQ0ApoxTB+Bo=;
	h=To:Subject:From:Date:From;
	b=ASvFK7qJ+ULt8OVZz3wl5+DpaaNxhybfVtl6i6gvlFfH+m5TOxivyV3vLnrHlWFNh
	 HMPPQ53biq3/U254g0ilPxVN9F3g98gb2r0mxPG4wyQYdINiLw5Eoo6iFqKk6PF4t0
	 77SNIp1jkVA9ADVKUDHscKx3La0ZoHhrNAMWvkH7czJ6CSUdHAB5kdH0JI9d9mcHq5
	 l1hAzqBMa9MOtYThlJ7U8CJ4n9BMbkL0IKT0IwC+0s7Bu4ghGOT/ZZgWBpmHErDR0L
	 fo+pPOEy4zjStLt9Nt5rgP77Ty6N8YQGxMzA6wFzR8S3QX9EkHjVmq9hIFfQiIdMas
	 B8vfz2IjFDBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B0FD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239189360.3079.1627977559817587030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e515fe7269af8a835786e92bf06480a4f86943e5bc737de7ca9ba4f41965c8
Date: Sun, 01 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772391893
