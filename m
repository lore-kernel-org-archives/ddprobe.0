Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98579CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741477734; cv=none; b=DVo1epqgcvPPrYUsxRV2KO5i3KmMTgDv4jBpjRKxYFQDNbZ6OB0WA+/n507GkfDiDTY20zzcnXeTKkbBYLEb9O4w3BqKI2IXZe6oeyU2CsNHPscXAeD8fbKda5YnwXS+Y4f/h8Ijq+EcKeRiXNDslSQ72W7P2k3BWRW/Pr8Q1Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741477734; c=relaxed/simple;
	bh=AARXrWaUidKyeiiOXJAU7fmTkGOHvrdKmJLPaCaaVB8=;
	h=To:Subject:From:Message-Id:Date; b=dwajKujLay31AufEuXJt1IqczxxJGhnfv41WqiZBgKTXbUHhDl+x83+1rNbIBEDpcQzCmFSwnRi7x6ar/nYMJWYfwKNgn2VQerO+CnBeZrUKSyci1W8Bh8H9Y3l4N4m11QK0jh8nl9xUt9w2pI/5aDKcZRhBxCGmoA7slwg9HFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se1Bjdd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se1Bjdd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02E4C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741477733;
	bh=AARXrWaUidKyeiiOXJAU7fmTkGOHvrdKmJLPaCaaVB8=;
	h=To:Subject:From:Date:From;
	b=Se1Bjdd9LK1Sk1qBtS8B89Q6MPlTJqYlQ74VrTG/4ZCwaUIoGxV9+YM35A38i/VDB
	 HwlVk2hz3KKoMWv9Os8q1EOJkt/ZOE1uwmhxtz56xpxpspo9dPs2R3DbmiBniJYmcm
	 oZn1BpPK9eWqoLBCrz2tkDODbaxSSZeDzNG/SKrapztaFtf4F/MvXyHK3GsrJji/oY
	 Xhw1uMEznaLXMtB8rVTbTteG+EaifR5DJ27WEejVrc/wBLyjqgnxX4g2Pt2o1oZkPO
	 WsbJaOmR1SycpBTimafvahYikxg3gyZWmH8CC6S7x7L9qTaYz02H1ZdnzEimp5I3te
	 npXM7ewHuutZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C152C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147773359.7484.2431456061459404504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea9d6f1a9db13a4ee0c0a58da5519b40158a8bae77d2b68b7babfbc1bbe8665
Date: Sat, 08 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741477733
