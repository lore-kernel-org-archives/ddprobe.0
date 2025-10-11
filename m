Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD5121D590
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760179194; cv=none; b=UFVbVrm43Mupj4L3rU5a7D/c/1vZ93UYGldLYg5hZu76z/ai0tfyHk9zM4ZUpPl2zXNHNsffcvNlfSh3jQAYpaAJx6V+enB1Xsyrb54gTQgFm832PxlkDjSjuP6Gs9u7pNPKDEYCrXZC8l5jzbyvOrFvpBg9+3xXCct9xguwgQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760179194; c=relaxed/simple;
	bh=RnpDUx/iDxL0EZ0Ltg1Mmvknz0rGOFrNHEEJgY+4BQM=;
	h=To:Subject:From:Message-Id:Date; b=gz2tt98XMcgLOJTJAyA1gVUGaSmmcU6OPB1LNcgrtMoSIZFr3wtiV6bAnGejHbyXkmAQkKRk4Sl1vS2dEnoFpnp+PKfawNOspI08k3hLtCSVQ4Vkb7eiKJZd2ptT7yxT7bvuhshp3vg8fMd92yLM9wipKj1ZxqI/jvsROOhxvjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuX7EWBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuX7EWBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC7C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760179193;
	bh=RnpDUx/iDxL0EZ0Ltg1Mmvknz0rGOFrNHEEJgY+4BQM=;
	h=To:Subject:From:Date:From;
	b=MuX7EWBptlOGidWNVfE4pqU2JrRcNOsPecsTsDlV0hZOixtJLwJWU35svD3vH6k50
	 r5TNZcK1sZKvauEIKm59UKVDmgpUtWWJc2jnZ05pkFN+aYb9JX7i0pd/rwhckeZMGO
	 ism9cO26kLm4reh756oDYjKp/kkIqOGDr816vRMQS/heQznyuWFPb70CVeI3uWrp6v
	 bdZGFpuUBDe5MyFWn+rXF6ttwXeImESjeNfogWjfB0cpg5m54QOKV+hOHxJThcA2Ph
	 uZA3Z1vzpue9FWLOf8DfWPkG7cCQQIixi3AHzGyYPze9FlGRxbLEvobcO8H/o4D+dS
	 g2xvIxSgXxvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C61CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017919357.2191.1997488820028114306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd67609c833a4aeca7839ca7e891f715077b4e4b34a8cd6252abe52d903c633
Date: Sat, 11 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760179193
