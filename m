Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A8319479
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717436723; cv=none; b=b3mMe94Z96q1K6gPA0P5zGPf4sRk0axvzgisbSWkwJoI3cg4W9jZQHHjiPrJyUvDVuUNnvZobtc9ZwpU2XfusHP2Gf3qvlF3vduyf2dGaCZG3mfWy59Qodd8BDQbZhCvIYu3pK5tAh4rtxsOgqxZoDBSicdoYvWzZrT3mOsWXwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717436723; c=relaxed/simple;
	bh=tAWLUOZxNO+JfXt2qAPiHLGmRyN/DTAsL8RuWByx+jM=;
	h=To:Subject:From:Message-Id:Date; b=dNN2kLMhV0IUoiO7X1sEELkkIwZQBxfztTJuCJN5d7cKD9VOy5MoipbUFBTxg40ctd0x+GHBlzqFCrNnrOv/YaJNjeLcbyMaY6qSJZIl6DsywyLbCDgb3YiaEVCvTmvFSFWQxEKBAuUD6njML+C6/f622azpvrngMx6z1sDG/hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCXNdJZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCXNdJZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E6FC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717436723;
	bh=tAWLUOZxNO+JfXt2qAPiHLGmRyN/DTAsL8RuWByx+jM=;
	h=To:Subject:From:Date:From;
	b=WCXNdJZO567MojMJkBbF6WhB0PG7MLFDnq+xJPdTDqX++9OwDKR6nDklG9GvEfie4
	 PXN6ZK8LnveitqGbPTPnlGlGo2QNPaDE7da/k/Uf+YmsqQReTkN0IrzsRky9wE1DKI
	 9DQVWuhy7nsvz7cgrUIzbwmoLWHfHUuykUELSTewJZVscp76vwzR4ttr89vatUUlWi
	 SGP3nE+qPmRonk27hZ9twE0lAIhdEJrsRbP4B1YH0ylG/+d/7A+Y5NBSHVN2fIJXAX
	 rovV0F32lj7LG2LR2tGeOYhfWquv/ov8SEbNuoDyOtXp6dP0OxXRuZwwHyaaUQ2GPH
	 Qb7BE2WCQL0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9E9EC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743672282.3287.845243312246441154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f4c3dde7450591d77e04f58e31bf7aa354de55be737d3ef76351e9dcacbc6a
Date: Mon, 03 Jun 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717436722
