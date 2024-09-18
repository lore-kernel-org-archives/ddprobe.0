Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234FB136327
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726685754; cv=none; b=AOGAdMyB/CjZ6846ELMnFtGDdGlwBJCnb5uuvpT4jqlSMvkyOCwWk/rC/rR4u9VoebDh0QIEOk2HIfin8OdLb5Y0hlcQTqSzZ90IRZvUEDsc81zMrEj3B2z8nQw/Cz4FWx2oqG+D2n+d2scNKHUl23FCn/gvyoBSCWv3EUG/kPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726685754; c=relaxed/simple;
	bh=qJw9ySep85RJenrEpXDpPx+Ulw+rALiJ9grnWysCasg=;
	h=To:Subject:From:Message-Id:Date; b=hjiwSRG/8Wgjl28Mu4Kg/Us+Ud1wsmA+fa84W5ooMu9aMI94oExhfiR9k0vKomwc+NNWs6SPG/DZIoiydzkMHCitFabfY6wB3bN1SkfeAeDAt8SBJaGAWuf1a1YtUd0hhxlNPhkmsU2ym5CQtcbtPh0EvD092EpxGN2JFGxRM5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERmjWRTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERmjWRTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38FBC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726685753;
	bh=qJw9ySep85RJenrEpXDpPx+Ulw+rALiJ9grnWysCasg=;
	h=To:Subject:From:Date:From;
	b=ERmjWRTVeCAq2vJRIk0mFIRSnyaDGm2Cai4boyc+l2lkObj+TLGis7l89VxOkBCaR
	 BZ9uDZzMbk8WykCxQFMDjIrRwwKX81/Yo68cmHTQVLNmDJQRauxdiiNFKaLOe/73Dg
	 vWJsAepa2ppg/1E1iGPr/59yAb6KmrZuZ9ZU4LI4pBCvjGUNLL4CxdUKgMzqDXDsvu
	 i6hlN3AZVoXk4YO+jwedItRgxgQuLWX/nqMN0X89w7XRSlczDbvC5pRRUYqw/qI3A8
	 I5R696e+HriLza2UsCN9bN6pc4kK88cPsNx03mB4kEeW+hCI/p/1S04Lwto6xAsBNz
	 kW4H+an59FuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB1DCDD54F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668575361.16380.17583536164173075390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204cb305bf83fb14208fa383d48b6e473eac11df911d9fd8644a633a1953bf5c
Date: Wed, 18 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726685753
