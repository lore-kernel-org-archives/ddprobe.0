Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883C2940D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769312634; cv=none; b=oTz/hm3sZMJkYERsAQnnp4FNgFGGXFMdyVOmhn39Zkmh6tcYqeU47v5Sxed4aPNuUU2+OmMffGYqLeH2w7f8vYn2JniOwWnTe2myreuiDWZn1cSoeNZEBYHYDTXDMLwJ5w7L3qfYKcwASRzyvr3ovdfk6W7/NkQBKtF4AOxVcBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769312634; c=relaxed/simple;
	bh=fEpgt+P5jz0lEwMpdAJJhDZkuhyYWbaE73n/vYuUDRc=;
	h=To:Subject:From:Message-Id:Date; b=czEGPSxbhu/MOvUXu3uoTWmYXrOEmd5qtnsPR7GoVNvKQgtf/qKQK1LQTyv8GKs2BxzTvuloPTAmse9+vEQo1XzHIlXlTxgUrdcCkpqZv+TkJ8sYjKf7PcbmtpRDfV8GYt7fYDnizZWugAzQGb6B3EP7pOUNZtB8KCQs4/64nl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7bm3HN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7bm3HN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1441C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769312633;
	bh=fEpgt+P5jz0lEwMpdAJJhDZkuhyYWbaE73n/vYuUDRc=;
	h=To:Subject:From:Date:From;
	b=m7bm3HN4XyCaUUQaV4IQ7yUWCjW1i24FfgAkj7xX7sYVSp7URqwvLikxu0Yl1C2cB
	 4D6M0H2pzp7H3TD4k7pQOumHVH39fkEykV9Bw2ayL5VkDR/4vjjrKfyJiYZQI2O3+O
	 e8Gl21ZjX6V4g9wQ5Qq+PZs3R1Vt4Co7bJCv4wPHQDuXE4EjA8F4FtY/PBJkFwW/SW
	 Yo+1PD3GkILj+cV/GwiD/IhGuA9k3i+PKFSAmMFLURvMG5tjg0zhGhBOYdd0uBy6O3
	 tO91rMa+vKxQJLk1gol9QVWRiHucComvkn8Txq5rf8kRvuoKwnEPX7A7cFR1VpbZP/
	 PvTrkLGO8Su1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDB9E63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931263357.30887.14364515983287786673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0780f2eb2732327769dc563ccb2b0552b7c6eda5f50e8e565dff1d25bf07f219
Date: Sun, 25 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769312633
