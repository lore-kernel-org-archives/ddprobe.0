Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9A3C062C
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790359235; cv=none; b=YUgGLaZu7iAL0S44c05ExiWjaAWaVxrCQGu6W/u8/Z8Jk9HPSXZDkwPbLfechQ/inLB39x9yp/6/Cz8IBo3dwAmzAQy2q2gBoP+m80O/dMZoEpliuxBD6q5IXfsdO6xQ8nMXBNFyom6czugfbyQvRvKh60PUFsNMA/lFP0PPUOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790359235; c=relaxed/simple;
	bh=vqYVO8hI/q3HNEJyyK1M7xhZWY8g1OzRRgA/T9TpsGI=;
	h=To:Subject:From:Message-Id:Date; b=YZeg0pPoYFyMI12Js+IXh1d6G1Nwja/dpsKT95Bx/J1aAnJhZhpKhUdtBZY2XIk4f4/4Ip2cFxcekDbOUNhMmfG4NsN6DX2KeMBI1ldwEFoMg0uMdEXuaZWFFICvxMbquufaVbci13c5Ob/4hptCAIzwWrC9/bYpSWOHN8vATgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3yq2b1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3yq2b1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32EAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790359233;
	bh=vqYVO8hI/q3HNEJyyK1M7xhZWY8g1OzRRgA/T9TpsGI=;
	h=To:Subject:From:Date:From;
	b=h3yq2b1guJIXHTcgdWvRzLU+A8eETbGnVLRU1ZsLb1CB80esbnnZOM+uIMh0t+vd6
	 zVl59HjYhFJyBfYE8T5TvHmxWdWthmTz5aNkwRX5+IS3tV0D9XQhFlHvky50XhwauT
	 3UBwsZeJa7db1Eal65ty/aR3Ev0/pR57bc7MJeHamOH4TCHLgR71cyqaGubv9MGqYu
	 HzxbJTsYeuCKdPEsb+exp25m/EjSerKE+USTEvIVre12GSj1zdQaFQveUM/eTJCylq
	 m9vfSv7BRattHZs68PGxZqMvTMX9d4HnpDlTFkF+4+m/YHb3WS/kMk/gczsE642noT
	 XuSH+4d0x3W2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA502C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035923368.14715.4185612986348350949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f50cb03215b29eeae4fdc85aa21fe4607cd370263ca124b83a248d7a97b250
Date: Fri, 25 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790359233
