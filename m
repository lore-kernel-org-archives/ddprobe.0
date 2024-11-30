Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A3A182C5
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732981554; cv=none; b=POqlHniyuNSeR3H2aq7OEEf/HqiDjTbUKLsTW2Gy4IbzxBpOJKbMx1rNCINTA2qYAx/qKHvyPaHyvzPTRghfO9N8R/E08VgVClxpk23BpAEZ4OEXSRIbjuiVbr4cXlDc/ni0R7vdRaO8qEAu3z50AXRWpbnR2x++htYYXouGnr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732981554; c=relaxed/simple;
	bh=WbdKlOsZmMnoV1cG9iMdfbZ/mxoxYPLv3bIfZ2Nfpzg=;
	h=To:Subject:From:Message-Id:Date; b=PYBndCnDNzCGxFTEZj0K8kfgefdZaW3Junu1nasgspSdgEYFRrZ9sp8WgKuBDwE8SCKQDExYgs4wawdAwqpSjppVuDaB0mRb5VrXM8lJxdNWwlRNnn6K86GSQgxO3+kO4wfkbCQrdiVJ9RJ/xIExAhUJbTp74+RK1jKJqbbmAYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUOYJpQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUOYJpQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7786C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732981553;
	bh=WbdKlOsZmMnoV1cG9iMdfbZ/mxoxYPLv3bIfZ2Nfpzg=;
	h=To:Subject:From:Date:From;
	b=CUOYJpQgaFotYMzBCy79NVU8RO3TzyYTGA/ctMOvuUf2Cl1w/VaK+rPsGVswYh6RX
	 T8VBu8Mf/J5rDAMTVwTFH7Sl09o9PXaPEOOcUjQxRKZss5k461MkkWo4dGBw8W4K2O
	 HLXhuAFwQGObYcs80Ckw3CPCkCrfZq5nsAJc3qJVaaK4Ag+DawfFR3x/MTCNw/R3jV
	 Iu1ceI+TiFaJlTGgjq1/uysG7n2XwUpMGMeTKEokXBSysA3bPw9MPAnwBYdFyE8ftE
	 mAJ03waoY4pMCk98XRjlhLF6FaRGC+90mzgWzcBIPxm6sIAjlVk+zfDyRAtVItooYN
	 20BKx2jnznFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF71D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298155362.1198.7531906193518121935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addb3fe3442dbb355a396e6fbfbbbf87d73ea6210883845a6d786f748ce7f680
Date: Sat, 30 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732981553
