Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C113B2A4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756304394; cv=none; b=M18CUSYBEBpySKxSmehKQlXoDFdd35/evfkRtXhfrnvByqYCf6qJdJ4/rWyv0OkyhBgt/XedBOJyOPDstem0xiJVO9fpgsQvKpvOVZlGzaweXEJ8wK1eHTrJNaW7ZrJ8p3N8nEAGicbM9Gt9AGazsUbvT7NqFJQOU7ZsAKgDOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756304394; c=relaxed/simple;
	bh=Igqrm318vZpoJsBZIdqOU3szz+9fD23R2vmcGourb4k=;
	h=To:Subject:From:Message-Id:Date; b=aqoL2bgxqVIaciRsdkh+0XSd2N1ZZxu6wOA/pvaKt+JC4oLQrZHUgPk4xb+uub1ut5RkZyv6YAfsWyw9rKSG8itIPntJ1FKU5U0VHFmpzWj9a5nxzq7zPIRhPDU6EMAVWzS1/uGXlCaaOc3WdjJIqAF1rbyFhUR6Zp7BLO1ShoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQgqwu8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQgqwu8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756304393;
	bh=Igqrm318vZpoJsBZIdqOU3szz+9fD23R2vmcGourb4k=;
	h=To:Subject:From:Date:From;
	b=bQgqwu8NO0H5k+O7XGnRpYn1PI6gD4hWZaaW1STX+Q0kNEcN20mEZ9TmyzGpTETR9
	 xMOB63dwgJA2B5GdMz+UqZ7F07CJvkBNYs/Iajl0yKHgH8iO1MDIaIlXRPfybUTuVR
	 +y177Q2hiqb+MqLhuhhMf87HhpwV19KH8qHhgCN2gtpaYEp4On/ThPqzc47WLxeaeC
	 vX0GXU0ARSMtBvbh6ThEEjG8DvW/KKyI7qv7bsAc60+6xdbwDifsNYZKW09A767J87
	 25MWn9pMPzrbeIw8YxhzZcie+ppvdEAFadTRfg9cGTYl2dKPg8YtOObFF7ubLut6Hq
	 ZNiOF5okPtJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A02CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630439357.11515.5836329007102857277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d256b7e74fca9c1c95c709e3c8419c18c5a7e7d08c6661bd55b256c6599c8d9
Date: Wed, 27 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756304393
