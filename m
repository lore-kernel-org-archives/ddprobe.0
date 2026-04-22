Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CF204C36
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776890854; cv=none; b=p7M7PMmM12CdLbN+LIDkXXrYu8nTcspL4uqNd/O0BpV4HTnx0GEEj66VkrRJWBCRqZrHhFGuH3d/a6u9//jNmwhUOyfZsW/0zbH02iinQRMUxasviTTIugTvDRko0emFw8Hk9/tkRn5UJPa8yJ9fgS6EqWimgjOEHHXF0gdsJEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776890854; c=relaxed/simple;
	bh=3duCO7Dy3RP6UTb6Uh9k0VGG9ahbR4Hcrip+PK/N4Kg=;
	h=To:Subject:From:Message-Id:Date; b=OpTa+wXsLJ5F+adqMTbmeBgiuBlN1LP9PvieaPMykrUXYPqqrxalH70AT+jiDCvXlX4gi1hGjb208NAXgY3snwZIGhJBC6BZ+LlHahFdfMoUuPBM5q2rgO9ip6ZUoLTWiZymftuu8eNniUAYxswXdQrNuI5v117Zv+dy1VFdMpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu8h2oIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu8h2oIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B890BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776890853;
	bh=3duCO7Dy3RP6UTb6Uh9k0VGG9ahbR4Hcrip+PK/N4Kg=;
	h=To:Subject:From:Date:From;
	b=fu8h2oIjvLJxP0kFLcpITbmLDHCxbtDswC5sJu+e1Q1YEaNj/+gUJ/AbJXv/AY62x
	 qi8agJRwMLmQyzE6V7qW6fSQB3zRqk8DXdjQ6CUtBvRXTFwWhqFcazmSJL/APu/BxY
	 cksQ98Hr5DXO4LYNsmhgc/8affCdAip9RmyEh/5NiN/xUzYsASO5wU5BS9AK/9Vq4d
	 Sg214FzSvAiFR6/ZgtWIemt3RjaZazVcKM7ZrWFctmAHCghRtKL0AuwUEpAmP6qSbB
	 aU2g4/4u3OObndHr1ggOs34EMmjglCSHcNeq53IrWCpjWM2x0UovTw4eu3rB2wlL7j
	 Tjf9oIlc7aq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC0FA1FFA
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689085368.29160.2104345503084484172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f88913338a826d2c0995f4bd79e0d3b13c8779743d7fddf50785da2100db94
Date: Wed, 22 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776890853
