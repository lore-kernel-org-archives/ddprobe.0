Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA7233920
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780214674; cv=none; b=cf2FpfQ3+fepdl92BwEaJ2QIlrg4sCQu7uDmX1RB1DOndeScKK1ROqw2o27Mvwwfxn58NfWfgxM6nqY+cBLotAsgpIyG0mF3h5SQO1LYp+j4SdvDPFV8d64zuprosXOAoQ91aaz3BREj2qE7s/1af441qW/vv7gVDwg5Awol3IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780214674; c=relaxed/simple;
	bh=eGl1Vg7jqcF4pySgY7KyQi8t6LSm0Sf1YTdATqYInr4=;
	h=To:Subject:From:Message-Id:Date; b=slpw5yAen3RIDGJ/26/sCyYK/YuUKdiMUDYyHLuXCbsZdDdX1FKyT8eK+nAO1Rg1tACyN4Vk1YuGj+taj/U3g8gIOpdiMaIy4ESKIFFOQhcmCpgLFuezo9Pb6SWrhh13hVEfZOlMBfBhg/9xAvuEq7QS4yg+sL0V+MOigu0bZeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxYQYGnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxYQYGnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD01DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780214673;
	bh=eGl1Vg7jqcF4pySgY7KyQi8t6LSm0Sf1YTdATqYInr4=;
	h=To:Subject:From:Date:From;
	b=BxYQYGnVD9usYThffGtAQF0IDguPTVw8I4a9KypS8qlXSsOO76t+KsbWspSJEr6+V
	 PHyDCLjYXprmXk3RyWMCYcZ6eFs4t1GlkCwscAYxjryK4HGi4fCO3VrY+vbtE3VzLa
	 AT+gkFLYJ1iREs2AjIcELoXYsK4HzVL50U0XIrH4Z4ZhsRL4YUl6dId1BLxwEOrR8+
	 76Ol4PoMBdECs4C4xiNuWmRurdkZmMZjJ6m2HkVAB/m1c/NcDNuE+XLfwkvC/ZaReN
	 eWusWpVeG9a64JmaPqIF0MvM5ERhCeNNRqPi6cO5S6W4CIwiz7zmyqnWtqzl27hBgG
	 hUNc+jAJU4CCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169ACD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021467367.14884.5066505165695131976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450cfc5a17dd1e7426fce9f173ced046e2548a5e32fa844c7fe6a91d0f68d754
Date: Sun, 31 May 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780214673
