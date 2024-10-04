Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E916374D1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728011154; cv=none; b=IvwGu3VcWrWzcpTzktcd9k+AAe7tH2h7NS0DlXJfVu7clwDYHsEJs2fcZo29/t8HFmywJO/4oMVbFRR20YPEtxDR6cibUXr9+aFo1YjCkIIpmPdbTAVe3rA9vFXobdNDWBfXymwZd1DNdw7QI0MaXsfGKL6mJsacZCwGOk1fvNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728011154; c=relaxed/simple;
	bh=3juwp80J12xCVcckbDWP8150OD/jRxfCP31nlfYdCRo=;
	h=To:Subject:From:Message-Id:Date; b=fbTIo/7ArUAe57YdeDWs620Kw9cwUDrzVMYUNByDS3xdU3yrO3S7IheAcELoFqh7FIaPQqybK/eWbQQfPp1Gdb+XT1p1LzzQDstQbViHp7iidyfTkylFIsDUyIJr3dYUqj5UA0Q1qMUZOGMbc1h28SbTkh0UQnGLGxb1l330Uf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxVr8l2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxVr8l2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF5DC4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728011153;
	bh=3juwp80J12xCVcckbDWP8150OD/jRxfCP31nlfYdCRo=;
	h=To:Subject:From:Date:From;
	b=HxVr8l2w2Ox6rq18N6MStBNH4+2LQPVUxSXEsj7IH13eMGg7FOiiTeIDE1KZ0OkbO
	 vPjiLEbRMFt7xnoDrGlZ48SytN2JFIMVkryU+qKrDuG57Fj8dW9l/97ZZyID20gDzd
	 sIU31X+5kRZi9MyjhOkEVHVA8xnV3jmzpeSAXe1m+2I6XEsct/TEGqET7KISNTD60Y
	 OW/UTEQ8WhJbTP5jhM3qOGA1oZkk+RVqxPJIBNWZ0IN9/WKPUr+8V3HS1KopcamSsk
	 8mWVXJSWymE+occ/iXeUpu5XG2Ps4cjllKwsdVPSULtQHAdvdVqkCvtduvof1uFvp4
	 vr2HCIUi8lwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEEACF34B1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801115362.20046.18402439267866617090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af48d382897a376200c7450e27387367a8cc476efef86d887663709698dbe4a4
Date: Fri, 04 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728011153
