Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EF0303CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761592793; cv=none; b=fN8LDcQCteb3SNZFhMvf9zh5iB3Qi5inWUsXb5B6DgoZQ9CeYaioTaWR7h4nZKb1CT1plMXoVMY0VEMwv0JgB3ccA/1K7r4cuwsRX08pxWuH69lxqZ9dHPeB1CJ9TNNc2aZ9mEH+7tigk0VzPBy3rg1nod/Y0BlyZlZXifrppw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761592793; c=relaxed/simple;
	bh=ZJkX0nMzO43FKKGfZcwQ9twis2P//q/vwnSKRLynhGU=;
	h=To:Subject:From:Message-Id:Date; b=Lg/ABDRvw9HnQ74AZgyO+Ugi32dqBRpCqr3m8e6WZfrHVbFM7a2sLh4r3f7OKAM16wsBspmRbI36OM+HkU2dP2ROa0ufhMr4KzLRyY2JvEfCuj8Flc2O1e00bpkrbAL8TNsb2lHgYGxuHvxETpdzoW0dgDbIOBWc/n2dlI3wQRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBZ2VvMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBZ2VvMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1976C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761592793;
	bh=ZJkX0nMzO43FKKGfZcwQ9twis2P//q/vwnSKRLynhGU=;
	h=To:Subject:From:Date:From;
	b=RBZ2VvMypItVg37LNMp+Co1eHkLIIYC09DipqC8O8R8Fr37ZKbDgeBXQsJM5cP0x2
	 oxdNEFhaAnMCc4+7BsYjWxrp2QYNRVD5X6mBpHF3vhp7gXPjuaNTfQ678HnZXNQjwq
	 Bi4JX2EBk80BispNoj672m8WRM+Kjkj9vx7PrclXK8665CVxukSUM2rU2WejrBCnhp
	 TkaPXhs7q/0aMlU3BTmLYg1qTP4zNm1gAe+v62wtvGgjq3N9VQCaZZmbOqwOQ88Hs6
	 QDKB0rJhFjQ7dsWoTc7We3/brOJvFffTSWhbeNh1lU0xfRItS+HxzxLBYkeXPzLBB6
	 XRd96sly8O8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93563CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159279359.7696.8559209256172157349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c781b61a3f78d2fd8b2e82ed504706f0435d196449d9dbc7e1e9f3c1111e64
Date: Mon, 27 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761592793
