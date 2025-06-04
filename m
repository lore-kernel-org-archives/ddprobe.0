Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336EC24729A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749023996; cv=none; b=mcKPterAluA6mltxURoso97b8COR2r7SxUWtos524AFvJ7EKP1a2thB8XPHwXfk+oZPoPicINk4mM3XdBjq+lwFep0jsXGCN1kqABA6J+u4AvAL5D9vJ0N8BHGo8+SutQZBKwAIa4x+BpfC0wL1MMA+dG1XE/T0vgIEvrSyQfsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749023996; c=relaxed/simple;
	bh=snzYoIxK/Gcefp7eC8trfuKqqpTS70tgkeYhy/g++pc=;
	h=To:Subject:From:Message-Id:Date; b=KD83qLe4KcaGtdsbIBAGTurXhUhKA/PQypICZLKCX2GI6wxGeTWHfcPenD2f7bQDbveAoU6IiBkCeU/w98qZpYMCALjfMm2DBIug2UBPVMB8yIhggeABjUn2NjEtgSc/Dj+4+u/QclUukSd6v7jgdBTfxgYAcJM9jiW8gs+Pi6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKJ5cvT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKJ5cvT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A295EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749023993;
	bh=snzYoIxK/Gcefp7eC8trfuKqqpTS70tgkeYhy/g++pc=;
	h=To:Subject:From:Date:From;
	b=AKJ5cvT5Lec2u1U8ua3VcjTuW7/G68zSfh74qwaVzFcAUV1fnOXyypderC5AyPTk4
	 +DQMLD7oyriTPj/LY2P3+sOI/V3eoz8m0HIYWEF8qbemq8sMhQ1UkZy3ZWvdIt1QO6
	 gPxLdaqAh2VVybgx+A9IfeBklAes/PPmBWDAEdUYFM2bH73o+7h+J1CVVCQbpsfa4m
	 ThVQlvJAsKYDH2F/47mdHYoO0NQdsVBN+s3ydTlTgRFwh+3EoVo/GSW/ve7N/XdLj3
	 a81CwLYAk61hU6rljedlvr4lyN3ZAmBjBEUnQIhmcWQkydN61RWMFDXKYff/sIMv9+
	 tH6kn47I/TQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90124C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902399358.20697.8982698662272242666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1518dfa5318ddda3bf9cf8f2db5e2fe621f10ef03d6e4a39bb5a60591337b905
Date: Wed, 04 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749023993
