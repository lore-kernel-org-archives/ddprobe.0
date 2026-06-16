Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FFC3E1205
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781591794; cv=none; b=XmpPX2MHjirT5TqoNxccOVkR9Ph/FUmiai+XWKmFfHTvV5ZtAuaDj7HXtLlcpzR0kRNyOABlvi+u2FqZNFzV618pTkWWqbw/h0BBCtZ18vmsTpYy/tSMfw+5GsUbA2DXnxnPgGQV9vYUr4RiU6OOuRL/QfNv9x6JT9A+0sns+V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781591794; c=relaxed/simple;
	bh=KjX4CFiD7kipeGp9OTGrKOWEHCGAzpyeE4ZktS7zmo4=;
	h=To:Subject:From:Message-Id:Date; b=ZqAbUjOgxFnjEqNv7W7jOZ1S+iKDhT26wYH2NWFg6kg3O238rHRTAzfo/vePyVoyGkkTNp3pmryWKlQ+6BBpFQwTHVd+xooSmvVuu4Lafy8mPHZOWyKvuYUmqN17xf4AnqNdJYobPX6ti/TWqHT5fG8QDaL8DR4QCnnlcZB+/VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdo5Vhiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdo5Vhiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4242C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781591793;
	bh=KjX4CFiD7kipeGp9OTGrKOWEHCGAzpyeE4ZktS7zmo4=;
	h=To:Subject:From:Date:From;
	b=jdo5VhiukCVCFWwUujRa7xIO6vrSDBqNpaIoFSU244U6bE/rU83My15X/mGeEFJkc
	 JPT1pTDUnv2X3X2D/SHLw5VIjo7obSxJSziB1I8uTSxw2N+Jopfk7BoRs/30UCvQM/
	 hnYJuvO5Sk8doY1oV150mckWYllyTE2Fdz9dWbfL/LRlYnyTwJFN7z0O2fx+KYHBG0
	 r3xaanAvscqHDNt8g3ZXJo3yS6V5kpCziXqCT1w35aQmBjVoWCacoqIH6tYnq37EUd
	 XQytKG2zdQjLgOi6i0hfDjC0eUqBknZV2D3WF9tDYghHo/N2YuTjYhDmN0mEK99o9p
	 OBaO+b/BOH7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51C4CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159179372.2438.3322067650495287823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771d7b076adfe4e287a0407454623aa78c6689bc85da993a42f639d8e6b371e1
Date: Tue, 16 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781591793
