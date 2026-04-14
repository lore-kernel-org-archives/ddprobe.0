Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2784C3254AE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776146254; cv=none; b=SsuTodYFfkuRk8nnzT7b7FDjQlhTlxTPVT+4hfJAPgPrUKnqaU2gWm7boJaLO4+fJ6wAXUYTQ5j2h/MjSaW5q0qxAhD454HSNaJKKVgX0/6iBwwBPGV/4OHtHZyFpS5kOLjivfU15wJWIRLWICH96+8SwDwdg7yeFaZXnrnD90U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776146254; c=relaxed/simple;
	bh=6gCJjk4CG7NqnQkJUPsd0LBUWqsyQt8s4iPdfh+xJ58=;
	h=To:Subject:From:Message-Id:Date; b=rXnA75ZJP+gYM6y+Jn7iysjhS/eBMWPe861q4enCk5nml+/7/68AHM2Yw2qOTBRaFLmZSNdBGR8QidtP6B27FloguFqnBMMtj0X8yQ302KxWIx1Od0yolIplGfmKio+DBe+T8GGolzqghHVcMoRg8kLR+ohP/WpF793C9dyGySo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH6ZQgPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH6ZQgPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD718C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776146253;
	bh=6gCJjk4CG7NqnQkJUPsd0LBUWqsyQt8s4iPdfh+xJ58=;
	h=To:Subject:From:Date:From;
	b=YH6ZQgPTyHGznOS1qmB7hS+Ri4gUpP3uJju4sagAv2ZLsTcXW7W4WW4eR/C9s2l5L
	 E5jl0DBIOym7RSXpvx6pYbyYjO+UhIJp5ZATjFGzwJI83MwG1PqICoI2UyOYf048Sr
	 sE0ZwHV/ompa60Nc8c27X311EiLIKkx/WmImaFVeYXUKojpRIigO2j6xV29+PvCPrW
	 Igwzm+utlbO1A2NqMMlfIE/Z9VEB13MH+VJdoXLaxssYyf/TVdaYfVjYXUTwuFVD29
	 2hvo4PNAsMb/69GCUSPos3adv8mZufdH/kzQWx9spkHFYTowTy2CY5r7vsFPgChQRX
	 2f+kC+/tR3mbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC469F45A1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614625368.25710.9596253581937828605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ddb3295d33691117d227176694b05f1feba4eb8773a115faec54879387a5b9
Date: Tue, 14 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776146253
