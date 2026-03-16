Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8A33EDABE
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773692694; cv=none; b=OJJ9c96wXfDSm+8vwYIz+Q8Uh38eoD+9D06wsxFpdGvqZY9o3EeBB7bVwIGI7wKTlKOx5bUdVndlZhyWBZPqVIFzg4rg6u6SK/bHpj4sFmYJe6svL/G7SEEzsPFwMLaE0/FCi2bvcQBwLKKLDyBFLN6MgXupb7SSxBtVb+HwrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773692694; c=relaxed/simple;
	bh=HCpFD1kg3/XzKsNXfkcKl0lEYi4TcUzUQQrweF9nWZc=;
	h=To:Subject:From:Message-Id:Date; b=dkRds6r9O3XkiCWgLpL27mzsSi3OXTmohSot+Y5S57ONUz/EsvT3CzhvVd5BudjB9MWTpVRtXpOc6c0qHOAsztIKjNWnfvqvX7W+Y4Jrp9/MtkfvbtnU6wTCtl/GhXu/e8lqG5VIxgX3C72HeS0g8Phf+yX6vZ1Bg2GRk1pYxyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cz+rsL1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cz+rsL1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D4C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773692693;
	bh=HCpFD1kg3/XzKsNXfkcKl0lEYi4TcUzUQQrweF9nWZc=;
	h=To:Subject:From:Date:From;
	b=cz+rsL1yOrWAGy9m73FW4f8M56qaCRWI7Bxo9B8SSFaBAL8RpnYWvYf0QED6wuP9u
	 Io/yd5/8LJcwu7nwWqx/zL+PzrBTaW/5G+yY+IPQPTiMTssba9aO/D03EojVCT9hdu
	 uKX1bw8F3P8eAJRuxEi1Sf7khHHgqX/SSeIZCBejUSaixDLwLc/M7nxPpCq73NEQGK
	 FR7vILNfAXnbiZUx2zVS6TmLGSa4/57M7U+jjeP5C3FacHycZL4bND5yHchKz+RmMD
	 IE2yhNncv3YbjfrYttAlVZH6L3cpHttZZ1nV1DUQpNi4HFJglJj0U3ILodcab2QeoQ
	 pKLHC4R4LeRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D60FF53D96
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369269361.30885.353265388107867613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5ac0f10d3f7ebba917c4aabde2c7338c4f1e9af6ab2af49b0733b98e0acf61
Date: Mon, 16 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773692693
