Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F3B42DA3F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790284835; cv=none; b=UktXZXcaI6E49TF0Cjx1XsVtUJtwOJwC90lgngPsNgfBx+n5ydsn7ltfQkQ5R+8I2KbZ5/u4s6eBeIsSCTv9FL/qSF/rhdETiqypv26WnMHup494L0yKJUeFIzf/jlk99+Q13s4RWpK59etmuvYWTRru7nNfcxZKQIZAV67qYLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790284835; c=relaxed/simple;
	bh=khlccZyyoxQrLQPqgEpp9xHfkHyLK79cxZxEeUFP0CU=;
	h=To:Subject:From:Message-Id:Date; b=hbzzzuQnDXqnV2CEnA/VIxt77qZmXqm7gosRw8d5FqQqukRiI6RJXi2MF9jQuhfu6UofK39JaFOll7n774n2cIpSx0fHNbh0PgGtyLCCq8rsn1NHCUGKrr1djOmiSBUN3p8tcJ+eAuYDMS2PS40sSystSleJKjkd2KnGfG65ahg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y072eQU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y072eQU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D683BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790284833;
	bh=khlccZyyoxQrLQPqgEpp9xHfkHyLK79cxZxEeUFP0CU=;
	h=To:Subject:From:Date:From;
	b=Y072eQU+KZqUoiFExuoSZStRVQ7pXokxHepAA70MbQ3y8hH1ZW/gl+xCtJkIdO+hq
	 aeDUynyk71sI28v9nsCVXlbUwvSa3DAKd71bw5wTnGNdXBqEJqXQhtPlVhO95SGtZM
	 uAQRTD1UdT+1Wk5VDlUtrekI6K1jx4K8v4h5+cTIHI/OLlPal5GstzR0Gha4J6steP
	 qeuVnmBcli9A2jr+9ZqbmLIDo5UIy+nIPJJ5fqe14Y7GwXcW9S/KVotOVZ0+u08o//
	 RZrNe/jNo1zAVf5hsKAzDjHEru7MOsZsxvLi24y4WgbxDwD4NP4uhysxyagGC59zqo
	 jjrql4bYXfzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FC6C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028483371.19262.827510979158502149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10858c34ff594fb6f031515c7cbbf8b56a6dff66c47a84ceee9c7f4817885c00
Date: Thu, 24 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790284833
