Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157E309F14
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761121794; cv=none; b=g4/FVdOIHSFBB6S9qZrn6AdtDWtK+uA8KANpzXftxQkRj4aJdKe6aiRLOeN9JT4yAfmyHgiBPzi9/2Tz75OXRvmGZScg6eswJFNcFPMmURoy7v9HgqIiqNIyKvBd2vxPhoZfED7UPInof1SNipMBpkrfBEMHXT3ACpOJ+I3zZ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761121794; c=relaxed/simple;
	bh=HXvOuGLcwP0Z+zY4/R3p4E4w/P4CTT58amJUMiinj7c=;
	h=To:Subject:From:Message-Id:Date; b=mlPyB9g4OBXwF8bKLY1DNSfwTCX3PSiES/ZRapwkJVd+aV5mZhJXF2qZ6M3QL/s09rJtSDMF2H8a4AC4H5BpxCtI4T++lxh3JN3czpUTDs6tBZrxE9A09zf8CCb0lPsZc/7nridqEzCOKQMSccv76RIWOnTqTNrz66ManCB0h44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvCuH+G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvCuH+G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761121793;
	bh=HXvOuGLcwP0Z+zY4/R3p4E4w/P4CTT58amJUMiinj7c=;
	h=To:Subject:From:Date:From;
	b=IvCuH+G0B8JXaYRkGb4cc14V8LWNeE/826TL0M3RdVvRMbq8K6lBiYCCWMzesfEEv
	 rd6E3W9D/8pQZAEujSqWhH4112sn1ioHWGz67AMqACyvnQ4zN2hn5LT5moOZCOaElD
	 ZQdev7/JM4ouDXxKgzUzMjoUNLdWDCBpAg12m/oLbyc2iUQiaTHPgLd9vqTEY8Fpq9
	 zhxm0H3OTOPOXNiTl0OZpvytgcrvd2pSdrGPza7+p5c1vC/5iqNRR633GSVkqeYEw7
	 kV3VKl2xqASVYuiv5d7C+8AkQ77I/TU0Wnlw/TMXlmcwL5/oiSxE2NobtvNpLFutDS
	 QCH41wvpvMhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925ADCCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112179359.7233.15171995678564781088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18f6e109a06a1cc39bff8c6c05bb00b34d4814faf785aae7bc17b584951b77f
Date: Wed, 22 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761121793
