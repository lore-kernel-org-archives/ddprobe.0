Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E2A445AC4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790325634; cv=none; b=VA+oZLawMaqSHt5iDg9Tqs2O3ofrvjMVrk/5AthiNE2V1sfVNzhXAwswncMP/+d+bFm91+kwg/qNx/wNuKmi4KRDYZWZmlPXPHucyuk/YrmF7F7XXQbco0uSmJXZbbjUe49MeI2p8ZaDqD7MdRQcnVqBori4QMKWO6SnUj1C5LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790325634; c=relaxed/simple;
	bh=hAqqdf1Iuvc0AT5bAzKXLxsK9ziitu14L2LPTiXraiQ=;
	h=To:Subject:From:Message-Id:Date; b=PeRPt1yKjqo1HDAACrzMjlAkGlrsMrDKGktE9I+hyz0v91niitKwzAsscnYp8HyStKMePjd3FVZYquGnfRDA5klN13ylk+iWpiehOZZQQr7DR1pyCcYzHKIiDbikggtw+3A1DKWzfkFkv867ZR/QeHuziKl+6ELZ9+fBV2OlMhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j98Sl69I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j98Sl69I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02F8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790325633;
	bh=hAqqdf1Iuvc0AT5bAzKXLxsK9ziitu14L2LPTiXraiQ=;
	h=To:Subject:From:Date:From;
	b=j98Sl69IJN7Pvor65jWbjUgV6LbLTB6JYZA21um8XOPE8OC+m5QZ1WQnzObakGRH9
	 gCMQX4Ft/VjpFnaK2kR03Ag6vSOFl/B1Mm5HU+7wLAD0QsyNCHtIQmpoak73UwAe4j
	 PmmyYzMDM+oQfCwEFG5F8bu81xdK5e/m9dSAldDqRFR0aj+ZSw6HCRMn+zC2o+nFd9
	 3Qg0mA1DKLnxGh5Of1FfXTAsvycevuDKcBZyLoKol4hWLbl8cgyGiFUH+vtg29NER8
	 nDnDj0/UtwHZiIfxRoxDMojwBb1z8mVwpAFZUwKLYm/sTYMAgBuirqaNvJnSgkKXPI
	 Bh0Kfog28mC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72FC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032563370.10199.18396479831177150460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7d8be5d036668ca96cdbc6e7393621c5ef6d6943d2959d3c9ba6ffc12ac473
Date: Fri, 25 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790325633
