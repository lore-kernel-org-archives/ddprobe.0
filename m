Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25074231CB3
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728839754; cv=none; b=a2XIWPVDy0rwRojFsr2jGdE0TseSmD+tYgcfsjm1ImtTviijm2mh1gr1LK2OiRa/tXgF3aOKxEhiw+NGTxObGDJ5/p4ALzPCDdpWbG0ZtyIFTA9T0l33jYRxyZ2FxVZkvs0HjLPHKTAEKvQMu2GiuAGkfoqvxKmOKX2XNTT8OUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728839754; c=relaxed/simple;
	bh=ewLQ3VatbAv7SCDVFo70VH2MjATZMg1sSnD184/7OME=;
	h=To:Subject:From:Message-Id:Date; b=sUunpH5tQ8JuBbTwCx6I3gQLrCQcq9Dc+7GssUQDiP8kDFRaV4vsY6TexzF9fnXIa95xkcRFMTDibwkfB19M0pRWIIlq+4Ek5zCoLALRdx1uBef45a15NOAtfoZFcMzSPlVnpzoBECGVJNEVgSXMKSxOuOHF3u72b924t/Y/ZA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4L1Ojom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4L1Ojom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9214C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728839753;
	bh=ewLQ3VatbAv7SCDVFo70VH2MjATZMg1sSnD184/7OME=;
	h=To:Subject:From:Date:From;
	b=b4L1Ojommq09gX+i31t7Eowd7nq/dJB1BzbU8Hgk82w36Wg9pnpjDKtLFzEB5YUMx
	 cNE/djZ8xKUbyuFqhmgt5kwWZBUFtOCFzi7I9HCNcb2ZzlMb23GWdZuPHFRM8c9LdN
	 A+Aass/gnFFGxQIcD957QoerXsbFk4VMDfxaNPB8Ev5RBUNH+3v35blR2I8t2UgvzJ
	 hVxwsCj2zXvMa51hjUWNkRFsjuMjeN52dF/De2WDNGqK+XiAF6j1rkFD/RPjY+Y7vc
	 S7ZILle506ndcovgKRs4o//H4dVzWJ559Fz9XVplGRQTnDlJxbfHenL3kSaO3cPnbh
	 kWJ+QLYiBivrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9913ACF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883975359.21643.3516505008834488284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bd034e4ee7f0aef3a45dc0ca1ea6d1a646aa6f4ac61280cb797a86dc96cc43
Date: Sun, 13 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728839753
