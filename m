Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DA22459EA
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781187394; cv=none; b=LVqDgMUvLpz64o4XoEwIqvdYDRZVvKTLkKtU7JuT3fdDwU81tkRvHLBbyRXzdTHfdOtmWNnbHTsK6ZdZS1RYUGPTzz2eZeUBJWH75Z5VL6HePqsyBHBSm/fypTlnGIlxxqHYzhu2rcsqscwOC2cbghfEukCkr7vkoRqo5qb86lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781187394; c=relaxed/simple;
	bh=N9Qmhir/Jqt3nPBi5ibk3aPbMRy/8wbulFaOy2Ney/k=;
	h=To:Subject:From:Message-Id:Date; b=RTa5Vh9azifi+TeKmvd/nlWNeOuLSQ4261ZR73PvFdfJ4IhNyngC1QElOl+n3FtSS1n8vM4jCfnIuUURmq/kg7nU0N+CHog6guBbRhGhOVG4bSGtb81FqCIa5afrKo1HSwyM3l1ddGk5sh0b1dINBVi8RL8a0P4FsN6wWd889nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbPYK9Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbPYK9Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A44C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781187393;
	bh=N9Qmhir/Jqt3nPBi5ibk3aPbMRy/8wbulFaOy2Ney/k=;
	h=To:Subject:From:Date:From;
	b=kbPYK9RgdSZ+Bg7tzsV66P7Jryfg4O1I1NcE1mowouaV2f+vC0s9pvdSHfwE3rHM5
	 rgUJGnTin46HdoaAYRAjZCQ0gAyEdVOTehq+axfpn6BIIpA2QX3yaZP0umpjWJUBHR
	 i4KiFuPPWXLcw9p0iUz5XwYq1WgTIh3MNuPgdaZk9A5iAkBLiGGWX5yyc2Wb2VOdfD
	 GGLjLHci5BQKU9W5Su7Y7zKCT9EKot3t5zVPObyGfLYFjx7Qb1pQ6ODDQkw08PZTAu
	 +9kesSKRWr6VwN5V0N8ReGMOS8iFn381VCBCZHB8V8k7E6q6RVCNOxKz8X1iET5VZ5
	 AiVq1Ih63d/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB69CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118739375.6633.11704075193143249187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79d8ba16d9c46c984bdc70816eab2a48724394b091091d6955d2b506a368e79
Date: Thu, 11 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781187393
