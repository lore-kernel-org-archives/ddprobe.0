Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AF22EB10
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747018794; cv=none; b=N4ZArosXIgLSgogvbhRD/PSCvm0oaYjucTucwcC7jAwmLeq83UL3DabFvO7uQrMVYgCP9Z74uVx9LBTSj3E+20f6jV1BLL5PrlGtMEaahf6L6lRGQ9l/nqgBiRPfeU2lB1VT2qsqMzo2UOGF+jKB3TnIev8p33ZWU8v1kFnPIvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747018794; c=relaxed/simple;
	bh=sK7y+LEHZo5gyZMA9gSFzbdBDjyGIP6oOrafgLIgCNQ=;
	h=To:Subject:From:Message-Id:Date; b=bnxizTyIfTCeSQrpgDRwGJrvFGe4xzlQSUPUtG0rjJuqbczL+6a4x0sdhuWQDg/Za30n+tlQDj2oVpLOOgoNSdr2HUb/V6NN9WkVC6m8h0UrLpYFYyT4Mchaf46g6HFD88CRDceA+E6KRX5IJrYvBigOBlCEb3s6dYYXTJKl/X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRinSAub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRinSAub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747018793;
	bh=sK7y+LEHZo5gyZMA9gSFzbdBDjyGIP6oOrafgLIgCNQ=;
	h=To:Subject:From:Date:From;
	b=DRinSAubp7DUVUyg3hmqOtneeXQr6LRTgZB+M4UVnup64UH9vKv1qvYxyNiJ2ryf5
	 4s9pr5ClDnyA53XMbQeqpi7rye3J93i37N/nCxbUneMFmfOCHKEB3mBhOVJJGv1S80
	 sp+nGyRrPCEJzD4gz0XolDizAOyY6LsKwGsnIhRksTTr+ts3zJTRz3n7yGQSwVC2Pu
	 bfgyIfaGOVqFB24aOpxt+L86nWnWzIMK1IqMxBTbVsvTYX3AI2chxlcxh90n/ANknW
	 WjEm+8/RTm5yLl0XjCcX6pzGpaHQPX3JlDQMZ4XkaiZHrz/LLZu7mf+jsgdBNpSNcU
	 PpeiiCcA/sAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE76C3ABC5
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701879357.16163.8307163441965131522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a1b8f2788373fb2ee7f395d5698a70e795f1e31d6122a248d578b42839c39f
Date: Mon, 12 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747018793
