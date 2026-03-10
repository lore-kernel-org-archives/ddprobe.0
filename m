Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C03A38B128
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149094; cv=none; b=foBjcb57PxvvqhJgZ0ZExQ5NoA+okYhC9nHf6PB7dQcYWgzqwu6gWKVCB5KLtaY2oaqaW6dnadwb/8rQCnRjhrwm9qmsmGiku6h4pc22an1mFhpvv/+VoJqGdYCvNrsU7wQZVA0clTzCQkH9BuhJlKSPCeT766lKUMbksE/GMCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149094; c=relaxed/simple;
	bh=zUJRBV0jwZ+BvqUl1g3gJwjwkcP6kbVojw2d+TaXFo4=;
	h=To:Subject:From:Message-Id:Date; b=C0HZOZQ3YNKkxhYbjjwvzxaHnp8ONFjhZJa2c5zU8/mrYS1gtHzNR5mJy1RYxDR4n1UCgpmh1YYoDIvBI5xYDyo2bPhy06Bgypb6aqCulkyzofhUmU/1rRb9nVapWOJZ0Z5HaWrFxlSF3Mn1oSvNNpwZdUr0/yJ157+iAVGEPfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlhXhqy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlhXhqy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7EC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773149093;
	bh=zUJRBV0jwZ+BvqUl1g3gJwjwkcP6kbVojw2d+TaXFo4=;
	h=To:Subject:From:Date:From;
	b=AlhXhqy1Qsqpj3HGrCy2ZSN72Yr091zzrXdi0iJNnfYXV4dXXmn1vTK+gFGeRp1kt
	 QhctOGlc8iOqfrAZPtFBUxgNBfLp1t1+yN2FO4nPzdK8+sbxV+h1gWXuLjZGx9LhJw
	 VsUoA4jU+dCBeFOzU4IYcn/XKe50Ve41ScJcSu5lWcPencYyC9eVF+/DyIYK4RuSoq
	 BimWo9cingu4ohk6KVYWWxyiAl0XqvGPX/h7+hbSnMqgdYiCwx6rRQChJX2Z0F3HUN
	 Ag74VR8bDH7HckkxNHALE392V4/5OWLfqpk1hbUWDsE+/mE2PY1oW1vnf6cAjGAF/A
	 Ef+IzXg0shnQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE7FD2D7C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314909359.6064.11022149082106901355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46f9506a86cb239221b6ef70ebbd88d6bdea62df30dc761142176790be315bb
Date: Tue, 10 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773149093
