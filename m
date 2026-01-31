Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270981862
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769869435; cv=none; b=nDERpfLXPoTZzKoEhMK6XpFnh1MUSAoiPBkqdTcRx97qSHiVFWKsvr0a9hYxfmXfpQWSP5gi+KuPVxS2BnH4GyiBLeZcF2BaErU+Ohl3FCSKxTFwZNsK3gBUJ97r+qlMLgbnvnyOIUoQp5qg2dyOWiXQW13r13B21tzvSEtHX7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769869435; c=relaxed/simple;
	bh=NjsD3nFPJUnPUd3wNuK/9Sp4wfygsUut0rbghPUel8A=;
	h=To:Subject:From:Message-Id:Date; b=iz3lNJJs9Nm7ZA16vfdCga6Yn/i/pin3a5wtOnBeW48InX6d5bLfeDYpinx6y7mIUqnSHTbT70TpuJewTG/cgxL/KvZYQO9Lm+0wXyjYz/UjI/pGvlLsJTt3zqtpfDhTHS2y+8hu5ivyWeHK4KW3/t76uTokWolvyrpbxcz2mnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfiK/R21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfiK/R21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0873C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769869434;
	bh=NjsD3nFPJUnPUd3wNuK/9Sp4wfygsUut0rbghPUel8A=;
	h=To:Subject:From:Date:From;
	b=FfiK/R21x4ZZcqdYfz/VBkZ+zN1xCzXlfYZzSiklLtIibgYAiJUipLsk2Ee++TB71
	 bPzKp9P4hu13YrCsCq/UR972HeHOFBeEbRKDOiUZ9VCWZBW8dTQww5Xcdou/CTrcUS
	 QHVZE+rxoK0H0xR0VuEElCEJMJA9Tu8lf5ZNjQuoiHnt0pG55jHTfUr0DrsRqbOIUX
	 EGl/GlvwLDtosJnnox0OKDqErPT5wlr4P32pGBlSRV2NFluZlAfDoI6q8ALEwrn0ip
	 tJsijoIXfRCrooDCr3OY5yOtyxsXuU8vn1IrE43x44BtsaBhewlze8SUwo8BXSiW4y
	 UKv1QkcXbmikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB81D7976C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986943357.13938.11179493308206864473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135529803d35683fd3ff38ea635410628314fd090a7b9c8943b90de46e9cfccf
Date: Sat, 31 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769869433
