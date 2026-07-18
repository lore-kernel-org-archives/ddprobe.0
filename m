Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEE3CE4B2
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784395714; cv=none; b=a73sy816XeueChjar52WPc8OtHpLcnywNomHo3KYnuy3yrkpXOZHjGY4ysZVjrUZNSe7lnuu/CElIRtu0Qq9IyVWalbOATYXda/2UIEaeyoS4NHyGSwXIY9EfriA6rh4W+2x4N5IYK1tsqQbuxf5/46JN1hbGZ3eEfQqpxDXtEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784395714; c=relaxed/simple;
	bh=KcvNs9qWFoSjib5+rEMQBExn9otVAQVa6SKzEcmMJ28=;
	h=To:Subject:From:Message-Id:Date; b=neApYpVgn996Q2WOC9CENbczM3E034XJKcxqwCTBdbXsONMLll+qOpKsTLfyUnI4fxNukCibDpJWDcm5SIO12SCwQ9OqBsVMwlbQIS5MY9DHMtcqL02QEq+0KiJmMPLboZUWwQfiFDDS96HOGDUWGi8R3l5+VJSFXMrnxs20hPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBtJ49R7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBtJ49R7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3245C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784395713;
	bh=KcvNs9qWFoSjib5+rEMQBExn9otVAQVa6SKzEcmMJ28=;
	h=To:Subject:From:Date:From;
	b=GBtJ49R7Skb3RLvKoQu6lRfy8UPkx4GnosgdKdjMiQcvH3DTIvOqABgHd157MNhm9
	 BXOmQlZB0DaC7H+4Jc8v5XdGr0pO/3/Ym770PYptvg4YU4tK7uJ7/u06Ut7VSERGpv
	 NJuTYtnLnzAzH1dr0ziNppikJ2siEYsiY/2M+tU+mdgRhshMCO08pZGQgKh2DTFx2N
	 MtLJvkSE3lj6xOJfeScZhh7EfFa3w5e96nxFfYrg9sD1zSv1ee85qLcsuBZxEK+jbF
	 AxL7gX0c4yji0MvCB1IYr5zGUHluKhrZ+lRqi9KBV98NoezMQbkwJnHYtEQ9K/yIEf
	 5F4vMBHtVSFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE02C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439571368.26975.1005940229835423823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e42d9b6cdbb5b8a0f78fcc6010704d0b85c5cfaa9549b2c4114b5c8c5d0f11
Date: Sat, 18 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784395713
