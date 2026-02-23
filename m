Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BD01BC46
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878894; cv=none; b=d0ZjX1xlkKaDe8HHcL9omRblEEbFQsyegwI3fhct5DHrLgwMaChc00e8yr23y+Yhn8Wj1YxqqBpG/rxAeZ2pIcx3Yona6WosR8x2B5HGaKqoHexoRge/nZXDSbIBgxHROofheQIeZpfQBFRf7oZbAdZca62FnNh9jlddGyHdw4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878894; c=relaxed/simple;
	bh=qeiAsDR1vIvHEAO+sWKGLbSUUv7j2at0bCIL98DF9vM=;
	h=To:Subject:From:Message-Id:Date; b=Qd08eMNKyJuiuWYorVHtwgmNkVXElErXpkZ1//PjLpFF4sZS4nvusH67t/Kac0eXvu+MISKPnc7XzWSmT8ypugVByRBGXSNeXG9GTY3TlWulgpq/rzvORvXEIHDHck8axXao1JUsV3wdcCuWOgKPJQJISIUHck3XYrzwwfOONbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaJgVOR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaJgVOR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5958C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771878893;
	bh=qeiAsDR1vIvHEAO+sWKGLbSUUv7j2at0bCIL98DF9vM=;
	h=To:Subject:From:Date:From;
	b=YaJgVOR+mGpeJoDlZ1by9APYLlqr9gZWbU0PKBTp4SMOW5+Pim/Us7cDYQJDlj0DB
	 7jIFI3fgXy5GnexUMyN+UxAHqGpPE/jH+G7UkMHVk0U3m8dxRuPLm763Jg/c0mOEGX
	 jbvpNE3VRFvoYwLX2edaneMTJdVSariiwkfnT9T+9Qi+txChODZwZTbLFmNCnP4Cv/
	 m/80b4dZsAwAUnb8r5eVnSMBbHA+04TCThl2Ym4mv9adhZedztNHeeODit9LEHEeWO
	 nxqrt9HAj6Gf0kOY8tY10cFeAfjxTpd2+XEJPX65k/+HVKtt4WW+O7TUWUE6Nn5xdP
	 Sim23A49/a1Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D3EC112B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187889360.27015.12199857226734296263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970ba3822552cecd5cae836b2a50ec8c80ae6d535bf0f0c53e19b38996752184
Date: Mon, 23 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771878893
