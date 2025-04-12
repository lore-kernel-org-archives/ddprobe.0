Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB61151991
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744496394; cv=none; b=g/W/Yr0OZFqnrBa5u8ovBzRuowndon2ko0xyqfdqvHUkNhgwRg+VrA9YjzUvjpjqda0U8be5EMnhGBtC2zKn+NCyguLqLvzROLOsUP9OvVoqoIDFRMKLAEQcIiX0GWJWwVbbrtDNPwyDisywBBlnggyLSi79eK/ga8jTsiD9ZHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744496394; c=relaxed/simple;
	bh=cE7KYPg+GIOizDXx/1q/15cwkHwPzT5lve4v33+Y0z0=;
	h=To:Subject:From:Message-Id:Date; b=VOtKFRED3p34IIyuatYeRMJMKBjlbsM1pkpC8gXVm/6ICdoS8bGtHhuIh0k4S+2Z0SbKA1frDgM8P6EPQHb7fc4IdVzMrH3QHep4mp2oaMSUj4Su9LNz8WvTxCid93UbYCJfr6Kw/gUcG/EruIaVHHUpQhQGxJf2eMlUI3tMyxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz96bYWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz96bYWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF80DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744496393;
	bh=cE7KYPg+GIOizDXx/1q/15cwkHwPzT5lve4v33+Y0z0=;
	h=To:Subject:From:Date:From;
	b=bz96bYWeLpHOw0OpLH0ikcjaM92fUaIndbUpaTc2B2I25f8wXlEbHXbEKq9kn01yv
	 +5li2UnPpG00fzKfzk2IHMbxcal089uwWiOCTY85Tc/QpTvolfTb3ZFX3N3ADi2hHj
	 Ffea4POhWXFooN2UpbzA+gCS5QwT9r2lP1VrXIwoLFdi1VJjyZs+ulRUcmuIgs+H88
	 tNrgpPUbD+lott/iv0QKkI+Ba34JkkfCuyXpr3asRTHdRCzT6VDKyvdBQ5e0vMf+FI
	 duIKlTS3iWsaec+9Q3dnk7QrucfoynPYMXkG5l1ZGDhA6IhI25peA83EvDBbFm9PvP
	 sCT2qtdaNI2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB00C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449639358.26123.11762665875132192451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8f54958897a3287d95fcb2e40a656aaa5a9f9ddbea996ed4f537c620ec29c7
Date: Sat, 12 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744496393
