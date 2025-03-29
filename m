Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C1E2C1A2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743235794; cv=none; b=SCOLR6VHgr3BzByomtS5+WgAB2ykJLAjIHHkJSS21cq14ALOVJaVc9ixjTDYWreSDLGH0fjMiyiCLZpViHaLgD29OlFY5YI3cvS8T1VrBgfRL3xGbGPgd0NTIz2vlfm68iOSmjr/tfBtCcrCpIElBomw2WHMkjyozPMuFx08UkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743235794; c=relaxed/simple;
	bh=Y/dK2pVCLuNxVCnRmFU1op2VbJzMQAxeFEq7RAqwt7g=;
	h=To:Subject:From:Message-Id:Date; b=VuUP5yq4mtfqgAa7IYiTTE9W41vXcMnnK4TFaxVEge75lMNJE7Q7o07BapYzpswfLWP6pjTHdjJh71BRY4KNHSw+ir9qgihYkRRlb1E2PvGXDGJEH1spCrtYPQnisLn0wTt4Q4L/aYnRPVcVGbwvptzmRH4qqCHsvHzkNkxN5tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/L6+2XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/L6+2XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCB5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743235793;
	bh=Y/dK2pVCLuNxVCnRmFU1op2VbJzMQAxeFEq7RAqwt7g=;
	h=To:Subject:From:Date:From;
	b=X/L6+2XMeFslWeiryrJ4226RwnNfY0Nzt3dcHVnyX8LGlJ1KQ5qe8F9RMAp4a1a8P
	 0bdxFgJUhIMMycwGSyLSnH1ktNFf46805GBWoB2FdELtDKv6J2xcWvw9gBorcTksKY
	 AiTEcclziJ1OWkz9wiHn1+PW7FHND5T8QIikZ841zU5x9/WRbnPDSvYOvy7p+F+CaX
	 6h2jJXBWbzaqFBlPZWTVelTaT5S94g9T9nrwbg5o6mGwTlOjSRc59pxVELtQn9MOjj
	 5v9N3n0dSq49O4fsqGFz+w3Xm2eCGm8WO0wDoqPoKPmak/SQphXQTVgOTo0gVFbGN8
	 0AZVSFB2s5R+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02ADC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323579363.2051.10493177569013478567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84db225bd2c98097ecd19b10e65f8d15025dd37be93e0e0d687a4900f8f7bcf
Date: Sat, 29 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743235793
