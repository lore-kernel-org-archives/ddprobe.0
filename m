Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5111BC4E
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726505154; cv=none; b=jOO51fqe1CwZfSOGWMD1V+XSWy0uXn+RRr22le2/OmkAppd96BBbiyZdaPGe33DmIYWMZpo9wSRnD7I07Gd5MDe82aHZMwrGKq12EJh5n2ZAtJy3vFLtC2aBbRftDWpoXuQMOOyLEEUYmuvMbugcfsayJnIJysWvjgT1/Dy17o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726505154; c=relaxed/simple;
	bh=BZIlB7e1e5f85GRGdrRn8gzxd83rFgSyZH+oTFShIuY=;
	h=To:Subject:From:Message-Id:Date; b=dvpmsADR51lESjc0IeENIfLmAJ9dsb1UVoB1wkhYZax6l2PmAHoB8iiTCSFGqPSJ+SfSDSyQHS7XUOWRW5xtqAUk6zgyG9/q0LNYB62LL51JRTWucStdsF7wSNH2KjfvBdiqnOQS2oBC+HB9EbcJZ2FEtmubKgGKtg7gMH58UFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xsz7IEkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsz7IEkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF56C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726505153;
	bh=BZIlB7e1e5f85GRGdrRn8gzxd83rFgSyZH+oTFShIuY=;
	h=To:Subject:From:Date:From;
	b=Xsz7IEkvwd4KTnAxC4/LxcEmqWOLW14rbNWQTWkTvqK2bdtOyoayNS8ArViJ+xhFw
	 gaioQZzlcDaOOKYAetuNH7eL5NrX/eUIjR6joHshvbxRzu09c6m8OS6OPws7Syvcu/
	 qr+dI5lJoOdKnfHRpBz2XyNvd43Wc6OlcFMg7K1FcLAuYnj45tbeLuKiWxMviol+SH
	 aJHiNJBtFFy2raTWkeNAqewR9s+e1QDoCqlVx3rsnzVwxcCoXYqkqUMvg+TWtyczVj
	 17NhvvwqEehErLumyALQTn4RPDwfPgekWcVINJRtI+44w6DMJrhwSH4ONMTDfsWhIB
	 2+bFE/Y3OK8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCC1C3ABCE
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650515362.23895.15732317280179910416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910a3bf63a04a3c7182f8c6768ca6c649c716dd3e8f7604408bb9d61fcff4825
Date: Mon, 16 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726505153
