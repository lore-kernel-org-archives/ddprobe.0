Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B634FD78C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790061035; cv=none; b=Ak0IZNNUMj3llM/q74cLWDTJsXH6pMONRhyZbxVb0BRycNhL0AhrWHxFef8xjm23H8xcmukDvSaKX+8ckmCnJ/UiSLBmWMaINZ9oHu3wBuSHF86gyIWLvMnhVpMdfdzWPXcK1bcipcbzYlDTJrJrljRXTf6rux6tLA2rA8FXVqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790061035; c=relaxed/simple;
	bh=IeWMj0romATNt7muzDG+Out0v3tPQ5MoxTDoNUbkIP0=;
	h=To:Subject:From:Message-Id:Date; b=MydbTX/zjSa+US3Md/SCE9pXf/2UzuG3T86Z5GAWDhHp/JKeV6dUsk5gOF6H01rk1gfZVtS7LxNAjTGWgNwmzZXFGr+fd+qeGwUFJQ539MlbicSWghbMB0r9C3Zv4t4A6DctWJR/hZAb6P3wSf5lwdzzsPiD8iM4pmDKAE2F1kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvO5j3NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvO5j3NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8AEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790061033;
	bh=IeWMj0romATNt7muzDG+Out0v3tPQ5MoxTDoNUbkIP0=;
	h=To:Subject:From:Date:From;
	b=HvO5j3NRVNXfN02q2gLy0eIL7PkiUBDUVygkCqCVVAyoAE9F0rvk2qDwwCLNMn3Sb
	 ecGqwVNnzXg+cYB5LspzlWLV0U6aee4Ew5cAxkzenm+5RF7Hf2F9kF3X1Y73Docktd
	 pgVmGZg38XNJIbmKHu+UwIs4vZ2nY1spMeA9ZEGJ32+YqykUAWRvjDWf5eqr+/f1iq
	 vvtWnXIU7nzdFk2XIl7813ftcjmTpNnSu4G/ZMvWoYGukIlMERHCZxtJBqjLx1fHm/
	 ALf8Uqm7+mbCeMGryv2Rej1OnmxGgzV7bpKsk0rNwjfyjf4tp/FwVPy03ozj2iUPtU
	 m3fE740gySxkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2DC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006103369.27273.9905481812259150331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660db967c7fb6b0f24146c3bc61f54e82b0ad9120d75d5631b4c7f6f432951a1
Date: Tue, 22 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790061033
