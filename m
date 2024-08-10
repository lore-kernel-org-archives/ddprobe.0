Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238CD2F5E
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723276554; cv=none; b=DvFwZUtaZZzj9/4e0X0SmEXo/7ZR1uMi5lwj+xTLNSge6LUIKUFbr811jaeJheDGHTxpPCSWdPsh5P9UWDlQ1hdpyqqC/kwGg6x/C5l5KC7GDSrjgFVBVlJ+nPBzfri+l/iKFyja/mQybet1Ckbh9KGqiQ+I4ZBDiObxjrF7ozc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723276554; c=relaxed/simple;
	bh=x9Ewijp+gRiuwcphPE70Y/pvBfbRyIkt/FcOpXxmuOg=;
	h=To:Subject:From:Message-Id:Date; b=sJSAeG1uVkuq7Bw9cP9qFjrb2vmOFpNXcGRMbiVrXIwLjBloIP/zvunTD9VB4EM9rQRoKIJ501FSJ3djXl3/6YEKW6sRPoB50fp37V+LqU2GklpU2Slr+GA78+tQQ9pQNtBpSGMFMrCY1+rO4gvAnpXmh+uekiQhgl2mS7KT9v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXY+663t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXY+663t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A889DC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723276553;
	bh=x9Ewijp+gRiuwcphPE70Y/pvBfbRyIkt/FcOpXxmuOg=;
	h=To:Subject:From:Date:From;
	b=kXY+663tgMgr/KX6Y0cZtZfEfm/WC5VmBaMMd1X+UKjSeogy/aYHsKzSvADk+0ZgN
	 nl1VTR1kMB5EJQYBeNnQF4Sy9Lee3MH8qpi7Gu3QbISast5W2fC1F8TcFnL0xERGBM
	 Zvx+GCMVTyylyyWInVSnM2pm5sC4qgat8+55Uvj/nH6JtbcVQANIjh/d2yjsulgN9T
	 2pNKWh8nnt8h3neNvW/rnrJD2fz9GA8Khj0W5KwvMZRTJaGDXNbF6WWwvT0sWtmvFq
	 6fXkoeG2p88MtQGFPjQSkp2AL9KcGZp3jj7QHB0X/vewOwrdEuMNevFp2oXRpP8atz
	 f/7JjXihvWTMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9CC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327655359.13855.10444913436172431259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901a3d0e5c868af7ef8fdd3770750b379ce2a36469c50cd22fe19759d873afdd
Date: Sat, 10 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723276553
