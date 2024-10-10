Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1BB1CEABD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728588354; cv=none; b=LIkEFPpDXfg6I/sJOY4szwzHtzJxZ6II47t8J2ASF5JPd0xiPvtaaM/M68BPU+z6OkUgMEXziQ9lu7ZcZcbimK5xd5u97a0BLbIh8FnkuvOUJ9F/3vdQUmqQT6N9n4cOLHwDYOLtfh6rV/GFfLOPARdPrxNwlSL3SzXDQApwot0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728588354; c=relaxed/simple;
	bh=6Xa1PkU4BmaSDhTLq3zIlOQuXjazwL1PBIYbKZ+/dU8=;
	h=To:Subject:From:Message-Id:Date; b=KAKTJeQx7HTe5XXLHEh18IW5Vz2F4ZPCuWMipO46AcGuMhVU7hIEK1Ns6UM85guU/JStfDBLlPtTvZ5JVW5wB+wIwW3qrThMj8EvJjXmUbVXPF86mZPgKwM4yoMbcg0ZPVEx2tb0ctU3zUGslgW27P8+kbFLVH5E4gVIRYvaP60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7svuKYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7svuKYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC185C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728588353;
	bh=6Xa1PkU4BmaSDhTLq3zIlOQuXjazwL1PBIYbKZ+/dU8=;
	h=To:Subject:From:Date:From;
	b=J7svuKYPJ8nilRQeOx/XmMk0Ok/YJs4ltwZV+a2NPM6xbqWuz0w1fcgoFK7G7qMPG
	 zRmHC4CUEscjhfkXU8PauvAi1sbejbcY/bnUdY7q25ljqzx9wKvyZILLDXyIGU91YQ
	 9sRHMyy0axMVPj0tH2t5MjDH5alpPb5/z6EfOzowzO9fojmEbApSaTuciJbao+ItB0
	 DO/IpK2fhSdIS1+ZtwKQ6hCjO3FYqzANa+RGbufzXD8SvEU+bMMcTjEU+ALL49MUm5
	 d+a0PXDbdOs7BbtyRjgoOL2Fg/TZVJ56Qb/VldxM5i6zSM2rFGNO8JAgu9pznfIGcB
	 0zLN5U+ZaqdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5178CFC5FF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858835366.22461.14221612113675373137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa0dc7c9d7f7645c16176f76eb0e00e1b9cfc769f7d0ca22f6e4d874a523df6
Date: Thu, 10 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728588353
