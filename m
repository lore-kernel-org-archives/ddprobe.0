Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235002E7185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760018394; cv=none; b=FR88iO0Mqzpbo0PeQvyQbb4qoSvGiY+WTI8wKFShHrbjENRrSBesqd3WiuHjgI0Fx0opN/GezqYRiLAvAUbhvDqazexgNLv9dP1bJAopcL+acSL8cmd05OhAuKgbdm/yLNPgkAh3bYTF+Fm/pumXTt+/OdnvtoqNbUL9BuDVh9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760018394; c=relaxed/simple;
	bh=C6izJzq/+I2U/zHZzNYCOVzsAUsmbCAzIYvuUDSp8cE=;
	h=To:Subject:From:Message-Id:Date; b=YWsLm0tC+Wfy15TkXeWWB3sa3QZ2w8H/UCxVEqpD77aIYUJQIGt4XcEvNyRgG13sU/i5011Po4CbKKDmqUYEI/k8YYy81lcxzuUa8A2sfraCatZ809zjR+DYwi1l6/rT6rzSt13rYDvz8b/Ub8RxXpQMnZXhZ9DXTaLB9u/pueQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODkrtW8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODkrtW8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B69C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760018393;
	bh=C6izJzq/+I2U/zHZzNYCOVzsAUsmbCAzIYvuUDSp8cE=;
	h=To:Subject:From:Date:From;
	b=ODkrtW8VzaUjgRsUiXidRr4ThUwcmSSIFBB/ylOeUzkYsXGsit+cKq66XRpktH6/u
	 T3tw/JCc0YsTBjVJOwSJpQWAHo6Y3J8udPliT1+ukcNjjUmBfJmim9ufgh1rVGAPob
	 vtPX9fF5RUGSxh/52zoE0anvOSRRG3uiRO9fvJOQVuyylCPlotiILHKPhBNWksjI1S
	 BQXKaqec5LYnTD2pJMFy838gzMvlhE3ucoQrK5kSkg1j3xRCgRMreeObT1JIz1H5j1
	 OEfy45g1TQCncUPCVIr9d5L9jsv8aAjXZLf8Ks0eUKUXUzLQDgbI8Wy+CBymi70xOv
	 WkIGIyntMYa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112CCCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001839358.5927.3543393172944183734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e44b82252ec7a74e9fab954b6a0abdc16fe87df0bb0624383a62766416ffcef
Date: Thu, 09 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760018393
