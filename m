Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5141F386
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718140103; cv=none; b=B4OigWUnNGgZNSNBfL5BFjSzBiqJG+/Z4uAwtbQldRx0WVi06T+0Irb2qILfOxQDtM2rxRwe0Cb9c6OeLCekTcNAVZ4uT2eD8xl5qo7RonpqiEl+vBVsBlwMXDsFugqaaK5VPbsN+64kCeU8yHtrEW23aKxKIHDMKFAMVz6F6H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718140103; c=relaxed/simple;
	bh=y1aPxs+dbYgmzDLOUeCzPy29k+8F9yp9Ctl9XmF11ps=;
	h=To:Subject:From:Message-Id:Date; b=PwCVlqGDSMtlfYDnXq5Sd4WzXU6KbzzVJNG4HamzgcCBgEpu5j33EUmoOdlqAa4tGmH3ERcEB8t7ClEoH0eDJJcmaHZqYBEn/dQZVT8jO4iAIerM6Z94FulL9q6JGMjGR+kqAMiuKD/Mdds/ZeydGECy+BqybjQdij9KFpbYG+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4KzQaU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4KzQaU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1B1C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718140102;
	bh=y1aPxs+dbYgmzDLOUeCzPy29k+8F9yp9Ctl9XmF11ps=;
	h=To:Subject:From:Date:From;
	b=Y4KzQaU7/hdx/xmwbf9XDVv83jStL5SyZFdCaHwuGYS17kn9zOcFXKWSGzFkCTHn5
	 Mt+ZPSxPzgJudEzfyeKWVby1iVQtQA6Cap6ipi5fLzwJ7e0Nuet1Fxy5A0VpdiHx51
	 3k5d4cPye4CnYAtYUKDOhQU0va4dzhceFxT77aQm7rQQE7P5c0l/YWOCyM1gX61GgQ
	 3ThYt9PvOyt5EAEMtybKeyhkmjtsCgnLKSFwtTvQhZaMgGxNV2W7oFxb/F4BUKm3sn
	 TIGaKIFjOcrnssl6Eku3mYbWPseBT0j541BD7iXkgQ51p2vIQu7f0Q1DsMFNdqrO3z
	 H7zoKU+FhKawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2324C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814010277.24842.16508840066473405367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d67db53e9cb15076093d83a38c1bda6c260766abbc959ab834fa2087a30886
Date: Tue, 11 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718140102
