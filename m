Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170BE1E4A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732928154; cv=none; b=YDqDTf8Q/uL++5I/Och2n7qye+rDinreiquf4jTy1TTy7uClauwFauyJFwmVrN3/wW4pHGGfLonwCzGiW1+NvS/ofjlyFgzJnqWCrlSc4g8Ta/24b5pfsbVC/vmKnuWjbk3aHYOrNigO0ep6h3LbuD3h74wYcjp/Y0jT7YAxK3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732928154; c=relaxed/simple;
	bh=acBObtv31do4ZUd1vQXU6bne9OnT2g11ZHFT4pVjQG0=;
	h=To:Subject:From:Message-Id:Date; b=bhSPt0aSrAh1cMh0pz19r8fHERdAYdX/+R//9zFxmDYhs0b1F1JsfB6OoZM2F1ONhfsTkvepb7WE0lT/SwqE9susfoUvibgKxXYkfVnhzb9BhjKP++cXmXJrMsPYkJtRH4fKUXfl0gB7jcRX4GoLoVLAswPepqXx8DeLlcepg0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieGwoyNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieGwoyNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E9C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732928153;
	bh=acBObtv31do4ZUd1vQXU6bne9OnT2g11ZHFT4pVjQG0=;
	h=To:Subject:From:Date:From;
	b=ieGwoyNX8KgJto3Wz0pOceY31TXA3WIAo/TqqRZDSZHjQa3oSeg8HKch6idC6yjaT
	 XI3PBMurzOS2KRZf0xGy1jeG0QK0SQ9HB04kpyIi/4nvwrlB3VB1Try6lMpkQBCt5o
	 Mhu326v3xL78ENM+ONf5tu8tc+b4iaFy+6tqBUy1pStbKwJuf7tQRb02mo4fGHwRYa
	 hfQOjgVPYuuTKwth93jLIDbMV1tUl8h6zP7dKdHoA5rMNTfhSLWHooLaF60Q5brbZc
	 7mKQaLAADcBQRc7FKux19ef11/DEdDzqn2ycG2jbIGGHzofGP2nK9Ab4x4UlXgV4KS
	 KeJqqZMDQLJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95203D735EA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292815360.31583.5665110800971976347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55c8e1c3515ba8d79f140a0a14b3310bf13b7dac5ab15a1e428dbc1690100a9
Date: Sat, 30 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732928153
