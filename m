Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07256F9F8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708391297; cv=none; b=TaKephqh6RXSKDcvM1Ck/QyAdXQEbR+vP81IX/q5c/TJ3k1LB1aNonfNKki4M1lBC1ei5GSJbs9L82RuN/yyMGLwzOGLOzwdo234ANVcC6xsq9xBp8SCENbkPgCsImp2miAjoaigfQ/Hmr4FjL3Qb29Qi3tPGkKewriyJoTrnwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708391297; c=relaxed/simple;
	bh=+SMkjDNZ2efEtpAfPGa6uSW6CJbyJFj4TGijS01vzmI=;
	h=To:Subject:From:Message-Id:Date; b=il70CErcXJZQJCOim0u3Igc+dsFylsk2vOD8TPk/uxohRkuiE1rhTd0mRea0aWR83LhVHw2skrx5dHgLWtLZhOE8JZuX8CJyeakCZtfjk3LNRFM1LSZ1/dlu2G0zXjMNX5nZghHe5BsMx065gyrldgGHd3vY1yvoV3ehhtO2Gnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED1FbiGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED1FbiGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E3D2C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708391296;
	bh=+SMkjDNZ2efEtpAfPGa6uSW6CJbyJFj4TGijS01vzmI=;
	h=To:Subject:From:Date:From;
	b=ED1FbiGP70HZ7rJJxtpQHnzkDCyOpuacQxS4jOPMKmYpTnKRzKYoTU1x4Kd1HbZH7
	 /kSFYXrCT7e+c9eBtkPafSFpNm5Brq/WDFrg7XTZ9pz3nF8ihYzRfqLj6Qm84kdXHK
	 no1muFdOpyBllgTnJC+LYF+4C+tBcUIEI5FBOOHKpEX77y4EI3b+TpIEuO2SRLEmHF
	 /PSEInbO1oZKdnFpcMdc+V5YUW/aoN9RHv59WBHYXnX/IzWRn23eiJvkhOswg8i992
	 LUQDAzC8KkWVWHUs0hJflt010gja3o0S1JTA+sRJUKDCeDTqVBxduUL6G9E6tNNMwQ
	 SS1TayIb9HmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C14CC48BF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839129640.11253.6852422141122345155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd29d3afaab0ba89f3683b14ce142282494276175374b3b06b0b91a7d1f9079
Date: Tue, 20 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708391296
