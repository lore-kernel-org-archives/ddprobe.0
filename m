Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9C2EBDC2
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759411794; cv=none; b=ZIzD7aqTOi9pJaXNhvOC9p23LkM2eb7vm/0QpTbBg4FeWQApUHoh77IeFn+XXcLO7M2sZDbb8ZthvXBP1hhcr2BU0yiuh5dicz23PSP3YO/U/JA9z3glWRVU+HZ+NJOVTxwR1vtKTOU1m0NMjD/WnHoQxCH8id5j9bIdEjTCL4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759411794; c=relaxed/simple;
	bh=7BrYnEdeJAuVjiwAOGADje+q4UMBNXkOPjzbVJrnAOs=;
	h=To:Subject:From:Message-Id:Date; b=X7Pw1f/F3+1w0MaWM1D/eIsx8pvfvbb4YSPQHXXYf7HIt8jQzu5z5abg5Hhl1Y0ipRoQ5dD08lRuywZ0W2vkA47tpeJvSFvufJFPfjtqcvtn2rFi+kGWUKRjLOg+7wUdJ9P0AWn/IzQus5HsnsScNtNpHyi+MCF7k6o5Vgj05qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isPYFuhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isPYFuhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB45C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759411793;
	bh=7BrYnEdeJAuVjiwAOGADje+q4UMBNXkOPjzbVJrnAOs=;
	h=To:Subject:From:Date:From;
	b=isPYFuhu1FqMDydpI63lWlY+xv5jb2bXCgrRjFeeJBJFKrw8CAzVSHhhqwYXSK/j0
	 ha778Pn7yQtePrBLBwA72jx1NHqrV+u9uZ61Jr6xAhT43qHNT3bt12A49+Q8N1zVjK
	 LYiIGf1tmKsfPJhCGdT0mHwGp/1hQi4VKvWuenAWFK8aqWoaGel+wAD8BzuDx8BHIH
	 J5bajUkVaAxmFntR7oTSyd226qY1E7F25qLmrUzSVR0XChVuIGO/HGZ4frGDE1HDSF
	 bd/91RWLOhFU9n7FIeEBQ4hsI3JkG95kWTuWs0SCBCmV3jjYbmmx8P2F4argx3/Zip
	 Mkie43sw+osEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1BCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941179357.29336.1941464533270025365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69aa34c03047103b8cc357c463a822bb340e736894b24d1836fd7704f4cc97f
Date: Thu, 02 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759411793
