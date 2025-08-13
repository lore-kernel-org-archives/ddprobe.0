Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C68462
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755056994; cv=none; b=S8tEm7IEBotTpBRcZ1nXRfdguQa3vWdjy8s6DhmxGkVzh+8EuPOqVPdnDrLZhiAkUWNlLLozEoaGrxwPegXxeQ9fYbNFh4Lobsq6u9jWpvfAO7oNv005KlJJMQrC+Z1y8vGQRUnCKfdCq70KTbgnfHj+cUybpHRdVZIJm5uzHg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755056994; c=relaxed/simple;
	bh=Pl4zbFu97deaC7+vMtnXXKb+KW2ItZrRr2RlmM4yHBw=;
	h=To:Subject:From:Message-Id:Date; b=FXUNIzMQ1N7IqSQONtsdeImMkBshGpskDlKs6dzWxD22PI0xy91dnCd1OQ488cIIaDm/WOFObShnnhtpzcGmoOAsKfP9phnjmdU332K9q6L2LtkC8153XfzUM6QSlvseZDQHC981fvFeGM9Vl9MfvNOzUfAG3Txg80HJXIIqiTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb0ZQKkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb0ZQKkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96D4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755056993;
	bh=Pl4zbFu97deaC7+vMtnXXKb+KW2ItZrRr2RlmM4yHBw=;
	h=To:Subject:From:Date:From;
	b=Pb0ZQKkHJo9g+4eZHN5MNT3omAOxi3RMB/NStprfBO5ZP862zw/vNO/ccRPPxdqcM
	 hmea/xRLln0meiBmFTe6hr3Fm9Q4wtnshASUx+TgfDbwXeDJDN/7aqaWAQLaIywOP0
	 WLpigSTypmzbqsWq8k+l7m7z2DMImBtJBFwkli3+8vdDlTiGI3RO0vc4V43ofbzlbl
	 n0yHY5AgkUdbvhXJ8ZMSHYyUH8DEjGiGPlIX1qg4Senahbo//bssRBePX0F9NXDLbr
	 RgMgH824XIo7e/YpSp2FKi4HfWVaHjrZjPnN6RgKOcvxGsjxwHW+Ea9jdANt5KZB6S
	 O4rdZS7qjL9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435BCA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505699358.24395.3501008327065395025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb1d61a68e47d29be0dbe70a45742bbb31f378fea26c670184e58ce3ad7c346
Date: Wed, 13 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755056993
