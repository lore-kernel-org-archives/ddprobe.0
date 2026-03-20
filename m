Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F8323FC41
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773994494; cv=none; b=eCleR5wUERklpirtHfXOtj8Q/qbuZ7S2bC1RO61vQ71Q6/S4l1bygAb5a+7NvcZKInnrKSjZOGGp85X685jKwL3Y6/qM/WzYvh/W2/Ohpk/fv/ja3wQ1grXWYX0toKKC++hdizbET2RAB9g85VSVS2GwGb4IB2GBZbLNVJChJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773994494; c=relaxed/simple;
	bh=b3lI2ffuHAgWoHjoRcT+T5g/rFSoqUyIxEDNhiFvIpg=;
	h=To:Subject:From:Message-Id:Date; b=mLhkCpVrLNRRaDbGS39su/Vz72R/jsKHVnnkzl4ntaBslbkAC3rkg93jR9ob/AECUHUm782pMRcda0G4Rfyjajp/EUSvd3ChcD2+Dl7GfKSKalqgXGcnkrcVhZN9DBpktNY2D4jJVinXK0XI+m16Nt9Mwk/fpL1lI4W1k5o26z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edPqixmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edPqixmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D21FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773994493;
	bh=b3lI2ffuHAgWoHjoRcT+T5g/rFSoqUyIxEDNhiFvIpg=;
	h=To:Subject:From:Date:From;
	b=edPqixmDgOyTvyGOSnUzBek9y9cektFPxnlkunqkPbrlBPu1j9J1tu3eOraIMHuE+
	 Jyuj0eFKYyS5/fEzIdmPfcqBhjYBx2X7H17MuP00ktYFEyQ0059gbQuu92UUgOIMXY
	 /wcefTB9n/tipH8iJiemGisp9yXpMCCyQE9kIfOMvG+hl3PlkMyoo0tFJKGGNu7br/
	 0ZF4fbgu0XOEEbDQo2TQIC7wSFzHW45XIDCZFMFtpYgbGnsMTcXG97QmyOZrwT5Ap7
	 WKx6MeKkfsp/8AWw7EitdjmOhBQtbqWG+wKWJHx5ALAlzUZriKJLEoWqyzhEURCIKE
	 IvZbu0IkL1ETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED29109316C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399449357.4808.16850691815494055684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c940334ec44b024dda54670e8ed12d26676cd59e2bb42cd22b3033428db212
Date: Fri, 20 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773994493
