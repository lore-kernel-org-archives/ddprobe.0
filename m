Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBADE1FB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752467395; cv=none; b=E4tS/NCHezoouvqsU4xxjd/OeHntEY3Pky3PyTVxMAQG/ghnR81uKxFBiLG+nUBy80ML2fbzr/jzcyrkBMJFCiFynJk7Df3ItI5rjUb1rXQ7fvPJrLpf2f8iE5xbt8DYP7peSqyV1rxjyCRqdnmVyWTf08X4LjrnPdhQVe63Doo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752467395; c=relaxed/simple;
	bh=QjesTTGvSRKlzOf4fSskXK49f9BE3F+RtqRZRL6UCQs=;
	h=To:Subject:From:Message-Id:Date; b=Ec+Laas2+PlRlg7O5AL23s3iih87rGlAG/vCx9t2o31xZFk4l8oPJ6AgUnoQHeEpJLAvkrPGoLY4t41tM1f80dHUQO6IdLrWlghtOukIEmfELoZGJMaynvIm15WFuDVOX0pkCsu9Eh7yMxU9k8U58q4mpTRZ99NCwqTf+BdLc+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVlMEI/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVlMEI/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2010C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752467393;
	bh=QjesTTGvSRKlzOf4fSskXK49f9BE3F+RtqRZRL6UCQs=;
	h=To:Subject:From:Date:From;
	b=RVlMEI/V5wGr8zZHZ54OgUhudMrMj/tajN6Z9uEzQyx2ReDAANap0dlMIm0K6bHt1
	 BHzQbXvHhASToNDGXOGSSfYIYDj98RjxGPqLbYa6gD2JnHU4Yp+/w3iBZIcd6/cbTH
	 Et0Wbl5b2He5uMdqDG5BnyI4oVwSlJI3oHGmPP1S+h5H+IuxVP7ZRjngWEnIfiLcum
	 4OLCAJvMaMB5uOVI21tclrXanBu+2ekYRr4UzT2kfw4xnXIPWIXhQPOoTZE2K15urA
	 jWVgzWFwf6bIdnai+Umt+kG+OhhV7pRHcPohP4szeP5d2qQk/wEvOyk8o998FsQeEw
	 z6Qdh6SHdmPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC9C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246739362.22159.6393288310027547824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441b1e70d029936b393b0d810d8059fb16d089bf9eaee2e4d13272ca1f6b9ac4
Date: Mon, 14 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752467393
