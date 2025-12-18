Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AB2139579
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045034; cv=none; b=F6D8Mieh88/lw5Utcz1jWAA1tr+VYbGdn+SQoWMCDvrCQm8zLnhY8mByJaAgScZ223NWKNlKPYhzYyzIizonb9HExK0hc2+cmd1M2XufXgEwcrwcTLXm0j8EDiTnrwObhVYQYzDkDjUkEv5A27zcb80k1du30pAW+hwNgU2sVac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045034; c=relaxed/simple;
	bh=UTiFobRZUlvhDA7gU2vaq7ojuNRTqF91At+HNcA0NQE=;
	h=To:Subject:From:Message-Id:Date; b=q/MDNaZH6PpDRc6dWaksG1w0dH8MwQ37HTldJuQ5cOFJV6AKDNfUfrksbdojB9k3CkToqh8lwraTsDK4/ab+Mrqaax/VYJHQ32ipcY95wjiKiMbWuE9WTZDjjyEnuLWPKW1VTNTsf+WMp4xB+UjzOVgNxJhRCrkGrHUBF/NMGBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1oQCjuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1oQCjuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE1AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766045033;
	bh=UTiFobRZUlvhDA7gU2vaq7ojuNRTqF91At+HNcA0NQE=;
	h=To:Subject:From:Date:From;
	b=V1oQCjuzHkDFAMK9B8JTScQ22EgjnppsVIOHNDEw2mLoJb/PRwdbLgazN8tiMtVWd
	 NiUtV7KuCNZ/jQU7OdiHx6+C5BWWVaUsc4ZDCJnfqgTlL8zeG/ZgA7CJ5TNU5bWV8W
	 aPGulLp4OxzRiRrjWrLcPn+c5nHoG1iXsUgi7GmRJbl137i0kNhMb9in2SrhiWm7ol
	 Jc8OrxvZGtzYmr+z1FUZkGeqRbAt1etRLn/zeed9xrserkoqJumN99dbPh4RznSajf
	 xq/oHuX4VA6Xd4GJRxz7CclL1Ic/Kc+Ptj94KRkQ5rTgGu/KhaEefUMai3FQERTMox
	 492U9C4W4XRmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6B9D68BEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604503363.8494.8652255263172967611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c931e7bb81cae795b90515b64536faefb0eae164eeba5bff471781b08097a7
Date: Thu, 18 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766045033
