Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227E77F11
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739500134; cv=none; b=jrvpsxVQLvm9V0MIPBmQidskv4ddFInY6da/Cb2sy3lYC7SK9g5FEBlFNLxvjaXq4uA/uVAyYg4bBzqK1+ml27YAkNdzslzLiI8MmGhldDwksOWKPve5KCfFCs2LNWh/aw7vfGgOpla9hfb8iAay/SzMB+99B6Vojp27wGGWmQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739500134; c=relaxed/simple;
	bh=a34svgsY2lbmPTt+LtzLGl8PEYJqj6A9bDp6Ri6oXIA=;
	h=To:Subject:From:Message-Id:Date; b=jljjdWH85SKrlaE2LylfgZ+cywOzr1pGIEtOjzT7shyvYsz4B+rgF55t0dkaeyXvBCZ8CS1wCjtIrJzM08THlUAaM9psrS4DcvXc7HdhC9tNJcvYvPpEbpcvp2CtOU1HUOMUsO9visslwdUhLX9N/i9zmdM9eVX3x8bUD38b7mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQyTitd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQyTitd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBEC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739500133;
	bh=a34svgsY2lbmPTt+LtzLGl8PEYJqj6A9bDp6Ri6oXIA=;
	h=To:Subject:From:Date:From;
	b=SQyTitd2sjvu4WmI/1GAyeBdFSUvEaSsuo0ZxbZHE1ZaQRg2XCBy7Y+Cy0my2vsSo
	 0oHt45mRU5PRScK2o0ueEFlENiLmlhhS3LhBklOUP3kaferaPRf4QGcvUreA4EDYLy
	 B3OoFmQpW14Tb7yJcROth8ovFp7pmq3BbHeUqZuLvMT2Xxc7idRTSIBMhTrSa0cCf2
	 2iGaEkM49jnzj9IN/GG0nMiOwmnjTp6BcZXQre+CbGM+3+NnJUVAVLnQFYl4+HOkWK
	 CabSPGo2tS7zqFw+axW9hccEJH8FUogssVWV681jG4qQaZg+YhuAZNwwpS2zmhpZog
	 Zw78Y1HNMMlyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A8C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950013360.31955.6853446800115226441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41239fd5c348e642ca3cbbdb18b0c2f1161c1f417122802713b15295208b422
Date: Fri, 14 Feb 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739500133
