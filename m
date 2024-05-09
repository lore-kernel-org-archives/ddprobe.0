Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5726D16F827
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715271143; cv=none; b=OmZCPGkNeQbTiMmpydd4vQZeXM9YadTTGUZYcM3Zd90vXAolx1TXKvHsbyDgZ4djMsjLnDXUiqEtRMokaMXX8v06QW4BO+7FzTwaDrjMyJtJWo2zWWpOBc9Xxgi8+BmT6sDro5tywL6vDSPxsX5oapuAM+6GwGlaTiCarD/BSpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715271143; c=relaxed/simple;
	bh=6fJ1rvWcdsXVcftIwHXI74lpDlrED2G5KT5hL6rNTIQ=;
	h=To:Subject:From:Message-Id:Date; b=ixmxR6waC3QgFJuET9llTrucyyVtbTsfPxYKykC3K/SYSbfkB2elPZwkrFw4UWG995DmMelCGzpYH5arArlBXBBwxyOwqeofUcWADVVk1XRxpxH8pGCyvi/n3YnPp/9stYcYelCNE3ikj4vnoX/0t9k80kzhJ9z3dy7fzVDvDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUXDRFv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUXDRFv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2726C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715271142;
	bh=6fJ1rvWcdsXVcftIwHXI74lpDlrED2G5KT5hL6rNTIQ=;
	h=To:Subject:From:Date:From;
	b=PUXDRFv+U2vqbDu0TJW1S+D1CDjAvnfDULwLvj34wS1TaK8Z/imVoimiMazUIpsHn
	 m0lbzq7dgrBhO/7MsC42w0S0BchvDUW5vZMFfFiX9uRNbL4HwSq07502mhTuSgj7HX
	 r8rp3OYmKKeC4Cu/E6gugHcN7ayYD9RFkgccDKNs2vFU/lqQZHiD4PDS0N0prP9gpu
	 QYBZJ+O7UjtvDkU3dlvhaRp7ZfCBcanYrtbT6UhbZNmF35CDUj0XN8kvhTdMrvxou0
	 oCqMJEmhqbKLuSvkZjyPEARG8e5jt7DU1yW7B5XYXA3R0ONOf/t0Lx1A7nhrDX121h
	 YtR3E0bIyOWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AF2C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527114284.21728.7631747249722377006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083e97858b756f1cb1c0ae97b558f54087834df7352500f84576c8ef68553330
Date: Thu, 09 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715271142
