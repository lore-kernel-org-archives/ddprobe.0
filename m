Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4C9348C4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784377114; cv=none; b=AWVuMBtpIDFHPHVHqq9TMsuWEvNbfX2wSm4vYZ0/Cxd4aAZFR7Jj3RNEI6n7p8/q2TWV8p2+CG3khQF3KnxoncOvDepQkd5nuahgMwvpm02G7E80AqCw1GGhXJpi/ENWH/cYrTdMdgwzmzVD4Tht303FVp6HPsoW68A13ULJO24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784377114; c=relaxed/simple;
	bh=y++/xOrOUYI3wCxsJjXEo/JKkCZa69wTOhzI5XxHRsQ=;
	h=To:Subject:From:Message-Id:Date; b=llZK/l/5/GAZi7y1GoE4HUhwPOYjdwbF7Jcoe8t68MG2mok9RS3VJBgz2UVP6KH0OjvLXAA9CQRU9syVQ064SzC+oWulq0BhGNHYbpXtVxcRV+cyDR2DlYYrUtoWKCpGAeEkyB6ACyG6sR1cRrTKZj9lSn9KXavSvsOGKovNO+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmOxpru5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmOxpru5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F9C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784377113;
	bh=y++/xOrOUYI3wCxsJjXEo/JKkCZa69wTOhzI5XxHRsQ=;
	h=To:Subject:From:Date:From;
	b=LmOxpru54uDKnpEYti+4XiXO2Kspt3/GcKuOzX5+LG0s5CSBlbJgHkLZm6EEZgPEE
	 E2Rtr9X+V1Ye5gJC7a/xJq0pcesmbGmh36+CLH76eBaTDbSgquNQpfX4QrVpahogMH
	 zMJwBBG5+3Zl0SKwd7ftJmId/mif1B/psDV2xrG2yDt8irnt3ZUkvNzSmW2VLobMg0
	 uAb7bcVKXE9IYNNNqMvQKgCy6eBDZkC0msCpKebK0fnoe7TfwgGdle08YYcrZstteN
	 MjYGxwC7/yt9A/S7Dm0HjO/xxDWWzUL8GIuSgm6Lrp8yk8b/WIngqN2RO+e8nT9zmi
	 hbktmZ/s7oY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE31C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437711368.32612.1505489483437947983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69786791a1de5ebf21321ba3c066db121fd72204879cb11a2aac96609bc62618
Date: Sat, 18 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784377113
