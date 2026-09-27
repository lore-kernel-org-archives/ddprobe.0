Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1053CFF6C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790511634; cv=none; b=sH8M6xHOuVwvTkFZIcpnD1nPjPcsYi6u9ifoAn09uyqhe9o2G6Bunn16onWKuyJYk7WuNCypoIWKXQQx7hf/FUuJkTsTl+s9fwXc43TcYX5istfStNWmN8hBYaN+UES6w38a/kuQve1Z4POFAV7TR7+W4Bn0n88M1a/UwobqV1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790511634; c=relaxed/simple;
	bh=Qdxa2a7GcVDuoq7E9+6XlzIvmq2sl8SbQxkzQztLb3A=;
	h=To:Subject:From:Message-Id:Date; b=czeCx+kf0JkcmKHAvcXKFa6mMmaLHtPptjYCtbI1apzydJ0tGIMXjWi2Ah+Tlvg/27hvpmhuFdvHpw7BveiLl5f5QUyKhnkU5ZK4tyml6CggqhRrMLhxpDhoRSDnXFLhTHNklzRGtf6syupEMWPe4H60HzZzDJwmeC7VQIM6UHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr7Op2Cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr7Op2Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55A1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790511633;
	bh=Qdxa2a7GcVDuoq7E9+6XlzIvmq2sl8SbQxkzQztLb3A=;
	h=To:Subject:From:Date:From;
	b=Gr7Op2Cg4PWIi4VMdFgI0XhOXond6iAULegsduLnxeogEyik9axxuytMDpba7p1bd
	 1G3zj3hJO8sfjCssAGnHsiNnM+kfS2u/0XQmNb5UlV6NfjRDG9blOQWXmdFg2AeUeX
	 yeTMvrwhmlmNn+RqDjCGdb7xcPhFuF/PgGfWN/EqF/1ZE3q0QEUz0c/g8DpJ8LMXVA
	 R1zFxD3Bdu62SSDEhYZXP32cCUsBGD+nOMKDDQubxEHcKhGaE3JAiZzRXu2zveRcbE
	 QdZRV6gRshp2P0ElNVC/yQpehnZFwAJZcClehbxm65wdH7zzhEcc2rhrw1f+oYloVV
	 Dew6w2xE6eDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B189BC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051163369.5187.17152721911408088119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cd623f203d540c746b115fc1bb38970f737de0aa6113dfc7dbcd61b3be6948
Date: Sun, 27 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790511633
