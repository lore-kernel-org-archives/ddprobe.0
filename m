Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6C3191CC
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763355114; cv=none; b=VkEJ+TR7usbE2FH5s7wlx7lmCkk3WubEt5fiF9HEgjILkSmep8VAE2HUMXBr65Gt4du2tT00buou0a9i27Nk+o+aImo8HKRRjFO97cKEcOfvV9lSUK8X7eWUnuaH8Xl+gZmDkHyMrbgszfVPlUkq9+t6Fx6dQD6PFB8JKcsk9qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763355114; c=relaxed/simple;
	bh=i61rT80vjvKkRnJG6D5SULM49dJzRl4mmRGb/ecZ4pg=;
	h=To:Subject:From:Message-Id:Date; b=rIVD7ORBnrct2WIxH2JhKZCrw4qjMvdvzfGkbDbH3l/nk0COZ4ZKqxekcVVshO2/ncH61gxQXthc6P/NRKVDBerJYZwsa/ZQzTKFyJ+fYI3guyjM/xOtJJfl3HnMUaXmkpbxmVp5Ml9RN+BgEhOGOv6fD/PdNDc8L5zrerpMAbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvV8bL91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvV8bL91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7AFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763355113;
	bh=i61rT80vjvKkRnJG6D5SULM49dJzRl4mmRGb/ecZ4pg=;
	h=To:Subject:From:Date:From;
	b=jvV8bL91Dbi8l9wAJRaw432iqV5sy/BUIlFGtqHZV6pExMyoX1GpLBezP6nb7Wo2P
	 8XelMZJxszejUVDEjTw+bOsf0HoNLW2/0nzU0pKOkXnvRo9w2OphZ57k/nKLJlZIGU
	 CsPKw79fTKoAKm9YdQFuD8g6pOQWQTbHnbLxnayKLg+XSYds/l/vTVjGER+EqIf1+4
	 4POw3K7SgGxIaP0obCSA53039KixpWk2OkK7yDM75J45v+Z7DVMTDOTTlOuDoAmvwA
	 b81m0+CPyN4R5ylixCcLfT2uiitQK3xeduusuHlcrLG64UULfOzCt49nizvrS1+Rb9
	 DKKIUFZDtTqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99273CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335511360.10588.12420939209627480356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d279fe4f7fde8559316ce715d563402cba9e09e93b2cb82813f97e8abc522e80
Date: Mon, 17 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763355113
