Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F2D199938
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742070594; cv=none; b=hloyR3u/Mlxk8xY0yODo8ooXuMcmLndSU4yqehqfUM9p9yXT5lA9okM/6ja3VDToN+HXD5sQ9HdshULRHKcUOyetlxYpJMFxxSGNnSEoUzq2ZcJIPz8D42xQReBZG2OXKIuqI7+rD2qlc4bPI89OQ4TPGe0xkY3B8q2tiq3EmLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742070594; c=relaxed/simple;
	bh=bG8nHYRMyiaCzxBZieHj4l7fbO4fE1mtqNhy9exkA1g=;
	h=To:Subject:From:Message-Id:Date; b=YGXKxHD17NljS/4vMtAojeWFMQQdLASzJA6qkt4Cj2a2oq4LBSAFNHtrIlErZeVTGuoannCvgbTgNIyxynAIHOubaSh7gYAjOJp2B/tYQds8Drqe/ukl5fR3YoF3mAXnYPjc1wuST/FM804Ak4UrVdYOFxgq9quDt0BhXtixCEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGDJ+odr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGDJ+odr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0AC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742070593;
	bh=bG8nHYRMyiaCzxBZieHj4l7fbO4fE1mtqNhy9exkA1g=;
	h=To:Subject:From:Date:From;
	b=MGDJ+odrwQAuMVQb8+jki22c7sj7c9Jlwc5oRP3wpHvUVfxznPSo+hbTOqvVPZ9FY
	 bJ0imkiQSnoOrWRzkHKmVLYUqFETI+R3r1Y10yBcWFVJDPlWkSj9cuLz4ooEMVSjKE
	 3cNLmmpR+MIxHQyhRYHqHLpLgzXADhKLQp8WnE0ZZqooC22Zw/hy+2+nqhzPBXkycq
	 RN+XVFxYms+/Z71NdHx7ZkPZY3isolJ38PCbGvUwQ7d99ClqoUpRlyubXiyNJLd4NI
	 dnyLwKQbB8cUFnwEDks0GUZFd0r6DwB0EWHCljgRePQqDzeohov0S3nU0++V+jJk7h
	 gJtLA966EmaHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB8C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207059359.31553.10278928153916514409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16ee3881a0987fb77e5afe5395fb3b3f40c8b3453c44467cb798d091c61420f
Date: Sat, 15 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742070593
