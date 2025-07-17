Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158232185AC
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752735594; cv=none; b=JdSRJWuObtr9n57E9jEhE5JfGBat8Q2HIEF6xRFnXbpHEwrVABQJ6liIrMTworPdXlAShQPpRxzHYTWsjGKrJL+t6Hcfvp0xz5Jo3qtSliaDOMShVHjJ5sF1BMe+vmWbkAvPsngP75NJ2IPcsS+oJnQdvMnRvOz6PgEdpK25tII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752735594; c=relaxed/simple;
	bh=+/ll4bUlRKcqmP0yHdi+9Ox8iA8ScXAh4c5AzayDL2s=;
	h=To:Subject:From:Message-Id:Date; b=abX+2LZtTKdM3Y1KAGbiUWNUXU8kdEHtXRyUqGND+q2BkmYJAyoxrBtXY0B3+gMYhn+HrCnvvtKaeBiQb/ABCKe5SkpI6Hze29XRCAU9sy/QLY338xQ5j6DetmoycgB1JD1otLl4oLcIZSY4QeCCXldv1Vauw1o9b1vmO1RY3tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQbq+uvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQbq+uvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F892C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752735593;
	bh=+/ll4bUlRKcqmP0yHdi+9Ox8iA8ScXAh4c5AzayDL2s=;
	h=To:Subject:From:Date:From;
	b=TQbq+uvAnxyUIQXYZyWAiXkezFkFkfHhBBojCx+OT5cvI0q5fr5sa0BSsrwErgm7u
	 iUpkxIOxyyo++YLHJ1kfwaUHEmfYJPddOqv+V4BnMAAkxXgXTqvTy8n4XRLxgkTr5D
	 dEHbC8ZJD2WnyiSvHfYu0Dj2Os5346Qmb6RBaU83QX3ClpjHBnl+jZCSP14c5WKN/n
	 sSbqgBAmSPYPT2sjDmWPI/6gO4nQLe2Vb2DgsIKNktKMaTGGvek2hFUzBSWcE25V/O
	 4Eq31VJ66OEtwQjDyNUqjoMGX6HCREh2Ux/tqpV/u9ycEvC7SLOj4EnOzoRoay0dB9
	 ZYSOvGApWC+2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADBC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273559358.7874.588339443413080436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05be998baea0125aab023e3729c16cfb17c6e8824d663cfebe59c8888304ea0
Date: Thu, 17 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752735593
