Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A3F3F4DD9
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790683834; cv=none; b=X2DnOqaZUhmTrkYmc6wMF0dS2dbLXF48h7iq5xKedLUyrUaXXABex+XVdPio/GMHk556RytxyqG8MtOLPpflcMlJnPJWknE3JBV3oWXXanIH/YyEcwf7w7QcR/tzIkX9qpwmV5KRkurDykBgiEBl4738cx+scV+jawmPDJ6/+2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790683834; c=relaxed/simple;
	bh=kDkiCgatiLvfL9mgA2o7k0QF02wxpdiEOMXgHBZxwGo=;
	h=To:Subject:From:Message-Id:Date; b=ANOifQlPbuXEMulYhckAA4y5m7Y1fJ19p0qxZStkydCd33Jm294w+HOclK8/swclkD+/wHHGms735OKfZ0t448c0X6aLDS4UGvSLVYBtNTurbSfptXZQx6AjraWkaGN7kw6RUVpVgFoycX6A2bmLWtTa7KEysy6J5moy5z8vslo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7LGOrKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7LGOrKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF504C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790683833;
	bh=kDkiCgatiLvfL9mgA2o7k0QF02wxpdiEOMXgHBZxwGo=;
	h=To:Subject:From:Date:From;
	b=O7LGOrKH4HU5fJWkDpIF2fCCz5vaANX+lAW0Ajp2g4I6XhVu1u9cKzSKoqsLTRtu9
	 Hk2BO4Djh+DLlA50k8BjYMKZeWCtDio4Z2vk6UyXKkTvL3uWYmJ61KrIKQBLzURAMN
	 DHtzoxpw8xJwA28nitAKNXh3R2Y5nX1mH6D3mxTQJQcpAxz6OBsC6SKs0BnQid/nZR
	 mcAXSIdRUft+u1Ab7sp9htDpa0dQi8hJKy/E80qG9INhjYOaQNtiN4E0ZPfDEvy68i
	 oslLybdrezrJ02N8Z0Rru/oMp0lWy9VwK6LPevgFoK4R1cKluRsBC3gXDfXRj0oTnr
	 xsnQikT6VlBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC2CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068383368.14304.5123295114829452763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df8288facbcc087252b2325d286d922ba6bffa56b5923d65bd73f51ce2d10fd
Date: Tue, 29 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790683833
