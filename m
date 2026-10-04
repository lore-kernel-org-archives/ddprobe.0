Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F04D2773D
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791088234; cv=none; b=lINZQ+Aa94vEkZAAht3bO4TGdli7UNWy5WtigvLIvrsKTSYj0RIsoOZK4gBmg3FZ84uXis3xSti1iuL8GK0c0aalUk5jn04lrzqHGT1R+RSPt5Tme9VxmTmwcxH9BrMSL5n8A3o8wJW/n17AgyVc5ejVoCeFCK4KBtKkmXaMMiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791088234; c=relaxed/simple;
	bh=4tuPvLSgAQGvoJFcO7SBr/mVr8gP7+MMuUknTA7yT1k=;
	h=To:Subject:From:Message-Id:Date; b=MYsFblG74oLe0jy1gEquZa2UOB1DkZa3ho54mVNhgAI4uStknmxvFdjo3E52F1/TF9h0x6gnxlDaDCZTQ2fj3WJ4hRmYd+Cq+p2ogL5b4obVfo2TvxXaXy3y8ojzdQh/5295WKCUUM9yS3hFkO4WeQsPnov6aWdGfBLz2Sg6c7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRmG+6Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRmG+6Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A81C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791088233;
	bh=4tuPvLSgAQGvoJFcO7SBr/mVr8gP7+MMuUknTA7yT1k=;
	h=To:Subject:From:Date:From;
	b=sRmG+6MnK7RKuFaUhMofl71UQ6MAP1aOaq5XsqBPUI7aVHeMUiQrJmQJtGYnE2pcx
	 Ea4szen6167k9Ak5yKfiqpZuAVcmiZEnNJ2EFK4wXD09UinusZFlHkvtOulmqfZVSW
	 /lc3fPZrAUglm0Qus+TxYXvwHIuKmDLiuptpATZ75gqE98QXupd6VWtLpD2+MAyxb2
	 GrMAFfMTH2o6ygRRDjCkjON8IsvdkEFwZ5xrhnikifQp3RKqLOTEqXnI30eRKaBTW6
	 iaGifNuwMQhnlkha+dkT79gIr4TZWy1mHckAlOWtjPOJi5Ho/FyMLc1uEek6rCxtSn
	 WxQDbnZtgvRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7043CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108823373.32187.11673896795591591309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5b6eb386f934935854a809ef8dbfe61110401ad267db661712350a6370edee
Date: Sun, 04 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791088233
