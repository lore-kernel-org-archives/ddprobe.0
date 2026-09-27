Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602A22673B0
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790497835; cv=none; b=fSUHwBcn4ReyAqvwoGlKCPZOSRR19nrBZXbQC/fZ2LD/5CbRoQIoYQeC3lNB+Hb0f2VgnhHgjE0RszAmc3U8XeTJOsT0SIfr2mJeGBfLSDCFmhGrZZ3uBUAW+X4pWIweBwmX67QJqIKzeUXRz8n5i8qvgv9nW0pMmnlQrPi1MD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790497835; c=relaxed/simple;
	bh=mH6/lzooHxPFb1IPqSAhn2MuuLQs0UcaWiYYJfV6hKU=;
	h=To:Subject:From:Message-Id:Date; b=nQLJLouPFm6sVQg4OPOx74yz0STEAO0uWLUYN5fuAviiLpLoRmrEPvlYf6sg/WPOHHJrrtdVdz3EIQjsz4e0V2b/bG0HK3UNRa+LgB+X9CQabMzkH/b1bn2qRXJr+cACRzg25DnRts2eBHsxjkYzCXjZilK4Ey7zTQZ5aQ8VR8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sheujHjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sheujHjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0196C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790497833;
	bh=mH6/lzooHxPFb1IPqSAhn2MuuLQs0UcaWiYYJfV6hKU=;
	h=To:Subject:From:Date:From;
	b=sheujHjUEDb2VCISAfHG6mHgd5OqLsfV325ASQRWCJ/4l8JuYRl+TjwikjsIPRwrC
	 LZjGjKJ5RQRg9BOmSO49sCLiSTlUMp8w16shZpgFn/YWPUj4yWw+cZW6g2elMkHLr/
	 j0ZRE8rYQ8LRZHMpyb2uMaTQY0yb3ZjVi65yWClTW9S+j+oQLhpTshHZqBDWv9afp3
	 F7KwBXqbOdV0lVNtlKXsSocBy/GihH2Ifbsx9nBUajs0Drt8rD8uxuZZr0b1g3psO4
	 Q0po3wh7N6Yuk96zpTEjSf/u6hl7dDHvHU63qU9llOJ3QvhyeEQfk0ovmr1Jp7OOx2
	 EQyEYwuSTuDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EEC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049783368.7844.16590551947121652013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c4eead8d545d5deb458bf484fa6f4a4feefb97043c09aab6a7c7a1ed7df74e
Date: Sun, 27 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790497833
