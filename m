Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687141A286
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717302323; cv=none; b=LxU7mwKTdmXsN0wLFh5TMkvv2NWMLjw+Uu+nQljoaiTYfhzFmUFNXkvDKC4CyhHIym6u2ByKILkLzRJuCrQcuv/KNppmKNG4/o3wFwUA8LHT+lLP7r1jYcjbGkn8oQZ18Z6mnMPrwm4QVMQZJn3TAviu0sm5892jMW8SmBvPcBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717302323; c=relaxed/simple;
	bh=9SVFJq0bgyAQ7bT6x8ydVqcCLrKSp7zLZQJAaN3H0fU=;
	h=To:Subject:From:Message-Id:Date; b=fxB6OK7buaoYH94KxHPrKvqvVReKa9pKPmexs6ZCuHdhKvI4eglfIpHE1CiDuPw7CsF9ONLRocpCRCvfpOAuWuxRSR6k2/i1/TwIbRVU+zrOiT0n7+a883dvUa9TR6vWppkkK2Nt6RwHzG8KwYfYYJ1DPjckgj50O4Iz+w0Iyzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhMu/75y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhMu/75y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DB3C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717302322;
	bh=9SVFJq0bgyAQ7bT6x8ydVqcCLrKSp7zLZQJAaN3H0fU=;
	h=To:Subject:From:Date:From;
	b=bhMu/75yuaqIcFnv6dqYlOIGlEmEjnWe3ogTRODw8IhuducBrB2RjYWqqsjkTdk0C
	 CsLOS1hYnw9GL0AgmiJB4eLC0u09dTZDpnB4kX5J/k7rDg9lJvCPGdsDCAXjD4dFn8
	 oO2ZfntjUQduFjKtfcqcidJx78lxxYUjIYY6YjVaeYGVZfEbklMYNHftIxAoI1SAAJ
	 yRshXfAavY6i+xuj0Ku/uitEsV7WWV2uYClf08gqmIz7Nk5c645tFkPME+FVJvHZra
	 kzZ1i5xhFX4/g8dLcWyVvyudcPpNcOMNTfDEEuXlSB8Ph3Xx+mTFMnA+K3AqdXB16q
	 7weOfdoyYRBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E9CC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730232276.23898.12167487375893890602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b27013645a281b3aab3aaa21e4721810b375c69f1bac13640b6cd14ac840c58
Date: Sun, 02 Jun 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717302322
