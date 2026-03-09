Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8503A4F37
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056694; cv=none; b=dMfaVQBenq9Kr5B2EIIgLUgDJqTxPYn0euVx15i1F1MXrBtEWg8s0AeSpPxK/ikRsF2QLJtURuI2fjLSByvKuCwRf5iasxjgu8uUbhMlj0dssKs6vUzlmebX7voofudAjoFQ5YtgBC9zVyK/jznVbmKPRxO2T0+6V7mkmurodgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056694; c=relaxed/simple;
	bh=ZDO/cvb8ZGjzXf1tp7dXOrGaKuWUDCZO7o5l+UQHoBc=;
	h=To:Subject:From:Message-Id:Date; b=DjYfgCQZF2Ttnot5YCNcf9bnwFu3igvhj4bXSK3sm0R0+ntaOY5AC60E8AVzxqk/hCi/ki7llp1mxOodh7iUg5dgvnxcsIoBDF+Ti8UEj12IDI6og1C4MQcVl9hjoK3oS5a4Gkl2est3i3/WO0c2NJYm5AQgCFf4CI1zwW9yjcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpaNW9Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpaNW9Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D059C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773056693;
	bh=ZDO/cvb8ZGjzXf1tp7dXOrGaKuWUDCZO7o5l+UQHoBc=;
	h=To:Subject:From:Date:From;
	b=kpaNW9DgGnFHjxdlL9We57HWWYAJ099r4W4cIQ63eNs/baRy9ysPoFMq0HzMQY2gx
	 txCepCsfuI0iRmzmqoT2DETvX1FeuRCDvk82Ul1PJW4jk5mB6ij8o22o1ZMVwoEXg/
	 /vkWm+hOQ9qzdiPJb7hW+QJp8RWUrHCO8Y96DyS1CsHIzm6puBVRO1D9WoJEhbpIxa
	 BF9/l/8jSQZvcWXAIKX1TKacq+bE5sVMQdROwZ6b5r18do9LrV3EvKmHZAPYZpylsA
	 rHzMHPYh8dkRPbxEHKrnZQGXmKQswnndGxEpkUufijoyLQHJ6W/OSEOEmrBvrDq5UA
	 EmrYna8IdD/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F987EFCD9A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305669357.10591.15160048226326904653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f62bf9e07c2501b6bca0a3eac8210e369ba30508ebe0867ae2001cf9eeef7d
Date: Mon, 09 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773056693
