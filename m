Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FF314E2E2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745534394; cv=none; b=BCrEqPjpcUzMieIWBn7/2iPiD/nyBrPpxTNdCuIVpMtpYWGv9OEXSCuKno9+pwcapfLaHVDWSa/MUdtIU97ACktD5ZNS8VjsjYUtRUCFlHkn7L9laTFuyyO5uJ7bdGHDP5ybOTiDwSyKe9ZS2RpgBnw2ejxGN2HsT6cfbq4oBKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745534394; c=relaxed/simple;
	bh=ZbDvnUipGRo1D6woYzsalHUFR7/Eh/sKi+XRojuex9o=;
	h=To:Subject:From:Message-Id:Date; b=tC9bQDuu2DMYT8P7e40AVGLi9GIjbTRbbVv5514S54Nz7z/wPw7t1D2828epBN/+gEcDfY3FqxazMHlEza9HRkBK6JjIY803NmXKIRw7b2idjlmipEcGxTXfaZ/4og9//yiQXxu1WFW8MHdBAlwIvRcXYyib6YIGnKmFdrOmt30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWYeTSpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWYeTSpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D08C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745534393;
	bh=ZbDvnUipGRo1D6woYzsalHUFR7/Eh/sKi+XRojuex9o=;
	h=To:Subject:From:Date:From;
	b=SWYeTSpDBgkTS9eYBSaq2D+OZ92n7Gb5tWBxplWpnGATUwzQD2u9ph9g4J0LJt1eO
	 2KCXJCdKlNHzLCEF8fuIv1/sDyFLlinv34utuOPXt2xAhn+HYLLyrza/ND87puoWBV
	 Kk6tC2pLJXiRAGXQyfweug728kb/l8aOHHb5ZAVpZ8Vg+H2fhXJbQ6P0CUu/qpXgLP
	 F/q8EnwpswL06wPpSYcSdySItUia3UPeMBvJuQh0HbZ06nrnZBv2agB+j1GnOI6kQp
	 kFCD/EuBC85Il14fYnm8DcBsFTnOGVWDf+wZTFbjP054md56DQR7DFsVsTJ3MHLGTg
	 5YzTMiFRLNUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8EC369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553439357.26951.2039881560538889370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e42139998d7fa5902ba2b36545b05f7a72124091d841c85cdbd5f824b569757
Date: Thu, 24 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745534393
