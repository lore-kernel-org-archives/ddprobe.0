Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3631C121
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711087097; cv=none; b=HCM92Na1+hMAyu1wgsV6Pl5FOTsMuo0TVfUN9IP/mwrP7FhfO5lI3SWMyOHVi4FWVWbfqGlmbxuidVPvMYVVylydos/U0Oh8Tt0ctYqyrDRQuoTU0o2Sl1pcx6PcZO20eQQ3398RzyYsX4qZBDhF5v6GgkiAQl1kbB37m32AGd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711087097; c=relaxed/simple;
	bh=ZsNHAsFgg1FcVTZUs+vqvyKHE5Ohk8HmaaC/geJG7GM=;
	h=To:Subject:From:Message-Id:Date; b=jBitLYbGDMEGI/wyTASx1bdb91Dp70SU7dZs08Brm44rvFDiGTDa72DuFlIalUFG1aoLFUmH/161Wc0V1PGuco5oPZw3mONYsIOTwIFPa7Ts5DCHbQWBlT2GRikRQzP1DF3/1g6YI9IxBlMWBluBN2fpg7dVVIYbA3C2aMSemcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVBpjD3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVBpjD3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F6BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711087096;
	bh=ZsNHAsFgg1FcVTZUs+vqvyKHE5Ohk8HmaaC/geJG7GM=;
	h=To:Subject:From:Date:From;
	b=SVBpjD3eakk1UyLl4GMyuEmdKw8iC1ycQ4s9x+JlKe6k2+ickHIypmbgOE1Ocg9ns
	 S0KqLghoTx2roUV8SjgHxoj9fI5PvRoa3Y27c6z+SuaD1Qs+c2foWt7lqiiSg255wz
	 QFWFo9NYer/k9VVMAij+y+TNxarbEKKKK4aZb52bCHIqHeynHvqfglONL8vCjeEHiw
	 jARVM7L8pen3iWXXM0C5vl9Sun8sdtfWAGe31XgAmO1QVZvT1nEJt2x9qSf9R0XK2X
	 BqJboCxxWgQ1hsXpjVt43YMy7yuAzwqTUWv5Dm+dQ5eEaFIR3puqFTLMXdppbAWxeY
	 deU0AVIag1CtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3C7C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108709642.17842.7443747407980940540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e662bc2bd9e63a8219ebaa72412c8bd1b3503342278c1ea109f87846adad57c3
Date: Fri, 22 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711087096
