Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0B32F0C6A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771163094; cv=none; b=jro1TOdZbePDJvN11QxslHz0rsF/24bWQAbhQN/EaP+2ofz/Ko7UD/Ix6HO50KNl/OWKwjA6a5x1XW8AbTGIWHva8M+m7RkrwLTQwgMHsaV8aZqp3Ar//TFORmYnmBHpHfVEieMToyL559fhzV0HnBuE+MYPYpQbX2ICI4r1PlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771163094; c=relaxed/simple;
	bh=K9YsVQX4BlsUSAaHU8eWfLuOoei9tHb1EInhNeBVqx8=;
	h=To:Subject:From:Message-Id:Date; b=D7DrrM9oqxlav1M09donU79wix10XmNGDIuvi1QHtd+JlmSNpYru8TOLAcO8zG0j5LbPjlWsAUQvzQnb8hxwWhx58txAYU6ImAO+OO2sQcmyieKWsBi7C4bPobYyO49ObPhm63BqgcNDQFvGTy3mSQwlVIKJChcdG90D8Vdy4fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUzv+RdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUzv+RdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8918C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771163093;
	bh=K9YsVQX4BlsUSAaHU8eWfLuOoei9tHb1EInhNeBVqx8=;
	h=To:Subject:From:Date:From;
	b=jUzv+RdFhI3wD7KrxNu6HaVT1sTk+fuTJc7zOe2Z0d1vU8XHWLUtVIWYTu92twC1S
	 Q3azMxWL+lFvLEvq1FN1Q2uatx15rY1lsV8i2bTYMDHVmjots2r65zfDWdzR/OypP4
	 syb1Pa5D10AId6rNZG/19UNicWm0KtVFL/eiCnYPWg84/qXyNAOB7REMXCHgjv48oA
	 WcCC304MhYXM5wXhNfNj+DuK5l32gAvLYYJ+9LUu+eGKGAjTPRchDW0plxTrfxaGUe
	 GnF6vggLHEluzn0WYazG4KIPDFIbrkTygaw7xCdAXK8yxCBJXwyb0FyEmc15vJrai8
	 ZmW0Z11El7Weg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F35DEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116309361.8241.16332260662691976910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8ff707ef446f3efe19514744dd8701f5a0a67073ef23dbfd3d04da85d403fc
Date: Sun, 15 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771163093
