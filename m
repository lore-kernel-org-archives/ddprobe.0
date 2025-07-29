Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189EF1EF38F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753777794; cv=none; b=f2bvjqLNJ1yFfTAf2YtunFu6P9CVjTe7AIMnH08IFWogawTW05uwVLPKEwiWIYKonhlGC0VVCn5MdJ9/Hhfy3dmJ7fmkJSiT5I7U2rzpiYM96s/mAcuGPw1Yyxa6qtO0kzDu82vm9tfynYC1Al/1fG9kegU1ulR76ze20YRJOao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753777794; c=relaxed/simple;
	bh=2ug8N1CV/oQ3HPd+xlucwsgvLmzZGN6UIys6nHu7MgI=;
	h=To:Subject:From:Message-Id:Date; b=D+jGwYhvRQRJpMohgeQD13SN8xTJtfyy7D52wowQ+6pJyPr3lQ5Bl723LZ2lkc9T1ApZd7yGeV8vpuSfjrkXzp+F/8pH+ph3k5uhR4NjDIhGseBaTWYOgKk8kEia9fpY3gYlZilYqusvGS2cdLbuXHbwIVFjmTqNeJbg9siOxDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2eUXyMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2eUXyMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F39C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753777793;
	bh=2ug8N1CV/oQ3HPd+xlucwsgvLmzZGN6UIys6nHu7MgI=;
	h=To:Subject:From:Date:From;
	b=o2eUXyMytq7JVS2S3ne5k6aU7mFXtK0AYVJ95JgsrKLthMeLrJINWbH32oBFinF5p
	 u+Jvid06d5gN0BMtpsTH/xcrULBQtBYupffnZloP1z7Nl9hDOyEdn/3pXHizWykP8S
	 SMi+iGLmcAlUuFgi0Lo+G43clhZM0crfkAYDWvWSgqi0COf2cWAlfb0z5kQp37OkJ+
	 HwwcPslEdld8QV63sp7qBovlwU6WJF7NbmrFOFJYLUpyyNN8ArC93zlG8nufxkpTUt
	 uqLkWdmQJ5GEsIbI5KB5NjkZ0x2onIUolowao6qKPS++/TErRN1lg5etYwLCPhOm4d
	 RQkTD8wrcFHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93035C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377779359.24986.798074954902303036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72951343bcdaf232efc728cf6d5d3982f8bd2de6f4fce73724eb28866bcddc3f
Date: Tue, 29 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753777793
