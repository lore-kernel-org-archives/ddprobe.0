Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3803C1428E7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752627595; cv=none; b=lnt3dLfuF9c1cX3Y09ZIJMSKwc5YVQy6OSqXo0h8xhrlsUp6f++i10Gf+JF2yaJAwFWHFKd7a9tWIz5sT0aJ7/LL2p9f88OYbn8g4EYPKADp24m8RmVsOBkBN+v+KpX1qJmnKcpQQTbQFAjjCBgWo2j5ohrEPt9duTzOegZsIgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752627595; c=relaxed/simple;
	bh=EwL85RKBm3vabPTySOUAKgpY6T63Ap5byrZXAsrWKBE=;
	h=To:Subject:From:Message-Id:Date; b=lCWaaA706utQIqjgx11QRsxvehifTPAkay9mP3uqATWRu2uBPzGTuF/bOKYIaKZ5D3VXFWH3OiQ4sbknOMRDhG0ItoYDGlBjjye+fF3jfM7c7GD5zT+u2r8kLN/KO3hJpQLznlgb7Y9bbzpqWZfrIEzPiBzx2djbO6TfvhCSvJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKH2SrCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKH2SrCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752627593;
	bh=EwL85RKBm3vabPTySOUAKgpY6T63Ap5byrZXAsrWKBE=;
	h=To:Subject:From:Date:From;
	b=DKH2SrCcxwmuC6AchoIFagtiFwltD0HtaFa/ZP+NP//u29s8nA15+3sr/ggFmzzZc
	 L/4NU7/3NehSGbgNuGbEWYnVisFtMPKud8fPQtsSDacCuWor238QUGceuGHS1bBJD9
	 EWHJmMD8iqkposDxsxbLACmMp9piBTTNcwl4w1y4IJZKGM12Yc1fApvNzz9Q5kV8Q1
	 FDe1njmJ848a3DED2mvccWQ42hcoE25FSJUtk3DyDn2rmFGOKUZ2hocns8FXeDcXNY
	 P5cLT1fk1yvLHOziGal87GXxgykSvi8M6iX8lmVTuro2tjYcm1yJ+HeoPuRgLe7pwe
	 TexUm9QykoAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92618C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262759358.12251.10607629138255651654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cb76f553d61ce4bd8d86cc7e4f35b0a8412780a7a00437b21b60b81a806fd0
Date: Wed, 16 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752627593
