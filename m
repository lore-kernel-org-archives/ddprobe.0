Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AFE33D6ED
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784365114; cv=none; b=MrK9JJEfkMXCe6/VdAoExqkRpPWnBm/FHQNv6EhfsDjSh2Pi8YNOGQB3Tih+dl3ufl5zCD6opWdgKRvuBiKOE6kyAnHU+FsVXQ1dr+hTl0p3rIh4PFePiu8Ak9Z9sU9r/wn3ky1/ZQg/y3c0vBgl2Vj/vqRYv0+hKuasmcT/0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784365114; c=relaxed/simple;
	bh=n49jYVWWhIZW4YpuhdcU+VvxvTRL0YSQ5cu532iAtU4=;
	h=To:Subject:From:Message-Id:Date; b=Lz698177kOawG6u63K+hRgf+pk/uKobLfDmuwFhdGsK7nEK+7zB7kRaf+u7M7jEH+4KQVLFde+7eESxszX8SG5UF363fAld1QpFc/0OFHxNNQeYOffqYFs2Qf1ET/NKZ54rOE1d0pf6yqNktR3iv1WSXEgGuK0ritRVcBhaABSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5H43iIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5H43iIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F2EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784365113;
	bh=n49jYVWWhIZW4YpuhdcU+VvxvTRL0YSQ5cu532iAtU4=;
	h=To:Subject:From:Date:From;
	b=K5H43iIw/fGxSVhmEWM+8vQOiNjfrADFvY+0/EGIo5CV6wthtvJCi1Z/09M7J2r9Y
	 gEc3PgPFAPX5TjBPU0RZHFPlIgecPoPPxzm+zMtFAeRzKJ3PPW+YSdiQ3/CJCUwgAR
	 vE64RLfEVRQ0j4lsgaQVRu2abYSZnMb6Emh43jOHqTtFLDR8obFuOPLdPzqj5rv0Wx
	 si+xquZE9VBSTwzKEtO6vzEpKZacMScuvWjfufljmYtvLSqHZQ8LOM2QFX9e5QnK8G
	 o1w0p61KhzMhCaTMfVFTBD4m7fnwiXX7hAmD0QAWo1fNQIFq+CxIDbQ6nvvkZO6psz
	 VBmnAkZwUJyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D43C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436511373.29903.12461606073071529782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d9df6f178bc7733965706901908732cc98514f4fd8ba5bf3cdeede1685cd7a
Date: Sat, 18 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784365113
