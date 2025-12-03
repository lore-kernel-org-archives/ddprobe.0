Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157FF1400C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764766974; cv=none; b=cOIlQokK1DS+W9hs1SY5iF23NHJpNEDJpXgpr+3yV9yT1tmPIy5t3s9o4Vmpi8sLgim5pw8E0rCDOEMElygXAOpaFY+bZcabYb167ZTP5dgoO/DeoEuXc2fzW8egyC4p1WHzQnnnLBA3DUJhTEODWjeL3RP1CO2l+VmJ4V4OQ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764766974; c=relaxed/simple;
	bh=E6MpOM8JU7TOCPvS1InlP1by6IqDfOqsCbVl7gq3xIw=;
	h=To:Subject:From:Message-Id:Date; b=klnhL14lcjTtBSjeW6XOed6Y1Vus+sU7wlLXyNpdX2JKvc6D2qzPJ4pUXjEGyr3DnOE8ivdBu9IDTU93uFlirsNRYM9nFlK0VEh+SYqIA53lFEUvwfNEoc5b1twdgzxZsDxe6+0sGTVsk6loG+MYNUuSfRYK07douAw2CFg8Vlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixgifyYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixgifyYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1270C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764766973;
	bh=E6MpOM8JU7TOCPvS1InlP1by6IqDfOqsCbVl7gq3xIw=;
	h=To:Subject:From:Date:From;
	b=ixgifyYedylpwEacSkAHG/QV1EBuatJVYd5cFg17JWFi5juGez+rjz3uwGV8N84fT
	 iL13ackeAC6mBD4QokpLp+lR4lkplWk2MrE5KUA6fOdTW4ZKE7AAOkBUYYR1ft4zdH
	 fTFCfX4mVO1VYu22DA/Yx6kICvKNohoayCR4kE63pMfZHO0S5SkRMcChHqj7JFHFht
	 pNAFfHNnzycxDInmGTLrc7Q4RkzvUHIhZnHzo50d5vbBGeWXjUMbkNyGfxRpQBBSfX
	 NHIkQFVmw2+xuVrP5LWWiq8nQnP9L+8LrfrCHSks354z9CEDY+SNIVYyXusQOFeWpz
	 91D4xdst8aqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91315D12D50
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476697358.32246.6471589331324443981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d677e700b0c071443088e072ac79497b7d6a3287a673cda9813ddcee1d0749
Date: Wed, 03 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764766973
