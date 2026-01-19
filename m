Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD161A3164
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793034; cv=none; b=csOzmqADMsrfe6snlbMln8HTq81D9gr9+kM6TEE3HjO/P1v8aQSwv+FcpiahBoTQMTedDlaf49ZZrXVaLQfOXsYNLrYWRWAUE9psD4rFeEz1RkN2zB8Mn7sCcE68Ka69HNofgZViDgiTqgswP5HXkMBO37gYcSCFUYKQNn/vclc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793034; c=relaxed/simple;
	bh=K6JqJGnPQRx3Cgp9As/wLZMsnQyr6PyR+qwV18v7T30=;
	h=To:Subject:From:Message-Id:Date; b=YSIYozPR4jOxEO1aPwuPj/63y6Og914yU0Wkx8HKiaVxX6qL6wiOMn2zPx6oJNnnvFA6OuvjpBjcXtMmemGZrA3IrSvNdydGwi/FIcdzTuVX4sgBlXqoehpa6UiVCCjf65sdktxh3FKjli6yz88VakQGERmSlK/2ePjTIBZhe7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnB0X9kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnB0X9kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3FFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768793033;
	bh=K6JqJGnPQRx3Cgp9As/wLZMsnQyr6PyR+qwV18v7T30=;
	h=To:Subject:From:Date:From;
	b=XnB0X9kgwPVj42mtTrbN54ISn92Pa4+uuxehz1OD/Nj5LRGDaztxrdPNHf47ME3cu
	 Em3VgYqSxPhqLQhfQulTWjCDKt6lMrG4wP8Bzy8EIGHAISEXS6vYgK0bWtjAv2Oa+d
	 tKGijDjsgxVQ7F1r6jYVzEnM0M2osENjJVasE0b+jYGbYJes6IZgf6/RQ13u791BEh
	 VFA2t634sE7zLQL8xf5H3i/WCRy2kM9MtS+Fy48r+9sVp5NXIKBZIJSXuUY5zF5ndV
	 Bt8C8IcCfM79To2fprTp15JNQdj7BGlSwL+S6GttGte5eJig+/LKOcTU2SwnpBVVdf
	 ktnERuigK40pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2C3D4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879303359.785.4780687092171327007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affce9d1584e0c13004a365f0d06ce63787a72bce33209191893c81d03b83205
Date: Mon, 19 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768793033
