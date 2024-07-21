Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479031DFD8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721571354; cv=none; b=HcATlOl/y+g6EnDPkGaHyNPT79cktZvELdqZnERHKyWnNq60bm9DNbpKhsjxMuqzWMJwT0SaDLW1dVZ+lsm1B0mPYKCuQrbGW9x8yn/HBMPPDf+nPdMYvFFGecqDj1Ishnv4MxabKq9bfMfobT+zPAnYXRnjS2BNJlei4/wKrfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721571354; c=relaxed/simple;
	bh=12FFElE3uykj2B2jRTzo7cI/zugTnnr/Ou3G74YpxFo=;
	h=To:Subject:From:Message-Id:Date; b=f3hURDc9AJf2mIiR8rmOcg/HjcwMQ647ub4VP3rHLA7JSLICv8A9qd3X9n4K8CKn6u3MULwK+/zGfCWIKTjewy9+L1PMfHUpcwT1ScZF0NoogBH1okM3ordCwY1UhS0dPqnAYf6iliVhYqZeu/eMnRtvHc/S62fEiW6IyZdSy8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2GNbqrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2GNbqrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00EBC32782
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721571353;
	bh=12FFElE3uykj2B2jRTzo7cI/zugTnnr/Ou3G74YpxFo=;
	h=To:Subject:From:Date:From;
	b=J2GNbqrc+UEI0QGAcDsZpbzGJeVisFnwnLAeuqbRRkpk1pbB2H/40Z84UCoupC5wn
	 D3CKT+80M5vecZtx8FWX/xV0CGQQnuqWq4LS4M7Szvp5yAdLNdVjjrU6AjwUJjgWwS
	 5KmQ0Lz7inLvi5YaHsq+U43dpG2RrJ9ryqtTTdu7+qVpfpgG6u6qH1NPOEjLUI2iHE
	 Rye8bMP/N6+VgviRz5J9Lc2zvO9BAgI5RT43A2TgZ+7EtPbKmMh8M8f45am3kHhYz5
	 +3IdnQ2gJ/rBTMsi4b1eceNTNXJ1zi9+pRuE0CMRuFu2wZm7GC4h3d8g+WS+u7BAj2
	 4Vlvjwritpikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94657C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157135358.3115.16347567858138406838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8eac3102c69e809d60b94ae92fc667de072d0858ee939f8ab2a9cb67964c64
Date: Sun, 21 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721571353
