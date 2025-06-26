Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2208018C02
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750917595; cv=none; b=ijILYQaZavN02XMAXf/fmDO/EDatyznFOZgkuN9ajlMWsavbVWKzK5vbcpG83zBP/GPE5ZpicMa2Vz3W3RcUS/KxHiu6OyViaamFY/PklkvxMVcx0k2bWUz1XvSgGyquzdmwta1cCPZrvLBgeehAoz2t3bEAqbjtPYKr7jYxzsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750917595; c=relaxed/simple;
	bh=UNCPmr3VX+M59HmnDQirABdMUEALEs7DIbXgXryiidM=;
	h=To:Subject:From:Message-Id:Date; b=akviOFDeBOkip6aJBN43Q7ALwQfOuHdJw1PdgSBsIol0PvfV15HcU6XUnUKStlIbOMUl2mZ+qpWCaOOOESCztrf+O0PvAQlFD5sIfkb1T6RUpWgbY9b+YqveQZz/dOOA7lwNVoGvIruVPMr3WQBwl04QbCr9OZJecQCdLlViMl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPUdfAHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPUdfAHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9167C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750917593;
	bh=UNCPmr3VX+M59HmnDQirABdMUEALEs7DIbXgXryiidM=;
	h=To:Subject:From:Date:From;
	b=YPUdfAHZsWgbtyRvBxo+hjwYLpi7siQogSzv21ZoAoCoQfJpkzfox7szamin0LVDm
	 WcYHXtf7yREfeT7nR4secr2Z/PK7NJ4bQPoQZsjDDjIOUPZOTNlbi2uMDVi2JaCjph
	 dcJcQVnR7EO/IS1h073IuSRaZ0SDaBb2EdUm+JRtaW0wMVV9djL6vdOXLaehB6MNX6
	 TNdbaEEyZTmW5P/Q/UWmV/17RcMOEqiEpKYJHvdptM1RXuBVFgjXDDICafyQksJTde
	 +wB3F1SRYoWikkRnKRes1T67juqnSBoXjjAWqfxkKjdSFPb4JYq7CNcspSNfTHvoQ2
	 OTZS1nOzq2u0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E32FC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091759357.21701.2759259988609915721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57eb227230e5e7177a70ea1b7f08c6acb2e6f6f104db9913e05a904bfd8193a0
Date: Thu, 26 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750917593
