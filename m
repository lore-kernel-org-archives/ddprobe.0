Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D421139566
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745448594; cv=none; b=mimri37crUZ69kgCEUAF8NM/SjP8O1hLwPa3YNMZP7xcsGudcfFGg9sOykNZ1e3s2tib4ZVjpRi3oqF5lwTt9inSEBSagcfKYo/BWPP1Xd/08cl4VOGCU6ngPZ0mVFHYzAoSYtXfsTc0qDSoIOhUtKBPDs6K/Bfy48kTyToqf7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745448594; c=relaxed/simple;
	bh=K/HwR1uzQGXftxRQytFvuNRyI0AyCZi8dJ3PtnxLx/Y=;
	h=To:Subject:From:Message-Id:Date; b=oJX2pCOJ8HDd8ixU9+GMJX6bnflA4zkWUu0UKMjin9pGTyxAjs1isuTfkMrt4kzXuxGT9AOPiihnTI8aHYkka0XvLWZkrilfSjtXgOikDpjFp17ypBS2c+00plbCHpF+4M+k8oN1Q+qcpYfnlVelsYKNKFt5VFBw5jRtX65jmTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keKKCFR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keKKCFR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B27C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745448593;
	bh=K/HwR1uzQGXftxRQytFvuNRyI0AyCZi8dJ3PtnxLx/Y=;
	h=To:Subject:From:Date:From;
	b=keKKCFR7F1wBUG0DhHtu39JT+A+V9/Cb+153T5/J1Ljr2xW4XFjzk+xnQg0iRbxlX
	 vtTkO3dDiU3P0M2oEEFNdN/jBwc6qrRJ4XUpXxfhqtaEa9e/ZcMokHpuLe9UVZgwHU
	 M2gYZHVzhLNDt4Iku1vi3WUhsC4fV1GjRRcKjI5Awc6dSMPDzPxSOhTTTqbTpJZwC5
	 bcen0VqpTSStj6KeUi8QL5r35mcwDA2mZET1Bcpk0Y7UwltxRk3QinZCD1bh6vQ5rW
	 5FP3U3dpxIyDOgay4Kguk+5Gay5kfFWsdZR3dNusjoQQc8WtTlb72idjuMN4C1Wsct
	 UmO4nJ3zr/x3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E80C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544859358.25256.14742132237408706617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a1f2c77a60ebb542af48c14019d8fa55e53abc84c2a427f2996f2dcbd17df7
Date: Wed, 23 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745448593
