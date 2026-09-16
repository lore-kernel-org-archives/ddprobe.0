Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABED53783C6
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789564234; cv=none; b=kRhSU5jZjwergQMxZJ94l7/frhk6uXJDMz0Vd407M/nPQbSy4/JBBi6XMSouBJPDxFBlcUotEQw2qAl4EFu1zN7xh+ob8TutaXLwnlcjvelkpfxn0LCkGfNu2x7q0iPX4/8EiOz85qampLaJQBLdWrnjHkHc2mzsmEnAMDgK7DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789564234; c=relaxed/simple;
	bh=gB4i9cpwG94TOFl26VL/vv8huNgoAHee69KkZGeaqnU=;
	h=To:Subject:From:Message-Id:Date; b=FkOSkzKOR4AI0W8O3rCSGR0gfh9dw8FaoLAtZ9saSLv3elyakLSpka6Zn1G2wWtzd46vScJbStCe7eMdQjkrF7KuJP0Ais9eEibJATfjvciswaXIPOxA9GGuRcohJ+St1eo4veCstp7evZNI0N1FJR9y/dcyg4pzMaP3j/ed70k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTf5NVFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTf5NVFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2FDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789564233;
	bh=gB4i9cpwG94TOFl26VL/vv8huNgoAHee69KkZGeaqnU=;
	h=To:Subject:From:Date:From;
	b=aTf5NVFrkzDcwL3UFO0TyaE5iq35zWeSIceOw8azVWhYQo+7xUL+XSWaVZlsGVMK+
	 jN206s10bn7S9jRcQmuc/4nYDn1mRp/V8wWudZQ1/i42tns4P2nCrM+L6lHIwiuGTP
	 X9yEv4gRLQjiJOCzqKMirdZxUJGfQZqSuo5LFFlFT7coP0SuhjgfrRBKqPiLfm1VwB
	 t40LfUf+8X8ZlbYtOLix1yg3O28e/jnl15g0LwibyMjyH0sdKcB/ZQx/slM2Nn626g
	 3lINYWgyRGLb1MlfE1ZJpdmPleb+UdYZOSbGBfIzu025cCfKDABR+EEms7VTP20C0O
	 +W9ThNCz+X7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA716C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956423368.7837.8504915830146472801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a2d40d38e7da0e0c7ccaf1ce9f4d5d877be3d99f280d3d8bf22fc2d81e1c7c
Date: Wed, 16 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789564233
