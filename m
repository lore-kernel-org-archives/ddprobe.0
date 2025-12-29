Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383128BEC
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766973835; cv=none; b=c2vDPjlptAhTEGlOKm7K7MBKTCxdllvlX/xFFcDLtsMo0U0r/PdUByD7TIC5TBa4ewouTRY+rwkd3OkIsSyAauWAIpgvHSnJMcpU1GnDYPusiE13otkhLjm68/E164VwDW/D58q8+RW6D6kYF4/eHvFfJheFBiln/sr765kIM4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766973835; c=relaxed/simple;
	bh=XiNAThv4f5To+Jnn/3uh83yjOChG1PM3yuWebUO/204=;
	h=To:Subject:From:Message-Id:Date; b=mw25Wq89/tbVCm/70XDUncmJnqkHsvmu7u1PFG47RXWymkv3ND4k3rQG9TYSR1+kbnLOei3JudKG+x2JtxkaNwRxdz/ZQdzmlngXkWFU1evSeC2MjbEs5iLnjDG6Sp3drOfl83lBrpEmdQQGg6UCNcAlwACInZ/ZVwy0YvbTAe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V52TSOHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V52TSOHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36EBC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766973834;
	bh=XiNAThv4f5To+Jnn/3uh83yjOChG1PM3yuWebUO/204=;
	h=To:Subject:From:Date:From;
	b=V52TSOHDx53RX4GyB4e/sUUZd4ImsRLBISXzX5VMXlz334mZHk/Sw8uzeMGJ1tvTS
	 imNEHWtsdZvbNMDXEtQNUgf8Iqvz90U3YYIH3Ntf+qunTaSUZy3IgPU3Zso3zBfpme
	 5aJxpiqmfzqkHc3cZPE09mP16rufO30m1lbsgHA2P3wahzHRiZuGhYudXfx7cJt/WQ
	 ZDBcf+KNlSrfOVZWXkIVEqOZG1QW0gZFgkUvF7dxgYbsmuiXuPzqlBNnHlZg+5EjHl
	 l4oTBzpvPBIiYRYgOczz9T4eUyUOXdi1ghy1pYxTgt8PLnOTQJEaGLWaQpcCgQSMSX
	 croSf3mGQhLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998D3E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697383360.26593.16902108957182341367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc6c1e533a1efef6ab8b3b6a34e4b28393c3fbf14e246e2c814d7553b487f0e
Date: Mon, 29 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766973833
