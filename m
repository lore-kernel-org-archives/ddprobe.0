Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189E6220F49
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552795; cv=none; b=i97zraxU9fMYHNl6Bo7AHZ8eUXe0802Wx9kjJt3E7bJcfXaZYrCL7UiGiWEI1oEF1wWO9a2IuPgfGn/zj5r/zWpE+OBBDuNfAEMk10QZkP7/kt0gfForpkQ8R7aBEFv7ncKyz98KOuSSwNJOFUlCXs00x6+2YpHLgxlJl0BYxeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552795; c=relaxed/simple;
	bh=vvyespZDzNIlH9qXFGpso2bUdAK25eMLWohah+QDSNg=;
	h=To:Subject:From:Message-Id:Date; b=MtctLH/dSfnW9mpTAaUA1iTmxHQLJBsTg7Mw8Ec6cGP6jPCFsjXybcOz6cADR0Q42CKnul2GBZbbH20fwZ2EipIs4WCC2cb58HszcdxccMU3SA5tI5kHcr3X1uqNHg2hiJcz0Rmrt9FnEdtr5b7mrGOv3PlZpeg1YjNSYuaNX8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH1QS0gA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH1QS0gA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19FFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756552793;
	bh=vvyespZDzNIlH9qXFGpso2bUdAK25eMLWohah+QDSNg=;
	h=To:Subject:From:Date:From;
	b=gH1QS0gAquodQEKZpaRjyeJLGRE4ot84AVkJsBCJSwpi8HQHg/hw5DI00gpiLIyHV
	 66feMNFXB/7WAKzypHFNxfRZ1HEdKvKD1EDJC7sJsqHHbHcBarvLsPXQ1l5vsvBavj
	 6WwRFwx1PS/muzDdwJDokHrBvl+30EWMziUTI+oD+LHIdUtJvHxwAYChFQ+yzxjQ82
	 BtnrzMVbD6F69x2i1sHrjHuDIAlC3/Baz6EpKIzdK3HRjOby6V76UvyalPv6cyfFDb
	 KLCVk3UPHJwCIAxA8HTtZAX3oInPrGUGfI33SNH7TlVYP9vB5JjAZeZWdplOyUTJFC
	 gMGjmXlxYNr3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F2CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655279357.6216.16651971926718155996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124e2d68bc5d30f5dda304ab1556ef50f5ef6da7307f095b186e2671530e39bd
Date: Sat, 30 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756552793
