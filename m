Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF600175A98
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777165654; cv=none; b=EYgMnaoClQ9/xdkQoOz1rpY+LARgFXFjfYROKi+dz3QvMgyW0kXh96n2FP+7LEtVSNM2PXsNAVtTzEqMjTB7fSC1l36KPjtpq4cEIaplRIy9YKPcro5XCb+QHGMul3krzdq8nuIlUUjtZ92tkBTj3APxyCbzoc30T17w12KV6PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777165654; c=relaxed/simple;
	bh=bI7H+yuLTh7o8OuhsmwAHaqnalWzTyma0fxi0onzfNQ=;
	h=To:Subject:From:Message-Id:Date; b=PnOMC6o1bxfBiMWqC5WEknqBCBY/uUR/G3Si3xVzDhMHoLIR8GAOZ3wgp6tdPC39iTEoG4CUj2aDcyrATM/dN5zKm2DuZVsiPAERbPLgYXwy2cohgndUZtIDSL8MbWx81CGDrjTxiK6VM+GNx7tIjNQrPGKaRWNvFU6pEx7z5MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8mTJ1SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8mTJ1SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0308C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777165653;
	bh=bI7H+yuLTh7o8OuhsmwAHaqnalWzTyma0fxi0onzfNQ=;
	h=To:Subject:From:Date:From;
	b=X8mTJ1SGwF40CLxzfqaYC/qrLGAvMol2OCfTVEoqGorvtyjn89QXcj1MFeKcVCcMj
	 AVIeerSt0WaWChpiOA1qJ4B+sZrKwuhPZKILKuXHFFHaxh1zfWi63n+V0AomYZ3DzB
	 /jBY5QkZ03+uUvx+z0DQGvNxwSeUqWRSFcqZATW2e2U3D9y0u/xsuxf2hUSiKpRd2E
	 HxiL6bLLmuwOnXGUBBcWJ1SQk7aSN1fPzDgHaUD9W9r+8a2oNVF/zdSFQdgJhp0o1h
	 4S/dqX4qyZyC1jnl3Xe7w7WjQPUzx9xVHKzL400FH+hCMMZLadzcB3DIgvERQl/lRz
	 rH5XNUr9yh3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3B4FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716565368.10136.9387373693862530880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4503da6b2a05ff397d1bce9e5b2f2d1627948ae4335b7a2ebad1a8821619d77
Date: Sun, 26 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777165653
