Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453FA31716D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788565234; cv=none; b=caa2BoF/cczBcrX9jPUcJ4ziMN2rptomkvfDyueeuqHOF56z1AowIz8h3bh3D2IFSk9AQDtv+XB0LCzRqRhVfnG6u4jd9vd6oppBQUdkwYxAd13hI7B49ChawbMvzoutfn+mQcHStNf+372clDwhSgPAcLJqflIDzF78A9BHEQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788565234; c=relaxed/simple;
	bh=9HaNUSTNygSn8hbd2xdupmb/xOWG+IpLu1cEViDshD4=;
	h=To:Subject:From:Message-Id:Date; b=OGUJ55IE+6WLuDmIwgEsuv+uEFrUqMMXnaUCDrv5ai4pJBvS5uOOgWK9S162il/xAJnZ92lZeQoBB6+As8ceCNQNABjdEtWC2rUR5/TrA3ps1gOONulOX4UBsrc/7HvGn7y2nof6OMq7pzjFpc//CiW10JFRMooKG3LYDlzOb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXHkhhnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXHkhhnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE53C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788565233;
	bh=9HaNUSTNygSn8hbd2xdupmb/xOWG+IpLu1cEViDshD4=;
	h=To:Subject:From:Date:From;
	b=lXHkhhnH/c4nJ34VK5fVJhjC9d9Yh14RTsdZ2ppP5qPUxzgActOM7GXPgQXW5N0eN
	 Zu7HxKlwUlYI2N4jVtMTffAlpsqlHmQdncqMK+uwEl0ihi/4hlwPJ8boqndic2rSNy
	 ApSClJPgf1rVMNdW0IlwjYo3fBp3QRCEVUziKsB8CXkrK/+XmSpBZY1pHHW3Jt3fFp
	 BRMGklmVE0MHPSIusgTfw7ZGFgk+mCDQipIyUDaVVoBjE537xJogL0cr9OE7YWkQaF
	 f20ewYLTzNWtnbBqD1p6zinS+T52s1ZhvYJikP6gdfmz8ymQ4axPrcWfryEVZda5k5
	 WYSC7/xYouLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FA9C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856523368.20780.18230015951036562136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce2178172900e77cc6013f3cd4825a9347771055a6ff62e9f4b6a7b0542f93c
Date: Fri, 04 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788565233
