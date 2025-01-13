Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC83186A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736741154; cv=none; b=ZBVWYQBst0RBSMnXmryIGkp14W64EUocdDRe21YzaGppVlCarz4p9lQXWdHs5HUn1DMpfRR4UUc4iqN8rBXMNB4WbmA6nI9aSkuuEx/lB1McYIOz+/SXz7TxgFlRg1BEcTbb4jJXs5ryBoucc/OSxxUFpz6eJhYt9WFFGpJOROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736741154; c=relaxed/simple;
	bh=qcNpaJtZqoP6JZ/+ZMWyrNUJXPRW8ncgX/uteZKEN9A=;
	h=To:Subject:From:Message-Id:Date; b=UqWXeIuSR0dJi/eapddBR8ZuDROFKEn6E1P4iL3xFxDKxsEN/Nyce0egSJYwBseXVq+RuCTYki+fm2uGd+ySeUxkYv+BJTLSPLZ7o36gbrn4y2RGaQZX4SrhnAVMsnCwb55jJjS+fyV5gfSrTBrgS3XOCbr30dw56okiMXHaaQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1rH18uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1rH18uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B92C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736741153;
	bh=qcNpaJtZqoP6JZ/+ZMWyrNUJXPRW8ncgX/uteZKEN9A=;
	h=To:Subject:From:Date:From;
	b=e1rH18uF8tfsbm6HV1H6Qz85gSsagUQ91irX+oqrmxGpAtO8RsGXRi7N6WdVJZikV
	 x0Et26UGbn7fK/5rNrNFheUZuuE4dfZWB0iMlGa1VOF4gyC9Kg9F5eG81O/F4dtGqP
	 iDxaflDPEJfhRTPQn+5assYouvvT10PmX0RNJI1UeliE9H8AY2DSvUrWo+ATOfHnN4
	 iTGng/yjZGESDAznP5kOUSOhGDKaLXtAa1lUZf0gOESm1fZfD3dkUewLimopBW3FX0
	 /Z8/2Bwtp70TAK/fS/owbMYAzvkhT5tSjIsWNQF1sIhU5/V22RvuUXsKpkg4gpoIGV
	 N0Z229WJ2SpDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9733CE7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674115359.20266.13598693226938336116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3649ad955f6624dc0cbe16073841e1b37be836e271e03d9d90bb26a6cac8d479
Date: Mon, 13 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736741153
