Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372054778C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724628354; cv=none; b=Z5RiIJy9VRYrp5DkMFA8b+63pLEju/CXx8sp0XxhzhgAgwmJZU6z/yiEkL3mkaSiUWIA7uu1CQXNuLJnQDwDLV4ItMA3CnG7Oou2AmPc95XQlcsPTfXhX/WwCFPMaioGcDu6KhlujqwZgJeOEbx2q1A64nT69OrOwx7JjYKPseI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724628354; c=relaxed/simple;
	bh=Au2AcKpAOo+h7J+e+NqBPQccSrUtvsgjyAc0DKj6H+o=;
	h=To:Subject:From:Message-Id:Date; b=dVpznblk3Nma3mmo2STtIq7sILhVzUoP/KV61EqQ2pCtsVeJBY5xctIC2NzEp2LJ8VZidVVx8jyGIcci2zaRv5LI6KmpKXeCMIsHq59NLqC+p05VYm1E257is1Q6IEk9PK13Z0XzpnAmqrUmxknqVo00gJbbgimQg+fzmtCsM2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUaOauwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUaOauwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E4FC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724628353;
	bh=Au2AcKpAOo+h7J+e+NqBPQccSrUtvsgjyAc0DKj6H+o=;
	h=To:Subject:From:Date:From;
	b=KUaOauwjIDv1yqXOD7f+K/KT2Yn+S+IAqFsn2Kd46xPj6s3zzwbilVvQh8kfRJpon
	 AIrkn7Hcn/q+KS/NFTY5WOhCaGqy7phSpellE8ME17cXiFHjOP1Z1nYxniQb/eRmtT
	 xik10ZJu/XUXD4EKmOLh6nTOMunw929k+1CRHmz7DTBGMNdy3cjbB1nRMkKiwtZlNj
	 /BxV1+0XYXtUiWVE8WTqTNZZLZbL9127vH1tNe9s9rKdQ9rPrlLX2jY0H0FmuOEEnM
	 dB/zr3txd8UiDgYOim/SdYGHKDljrI09m9Akilth6vD9sXY0munlwuNLlUWmhwS61z
	 6hfZL1/tqSIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DBC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462835360.22424.3466420632287815787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03029e9b4e87a0ac7ca0da46904527f19f16f29e707932b8beddf3522c9b122c
Date: Sun, 25 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724628353
