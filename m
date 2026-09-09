Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411E8271443
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788973234; cv=none; b=H0AVB6hFKs3WyRI4equqodYTBuEtF58iV17+dB3xOVvj7X8khA0u3Xlh80yxlVHPYyuN3HY1/N7pWlzEn5SMZF/RSShCjL2bmaMl45YXsPq6SIR1I6oEWd6xQadDPq03Wj+Mks0Kgzcta+K/BWkkgimNfJ0Xef1dJzzTHOYN4FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788973234; c=relaxed/simple;
	bh=+nMRDr+w6+Np1RZ2jmFWF9du55Jl+7OOajYSrxj1pb8=;
	h=To:Subject:From:Message-Id:Date; b=RUWEfcu0p3nDaa8+MSKcEUiNNTcA/07XIktiSmAoLdypdxjqce2wQ8/nJyeVAnALFs44Gk3Ftbd3JHAPHF0zYGIWsmykV1hHemHYsaF9InWbAtLaEKfAQsmfWTZnimuk79lVj+axl69bpWnzaSMuyTJ5X59D1sgcSi7MmUPYt+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spr47XUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spr47XUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E539CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788973233;
	bh=+nMRDr+w6+Np1RZ2jmFWF9du55Jl+7OOajYSrxj1pb8=;
	h=To:Subject:From:Date:From;
	b=spr47XUKDqjnW7pxfZdssFROsOqSTB0etHmM0OmID0f2Kus3vpsSxdkggflaPIBfx
	 8GwcYrPQOPbmjwFK4qYhGTqtToe+aebPnyc2MVve1ZG5VvYB+7rFbDgsnDbRkou3OI
	 U5ruY34MJO1naHPcofyIFc1p5abDB0zxU7jWzlAPWg5oChwVk+ivujTZXmhmLaCr2x
	 cfXsiI7Z8P2UlgAvoLRfDSOkIjeKtaBTlHvNAdYbouu3XHF58hmO8dLkI6XqSqPgML
	 AMMTg3qX5g7lZycfV1FFWcBue9l6OtoMKRlKYu1H4wlBaa295ousmhsVfr2SNC0F+v
	 bDltxY5y0uQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEECC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897323376.8301.802523007888913939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566cda1bbceab30dcc3656bb042cb40d8a3ab34efc4f3cb8f7e7f6a267f11896
Date: Wed, 09 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788973233
