Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB9638F93B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773679494; cv=none; b=Bw58Sif9MtbcZz6WckFsYJcEpH9PIuJ0STEZoViK4iELSksLAwx/Ptta0d9uif0KaygfZjUm1DlDWjxaXets23IIXaVvObKZWdvNfrWFbPtoSHXHEQXlK8mADJIONjLrUxAWMTN9iBihUyYvDEzR6u6E+0U8KdrfVPeHV2euSow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773679494; c=relaxed/simple;
	bh=uyKuvTLNNFYMIbIJoDReomVFtk2/LpZSKY3N/xSLkq8=;
	h=To:Subject:From:Message-Id:Date; b=rF6b/r/ZBfQ5I/tL034rLaEPex0rREISTP7o599YY53A7cxCjVw3mvZUEvFkh9GNkyRyR1298VOHU7+wsioLWEzidecA8AQlEEOlijX2rwAlswyZdc9cHyM3+vsfO6fsc0r1GVcOLIa5byA/b1vLuTS18mpdO1cVLFqfM3FQqbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpZPeCaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpZPeCaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677FC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773679493;
	bh=uyKuvTLNNFYMIbIJoDReomVFtk2/LpZSKY3N/xSLkq8=;
	h=To:Subject:From:Date:From;
	b=ZpZPeCaOIdneolIvjXj8bYR6lAfi65HVGZUwq+648+jz+u3fhgeB2nfoHmTdNKry1
	 wksN7jA+QLt4fhrSHFyQJpgHXrP45fQU5tEYmbpjehhM6aAffM6LhsjTSRHGUA6zdj
	 GblgzfVSdorRTC/yHTPiSEUmvqGghoZ+7Uj5R+Z26Ct2X940u9Xra7jVKtbRMa+W88
	 qJOQmEXqnDEE8MtrznQiaESHE/b/JznUS5TxU6OP4WxdQ2ilD0+0j+AwM+zfwqKkDq
	 yys/MCNPf4q8jmQSjyGxTB8bUtSYBkAZjrxKh45UpCwZl+PHU4qtSO7HHQNUQ2nVWl
	 1GrIBCjFH05QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7DF53D73
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367949360.9175.14817124847029059806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1848d9103dd725417533c6b91680372c0580fce44acbc1dd327b5c26ed46c0e4
Date: Mon, 16 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773679493
