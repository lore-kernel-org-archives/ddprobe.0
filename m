Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF06287246
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763009994; cv=none; b=BosNXtnZ3LeN8N9M6QS/iFTngFrfaO30yT93oPTChNn6PPdpj3/fChoMcXo0q2jtVG8OomcgK7r+OqmFtENj3D72431UknEt14aJvhdX3vcsG1Zkvhli4tX/47sydEXbJ70uiEofrSRiQvPYx3UySAfgD3vUswMRo3uuudgIEGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763009994; c=relaxed/simple;
	bh=DHzmm4IrzSCv9Rk5W7gJzrhSNFrDMu62v4mflzlHvIQ=;
	h=To:Subject:From:Message-Id:Date; b=HHAWEjuFDflrYlSILlL8UJdUZKaPcFF6myKNi0ti/XbMXSDNjY+RXX/UB9qm8vQRfWifPqc/DAmA+QwTx+c2SUvVk2sHEgCoXYPYDAhw/KkGGFlAH6BLu9s1E64PhJN1NjR5Z8x/wZiFyxafxXmcU3btM6HDs2rx9bI3n5hkNCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uc8ILEiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uc8ILEiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7BBC19422
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763009993;
	bh=DHzmm4IrzSCv9Rk5W7gJzrhSNFrDMu62v4mflzlHvIQ=;
	h=To:Subject:From:Date:From;
	b=Uc8ILEiIwGqA6GPPUO0KJ1Znrtt8C04HLnz8XcbtANVyRCTIUZwfC48uezgHO4P1d
	 PQVL07k9rcZSAzdcaOs5fNZJ97TK18C+v+oJnrZkvJSg+0mIFsiZueeofk1yFNfxOs
	 5H+ymMeZCf7uPsqVRy1rVxz1GgMan5cWCKbqP/ItU+ZimYOrsNw3JFjw7YVTjJlJn4
	 n2fHxsUXx/f1k5aW4Gj8LtVWh1AX6aEjKlGCRGnqqU49gzZJ+lTeC/PQdtKKDZkTZf
	 6kcp00zqNyw8lF1OaB7FMI4tJm/jrnDd/rybmHCkLJXpPqh/BnSBLJtwgcgNaJRWxg
	 ASNn0bbMzNjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB25CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300999357.15288.9877168587008422865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef9f2d1f87ae1baa32d82c7e850fb1dd229305e92bdaadd6a52a5858798c4fa
Date: Thu, 13 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763009993
