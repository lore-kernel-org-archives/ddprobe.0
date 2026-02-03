Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7261F471F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770143034; cv=none; b=Iy4a6EjWjsRQB7414POvXbCM/33kQp1r2WyT1Si4DVYcjAxVtt/2Y0rjzLcQipK67JFnkCs5Zbd1VBNldls8/Ad5DXO7GOWTf+p9IjGTg/ds2iIOfSvbZ0271YJ75BYX2qinDy6tIcPI2myoIvfkHxmGepsw748ZX6krM33PVZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770143034; c=relaxed/simple;
	bh=/QsvlBaOe4w9g1RMB84JzCm/Rw2Z486TaOQNkNibvTY=;
	h=To:Subject:From:Message-Id:Date; b=Ee+fNDoSp/Z0Qw9KlWY91+xYvIGamIjwylU+BGK1O2z9nhahtHLtHFJsqQlIGA8JCnEu+P4qikxZKwxfrRP2wxlecT6esnzJFQ9q795BKqgdX1bFY5fdgd5zzBmI7fuxm2PcPMmO0/OgKZ71Sgu2imdDlbSQV6801P3d84szqUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBRIKhhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBRIKhhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D16C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770143033;
	bh=/QsvlBaOe4w9g1RMB84JzCm/Rw2Z486TaOQNkNibvTY=;
	h=To:Subject:From:Date:From;
	b=VBRIKhhMQUg9A2fibduJ3MmrCBFu0O0l7yYan/LY+P9Ip4imnr6JavgzpwO93NOoh
	 AWkGA5pjPfyzFAJBUL6JOH+6BMPmrsBiKAShekC6ZqO2DAxvLOwkvplqY/isAWGD9Y
	 FSQJOsqLIwG458iOgWq8qg4lBgcq3V+18vn8OMDWP4XHmrKpiGzdXvyykUFcGQlqZ5
	 ZmmQsMs7m3JI5KKq82u8v8w6txnFh8piF9rdQ+1ORjt1gpfFy8PvUtxpig2f+ZRrPz
	 0Xvqq6qF6oL+b7SxPFRfWBJvxcDfGmwJJ+xjB9YR3I7vazziw5uWl87A41vr3YEiz0
	 ue5FPFasqvMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98066E87855
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014303360.25611.11297881377409507865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75c7c41c6de9bfe062af21692a6bd84d05c062fee88367bef925e730e2bc47c
Date: Tue, 03 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770143033
