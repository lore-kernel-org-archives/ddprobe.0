Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C9272E41
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765999434; cv=none; b=En0+xvgMRYiWQr99fsGiBbR3ni8jFpq3bZ9wqn6F/ZuAlTq/SxVM9x7MsV6Gmt3q3AQ2fe1nU5AWAnnM3VWKxVIpMZDah1zK+FA1Ykco1H60sxrsBqyWAlvK2b0NkKZtX/yVZJlYCoxVcB81cVMTnyIUebQALlZN4UudF6delh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765999434; c=relaxed/simple;
	bh=iQ6R9vSUlZY+58vVmW82ZC3vR/BUrhJBla4/gKMjYWU=;
	h=To:Subject:From:Message-Id:Date; b=UcblesNaR+mba0lPJ17nqQ3wgi0yYor8+GUZpaTCtImaFkoVP3waEYXEYLbsGqCHW5n5bNdbDPs+v0IyeX2NafLiP6K7dDUVUbxVkjkkN8vhcpIwddNWKWlTBX0rFYHC0G0m4zmAu9slLnGbTH4gy61Nwo4q4ncipzevRNBa+QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDhpH86I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDhpH86I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765999433;
	bh=iQ6R9vSUlZY+58vVmW82ZC3vR/BUrhJBla4/gKMjYWU=;
	h=To:Subject:From:Date:From;
	b=FDhpH86IY15Jy9BS5Ji2Hu79nKsqU4rUkLEXA70DBwiLSoUMrdLQc4HWwBH4qOH51
	 JW3uEPhqQkH69+X9KJiXZMOEqD6DbzVzIN8tTloiM2Rs4Zh8HT3wA/vmEomc4UTbon
	 V36vZupyEog59wzINBzmV2uxk3C2N0ujVMKPXcKRVjb3SmAdZuxQJeV7kyBCNf0rR1
	 06DbN5JMnOZWLEXz8ZsaYSKgo+COElLIcLpcgV2O8vp5kr4IPf6dAckUA0rCK1yxrp
	 3b+d1Hp9cIWB0yUOa/zGiJSui2wOzQP4Eb3ARB1PZwlstLj8vphmFpiLtnJrZTxqp6
	 W1nXC2kfxiZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ECDD66B9A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599943359.15108.13015690684386350919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa670b6909dc8032ee93809629e6610dbac9aa863f5c1a21c5b4ab70da43a9d
Date: Wed, 17 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765999433
