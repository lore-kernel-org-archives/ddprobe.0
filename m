Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415C13D978
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720673243; cv=none; b=tAAh74R1Lb1obt4rB/Da5AOIoY/9DeaC/Me/ny9cO3LKiB3ZwL7fF9kh77wZfgSCKsPZ53hsuHDbCGkGQlr7jh8n5rEnVSFE2/zkg+1mgj0CExrXGCQQO6ypxKWgGSAn2gKsMu+de/Mb7gzQBNKU/KlmQMyIFuRHj/aixbCIjak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720673243; c=relaxed/simple;
	bh=4FmHAi2fwox5trTqLUR9tWLdhDYbguNkZQ0Wwt2KDRA=;
	h=To:Subject:From:Message-Id:Date; b=tmGQgmuvGVpbUwUm4dB+ouvR3uFBWfkhD1AlJrvYZn1ZDUfpqNNeO6IGKiX5AZur9JATsbqSdlS5FlU7Ze0qVw3zLEuhsRk9qq66nXQ+oWXOesUItI+UCDs+DYA8KmaVRN03ZniW1LZWhLzEaKURklnTtWnrjr9aaHqNBhuKLpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzLwSBmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzLwSBmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0091C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720673242;
	bh=4FmHAi2fwox5trTqLUR9tWLdhDYbguNkZQ0Wwt2KDRA=;
	h=To:Subject:From:Date:From;
	b=YzLwSBmAVqB1xIcsOGFg8CI7X1AgPU5HEKA7yoo7kEdo0x5RtTHz1SXu01GGoBuVb
	 O9jgqznCbeUuTRln2maUYEWR1X5zNHt3LNEx90S6c2hTnWkylcn+tMuGlv05Rdin1W
	 sa/poPrvWwTW80J3+BtLm4sorJ8tOzt0qICkbllqtnqACv6eE0twlOVs0O58xB4yBE
	 DuvFosL76aUM/Sak0H477zF5hAZ9Q8skZZmMatmqesAzGGjDiLalcOk51n5psGwvgX
	 CL4C0KbMY5hsWeRJizliQU66pJALQZfsEPmD4DuFzFbshf/zs+n6BM1ym+9L4cRkZs
	 eMAa7QBR6zu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9541C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067324280.5819.16764649352569485041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6981312f16ce64b8927259060e43bb2e7f0554102fad965f84d56652b813439c
Date: Thu, 11 Jul 2024 04:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720673242
