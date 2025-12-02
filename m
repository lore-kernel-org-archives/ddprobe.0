Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42CD2C3268
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764699773; cv=none; b=eUUr8ZAYUA05/mMIBZNlud/EOwWA9oAR5jliUWp3Rtyqrax6ehDBSUVxt+g0p49esRSzw+zvGxb03tc0EANIX05NsPzfsrW+TkPu05TN7sczNudQlSvbaMh/83W5PvLBW5sx+WAJO3wokBfhCdCACI8I+zxT4dfGLs2W0StPivU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764699773; c=relaxed/simple;
	bh=cEAkF63jhPl6eypCMACqu1QpRCMyiPD1zUcCVcSm1ic=;
	h=To:Subject:From:Message-Id:Date; b=BA0IZRYSH1jicVe9ayuJL/iNJdnp4boFsf0zFAUZ0BHvAGcEzffQ9eJf5YTNm0sLULAzdDEkmOQCwD+XRKpfjcKqOES7S8FvuOQjP+ryRNZMCCre/Ra6toSQ//99pA+SE2CdBoy2fhU7Cz8YW/9roMqZlbiBBgwWXgwTeKLVGjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAxor4hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAxor4hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A006DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764699773;
	bh=cEAkF63jhPl6eypCMACqu1QpRCMyiPD1zUcCVcSm1ic=;
	h=To:Subject:From:Date:From;
	b=SAxor4hXJtcnplrdAfBM5bscGHooXyCkVna+l4PtT3V5c69e20TftVY2GAn6vyw1a
	 xemA++Fjepj4EffjoW+OKQw7gw1bKZZBgbDUBa0hx6OlYS0/X+a6c0r4Vq0Dwg6Yh+
	 WDo0Gwl33DmvR/vxBFwN8MeJH23D0rQRmSch5DvuLVyIVt20tt8pxIE9v9xmBs0v3z
	 6xUYTKK9+BUaqe92BI1jC5Tz2Am8OMH5HBsW9ITT3mkbLknNzBCpQmoHLTeAVoNzkS
	 JCi1VQMwMSYgFXlrnOVaQQnQG+MJBNxwQvaem82ZxYSGZeY0MDKrGuykhUtz51YxgI
	 oY2WGlgNbEwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D73D12663
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469977358.26763.1588813354665389197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca923c5c47a94f03e14c1bda72e2bac10ff0741e2cf419d4a9a412ef476ff43
Date: Tue, 02 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764699773
