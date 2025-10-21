Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8012417C6
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761085794; cv=none; b=Z+l7u8UpHszTR9PE5h5IhsNsnew26m8n6SY1glwFMWqpffFQfM+PcQ8kX3xV5Ez4BE9xd2j+7bQU7vHZBqAahMKTFR6M6S+ZPlyoH1ligZeMLxgxMPhhM7SpkGwbK88ZSnDPG8OLz8XrlDQxJOY+86LzyD9CXFO1wAsQq3l1ntM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761085794; c=relaxed/simple;
	bh=rIgbFy2/N4jN1RKAJAkDD7iz1hnH2XiDAZEx/OpEry0=;
	h=To:Subject:From:Message-Id:Date; b=VyDSbY9CPqsyBTsKe4747PKFJlEBCDyAFhKGDPSoOCb0qL9o1iY7zw1SpPNi/uxR74mhGB3BwHskyTiPTstxxgmvJWrfQZ5eWXPOp515LFHLSp8Xt75GQ1DsomVYeele9p9i7lTrFj0ceajjrvzlYX8P2ft3SZTSsVbxDi5jvl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMellK18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMellK18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94DCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761085793;
	bh=rIgbFy2/N4jN1RKAJAkDD7iz1hnH2XiDAZEx/OpEry0=;
	h=To:Subject:From:Date:From;
	b=LMellK18pT629jBEZyTlgwHgaxKAVWNfGpRHZLIcqsLgE+G6RCk2o/xoTdhn9AA4C
	 0ARuNk2JXJkqy65fLVkyPJucnCdNHjWHYPXUJ7VfgaMKD3/iCm63ogUse6P9Q+fWOm
	 +CuzUiabKPgJZBRrhKMgOM6zGTHtjLURvPC02b4pWBJPuAd4r+UVcfP/jgf+0Hso8B
	 yzVKpkOfyEafFgOwKpwh7oncR64mfZspCavO/Z3On8kCMYNORmEHqq2X94kew/IBaq
	 eivBB54LtvGUHTiUJuqcaEqbr0RM6SCttEYfePhMfAQB9bgnp/bS0Oqf4CskLdQuGW
	 ZIuxTlIrVc/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EBCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108579359.15983.10547319183299051414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6dd4678b24f7fb968319ef3610fe09c45c59a9933d642a9a9a365a1e85fecc8
Date: Tue, 21 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761085793
