Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A50DB3242B1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599894; cv=none; b=H2G5fqyJw58GjPFQ/Y4GSzbRJC6qNHHEgujKlOulA2TPKg1rA5NDsTWI42w1Fbegj94RitsFAGo97pNNELafCrkdStFFA4olc2c5YMr49VZjRmklUNG6T73dAm87Hp7o05LaEY72vxYoHIrCHBVNl92tNiMysFM3qlFrdFGCSSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599894; c=relaxed/simple;
	bh=eRID4txGGaVeHaiKc4KqTbAQ4XCyo3JtI0cdVJAmtsI=;
	h=To:Subject:From:Message-Id:Date; b=UMUlXkwziG+6Z34Jmu+4tdoYPFByKd+COSQUtSbR49jlRk3fmwHlDLSI+Ml57zSd/J5iSjl0I3LoFu0b2zx348uW6Z2YKMF3VHDIz13qJdUNnN05RsEN+MCzUsC6w8mNwcmqaZUSQ62Cahb4yYpER7KFMyZsoA3hBAZvpfliRYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiICKPrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiICKPrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6FDC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771599894;
	bh=eRID4txGGaVeHaiKc4KqTbAQ4XCyo3JtI0cdVJAmtsI=;
	h=To:Subject:From:Date:From;
	b=tiICKPrSlJqCw46p7HwXSffjsRKtj2IUiIPlpJzJFqZeyIIj0lOY/93KWBYVY5M+E
	 SneZh0ZOZIRv8R/WBSQDPndSGBovDxM+cm04peYY53q+9a+/qDaHCEB0SlYAeupbDK
	 HkUdYh316ss1iFVxcl9B3z2S2SSwMYMT8njDKXOf+tjl84WzllAMknRoLXDOzXhyJ/
	 T3qObvWTJUKKz7fnW6xRvsjDq2Kn3RlAn1+Pb+DDVdAjvBP2SqIL9QskqImburtNPz
	 6BY5gtQvWdycqS9fPEyX4qjuDzDVYJ/Ian9cyq/2zB9nRj/3Kl82xacMRUdv9fgdLs
	 KQRv0z+teiClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D82C56205
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159989359.23887.6681304123695845244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49693e043aaac2e8eff251130030d6d9ff25ee17506e300f71a35b8f3bb93d34
Date: Fri, 20 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771599893
