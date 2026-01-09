Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193F9500958
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932634; cv=none; b=qYulChAIQF3Dv9r1zmDsOL8Rtt9RANmNdq9x2ov86CK5gf0fuwySvIMXe/E07ZByR/zV+ROvOKL2eG36UW6g9eIhDE0Apml+1/F/ZpF8eRokilNPK9mGmxFoXGon9D0te8wNcJ6NjB2DNmYKK5BGsT1YHznTYzIqqQWOIrCtanM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932634; c=relaxed/simple;
	bh=vYiGWqsrE02xjbVXQEhhFTBAlOoP3g2pmxeiAFDu/tY=;
	h=To:Subject:From:Message-Id:Date; b=lzYf/ZQSr6qFJrxjxQCO51vrF+Y8K8jIqpAGkIwaexWRHydPlenWswGI/7kR2FuIWcbPnFQBeMsNghjLseTsg4666H+mzFqYP48WSgEmfaSExVKhVT/a4ALHBSZqALFU3b6UDaRvVV4a35oYN4T8+gxElkzP6R9iwArKu3Hy1R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cutTIsF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cutTIsF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE38C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767932633;
	bh=vYiGWqsrE02xjbVXQEhhFTBAlOoP3g2pmxeiAFDu/tY=;
	h=To:Subject:From:Date:From;
	b=cutTIsF23rKHYZ88UjbDTMwsobEYH8h5bdyAOjufNtj45IYa/KwW9T9h2o38iZ1Kw
	 86vJHr3YcRjlSYE3XuQqoxaz8tjuQbytU+ghOAb77XoGlBUenDmMmfmXRWGaeiwphV
	 DWnC1A3U8JCiCNDgYPBPWH1MC3XH/1+M0AfNZ5GQAUfw3qDDrTDtgCsnwKzUJnWTMM
	 cuu2qzbVlVYAQ4TUzQHAKQ5F7JHVp6WbY81jIwz5iys64QeMC6KtZGhaeJ8D5CuSf8
	 Es5rOgXe05Ypq4PodP1dbXe4MN6713IyzbocGZrnNAy5J9dZWwANusTx9+LWNO3asA
	 icX0TeSRyZryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD02D232DA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793263359.12331.6463532470336951828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ac6132bd26ccc086e580fc062bbb3c8f3d56ec4b5bd9e5ba6ce81ea9101492
Date: Fri, 09 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767932633
