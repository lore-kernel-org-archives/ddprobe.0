Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BA9149C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719354803; cv=none; b=m+XyIiPGThSuJXvo6+yncWYAwLPAXEHwPdz/TPQZXiUoGxh/X/UbD4EGyP19ct96nudSQZx1EergNl9KCWQ6NxD5VbkdW4j0u4ErqweA+YlK8zD4kaBQ/0EvRJuNXWLh6R39NuVzc5lsh074gllYyLSoNZJDfrhSaUT7ao0DEYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719354803; c=relaxed/simple;
	bh=2PUxsGjiXLdAAiPqa0WNLYrNO8ete3UJvYTFZz+Bx4Q=;
	h=To:Subject:From:Message-Id:Date; b=UJFue81x8Mo0Tyuq8jfSBNj/F7D7blPWPHENyjyTgRo3rmB8oJEhkiPvhx9uIHgmGGcjje79YaM9hDItEeqi+PbaOJvidnKYjqM1rDBlIAGOlws2MW/dm7v4iQagRRvYT4QuAJ5ZPUec2xhu9f782EnmPtmxwAcH/XYycUBubmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXGdP4rE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXGdP4rE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EA3C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719354802;
	bh=2PUxsGjiXLdAAiPqa0WNLYrNO8ete3UJvYTFZz+Bx4Q=;
	h=To:Subject:From:Date:From;
	b=bXGdP4rETdckotpoSkJzD0Z36uKjHEXgex+Fmofa1wGFo/FS6y8q2wZ0y7oPyKM9X
	 3+Px9jf5I4Zjcyr08UYjRooYRW+K5MQTPWHxsqRLRvqA8QV1Zi8WrehXIVSvCKqCT8
	 15fvsuu9RIen02OBe7k5iGQoUZK7opKN6vW52yAptAuiWUOpl8PnX7QJ3WDmNpmrFB
	 AuDuJJTWfKBZtmAv1mkaPtf3kPKG7dunkAXphxATFTKcPPNHn38VAFQb3id/foOzaK
	 O9/jhplOppPCftOLlpXLovtt7VCfCr3hxqVO56g71HMd5SNwEsF9efak7V7W95p4B+
	 utuNucBwGrHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F3AC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935480279.18904.7470261017957629023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4160428ef9c3406ab65d318d5e56c1496d0f2e8b53987b09349a25a8f0def8f2
Date: Tue, 25 Jun 2024 22:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719354802
