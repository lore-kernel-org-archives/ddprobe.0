Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FB823C4F3
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787758234; cv=none; b=tlQpQ/S5S7clMv6CtRUni8Ky6SSSk7EH/VCd08YBNJCmnXt4cQD35QdPB3eSu+3TTQ6LMmzfGMAATNadNExJBcMQm15oeBmu2EV6bpl4T90FVQj4w8IxXkesbhjzzIedLdWApiWdMt65QzMXqyEdC3dAkUSJ7nzZhD9U/dAlofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787758234; c=relaxed/simple;
	bh=Zv+Xdx5a8yayWsO1iPHH0O4I2OavxeteB99WPU8Rwfc=;
	h=To:Subject:From:Message-Id:Date; b=giCvJBBCop0toK0eDDfV79yTVyxd08sxyVscQdjg8+FHqa/5QqZn0zy6zkPA5A6LxUWgJz8A6c5AWB56RqXHzmGSzV8aX0Lts5jpFO9PihZ5qhIdqj7j5FGgz18pMIvp1CghjbYhQSh+qZKrmT5jUDqXnhkZ2O1ehNe6OUapR6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNHdt9ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNHdt9ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE158C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787758233;
	bh=Zv+Xdx5a8yayWsO1iPHH0O4I2OavxeteB99WPU8Rwfc=;
	h=To:Subject:From:Date:From;
	b=UNHdt9tss2bBll+IteytSqolWb4WcQGZVBE0u2+GxT+9gq0+fOGCRZsRYht6edJ34
	 uQeam1Y0QKbe0MSYSkuqKhT0af3wk/G9Ma7NvpH/DAAKp4nE/j3AQaSPt8Y6Jp4bRg
	 lQH1K0EiViVGRsi/sJAiMC+w2fL8MruMBAwYQBu8dvZVvGOVM5btgOAL74edkmFoUm
	 GS3WH/CPgGEddaCv3U1C2FiAgOaxLbcja14DM0SsIWgUbkKQlYYL2KyZZb2lfj1Tc+
	 3/dxmWN43+GIcwUajRUTe0UNE9IdIkdbFG0R2AIDY45Mgh9eepwO8RCGVYt88CAJZn
	 939lBsutYuxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB114C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775823369.2658.4860937135142778605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60324fb9b7393746c7aea57e7f9ba52015f11f7117366d0a33befd84b94e86b
Date: Wed, 26 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787758233
