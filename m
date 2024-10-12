Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8FB4C8E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728717354; cv=none; b=Q135aDX1v06AyLRgErhh0t7+thPA6t5rzkysIWdzt7qCVHMfS10kP0vYZWA6FGVvpRD+aSmlq4a9iXhA6pZM+/B03JrO35KhVki241z/wQb6chZpytiYaeTrFgB5CHoLY1utgrSp8KEnrTD32FSRL4tLz+ZOnqNQMdO4KcUWp80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728717354; c=relaxed/simple;
	bh=eZkcQhunIG3t3v+dXEhLI9KA+p1BrOo3yfdJBOnMbb4=;
	h=To:Subject:From:Message-Id:Date; b=W+9KxTx2r7XmMopsaXEvGtB9gXCg6M+1rkOKwioAtpWjrFmwaP18brOYA5N4rlq8r/1LBX1sB9pryVHE2TcOVUrRtuWUNaTaU5SDGxBbQLYrk9+h7br3ODkA+tNfViSka8A71LSBlPm8L49giG3QQtu6SM4Da+MiNcTDNfNMJ34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfpXneyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfpXneyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728717353;
	bh=eZkcQhunIG3t3v+dXEhLI9KA+p1BrOo3yfdJBOnMbb4=;
	h=To:Subject:From:Date:From;
	b=hfpXneyS4Y6ahPOD37tyA+MeeIWkNdpFHSriIjp72YeRqRGCCyNCHXdmcAimTL5yb
	 fpJut0zpUA+mP27mQCsn4BpJ40m+MSmRpFVcPQbcTDPWEETcD6e3E9tSEvMGWFqGYt
	 jx6Hii9gHCLrzc/F7DDenasFdzAVUOwgq3U//oLoxEBDqkIFA+wBRH5EJsN3azc8EK
	 aiYLBM/O88h5CnDYu05l7xRNM08u/0i2pDk7QLowo4Va3G+iha+JTZQIP8Z/vREUBL
	 HEnkOTxlqgtRwmbVD27yDnu8vd5QPoy2Shu1Cl3UMSc3sQSZPbDhygtdQqPolsdQZI
	 uB8uL/C9juP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4131D1A441
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871735366.21665.5640955115680540936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40b5a2d710baa9ce69f11a32320ad740b1da5e83f7b2eaf2e539fad5a886fcd
Date: Sat, 12 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728717353
