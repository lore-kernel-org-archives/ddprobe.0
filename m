Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9173DA7F8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329274; cv=none; b=EuOT4UhGDIZjMM/KbKavcPG66czO9nXzt4f4AfscGAJMu7PtDIM23A6tF50cOhC/jlk5P3Oec6PZkzZubXJN6ErEmbsFvg12aDWspoef7f5zVwo0PAYf2ypH3pH7rWWvRV5g2tFlrKVDgKplUhpda0/KBLhdQxwOymtO7GBT4bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329274; c=relaxed/simple;
	bh=ELbGv7pMWQNn6QQCDjOl/zTM3Tobln+tD/UL3PeC/eE=;
	h=To:Subject:From:Message-Id:Date; b=IVtBN2uGe2IaRXEJh5Q/LS/Tq0nzBq9i5aACz7rUbYKDpvkQmvRst75Cf6akvmMNIcEFse4Ruix228VwlM2z0/0oVg1DbqJXrKPFpabdOygZUvQPpQrXHfeuZd6Gnc4Txsjbuambc6J3FcdCsuVsv7cVkrdyqUkULzXpVVyAF3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlNH6C4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlNH6C4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9686C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780329273;
	bh=ELbGv7pMWQNn6QQCDjOl/zTM3Tobln+tD/UL3PeC/eE=;
	h=To:Subject:From:Date:From;
	b=IlNH6C4osVQ1W8xFCzFVVEMMCQRPRecFQSJIQgkz9bSFG9NfpOXrG1TD+Ej7YTEcl
	 Da2aRgZ7IsyMggJa+L4mmtOG61/VHghq6hytAjz8Ukk3cb6kJI/003HMtA3tRXHH/E
	 OYJhKmsmJwqQ5Bqp+ZTFA4C6EMXzx3zskLXC5de4G1wd35tc+trEXiPY1yfz0f+wCA
	 f+MOg76/wDXMkyjAmajMjehPFiwou8UAWiBw4PLSZE6tCyHh7SVneR8JpAL+9aAuXZ
	 DY0kpMSkFnFK/bRQd5xJhaKq936Sd9sRwXHC+sLSGpHoWmYYkIDzowGVu/99cD1FvP
	 pWwEl1CNRwFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C8CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032927371.20793.5697818676260333674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99960270867a166a3496167b89f781aca2a4a6af3ac9ca2b02a264d744021522
Date: Mon, 01 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780329273
