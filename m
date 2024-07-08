Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6357414534C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720481183; cv=none; b=Lg9/jp18Ou9eUPUF4Zu+pclzMMbVStgRVgjygt7PbnV+FvccCBw7+qjwFIUhWZdGabyVsfIrCKBIruv9qwL0OsLuOtxGfJRjm+15pTmi7K4UGfJK19M8kY1WZIxJuS28BvFR7su8xNA1Fw4GH//sAAE+tu1vq4SFjXbQosa4k2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720481183; c=relaxed/simple;
	bh=ykMhbI8w/egvjZDbRWs1wqMROImIJZjla/IOQ9RyaPI=;
	h=To:Subject:From:Message-Id:Date; b=tUQ0wFlhQtEzKWdA+OXr6BNQWRrAONeHNgOe+6N37qEbUBd/HndliWbU/pdXxlMykmsRVrWxRlo683dnpc/U99pCJnUj+1k16X04IZqyzTt74txzr0lmeTW5NgGUCRMCVjCQkJgoEfCm8vNTR0ZdlbRKbQhX7U+If4OoQGnHkYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYx8gFzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYx8gFzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE42C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720481183;
	bh=ykMhbI8w/egvjZDbRWs1wqMROImIJZjla/IOQ9RyaPI=;
	h=To:Subject:From:Date:From;
	b=RYx8gFzkiHl0uWuMdYjHFFotHWJD4yqd+oIL28Y6XR2M1McG42m1CXE4wRhJhiUSL
	 ZyspJs7Tv7PvZeUeJyDzME5k9hNyeqYbCWYdmJk5ocdOKfCwl8UriN22KlXFLrM5OE
	 ZXm/WYqH1pMYPS5ZlVwwArpmCZLRyvtK4YWpI9ogh58vPWJnD/VqukoqYAdbaEriz4
	 /v2vrUo+3AEnp39pz6oeVmx9dsHJC8inRl+836eeKpoK49yEi4+EkfSzhBudx21zpy
	 4kvUoP7tlR6qpmL0cNC+fc5gl7c278a1UAE2ll5wQ1CITE5YUtfCqi6FVYduICJi7s
	 ZZPfpbsRnkWLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D248BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048118285.25003.12218409070708264194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17acbaf090bb442c7cc82c259534f57c88706d663562a30e5646c5d4414dd6c
Date: Mon, 08 Jul 2024 23:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720481182
