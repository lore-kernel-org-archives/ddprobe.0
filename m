Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B02E7162
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781439394; cv=none; b=gUfu/H7Rzj5WyYFLlJUX6O7mWVX/Rx235OpioYt6GPLtxJ62XPkAY1ebeEVYmZsgPQcQn2HKAC9yKPHpGCoY0klLDgBfWTzZyDQBwQLqD6mSO6inzneitg5COdPa5uRKX82xADTJ+lqrNiYSkuLeMWMhfELvVZyojlbo5wG5uIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781439394; c=relaxed/simple;
	bh=+PMWysqvX/RSErj7CKAlRKLRDVfbGHuX8QC62kEHSEI=;
	h=To:Subject:From:Message-Id:Date; b=YKYSxx6A1HHuPKFL1mIMQcalc5sZ4/k1G+CCWYDHRG9FEDnCdxbNaV4zNSaj9nVaRk4vRx7clH4J2WI6kdZnPGG7C635/aw68YmzcSL7qiBN5BS1/L+TpLmew1idvC2uBXvTjSjnyiJauLjVxDb/2C4NSFEWQI5UQqd9BFS2pBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmuaaqVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmuaaqVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88DAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781439393;
	bh=+PMWysqvX/RSErj7CKAlRKLRDVfbGHuX8QC62kEHSEI=;
	h=To:Subject:From:Date:From;
	b=UmuaaqVsz9qd4a36FpWidOqAnlp1bxAjj8ONOrBJevZTu88g2IfOEF4qrIgM3tN/c
	 iD+hoLX/UTayWIPRJldlSRqrWPCtn4G1HvRVm4gK28R5h8vQPC4/fQGpi+YZJk/5Ls
	 0U7jS6Gq1R0G0K96YCV/0AeBGOVlPyCjrmkiJv8D7RQSYce7r9b5ZpE+VAqE7Wfuif
	 GgtKSE0hyy5190JuLtXTLGBKhuSdearLKG8ErwmdHrfa6O8/XWZBWclGaU4QDwcSZM
	 ItH8PfbsvWcgezhzYvg7mRDRbnKfCOOqjEy5v/qFt7JxVdmR9nNzf90S7/wmCKf+7Q
	 xNXeZoGi9ceJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3923CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143939370.15022.6438730352387944231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d496f19258d3348fd4f3420d5d97d7b84f569d0f967007c3923e0cf794f514
Date: Sun, 14 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781439393
