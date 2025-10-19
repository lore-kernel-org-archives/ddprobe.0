Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BECFB67A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760915394; cv=none; b=oyu/GPoT8IJ024atpdmOw8UjOgAuonh5beKvNHIH2rgJNG2FjhRsKkpcFuT49siBKNCPtz8EF51+hrz2uXFNLKBQxUNUJT6Rc3T9huOytoF17qiCEwwEYV2uwauGJ2TMICkXXfTpeO0ln/Lq/sAfrPLfSYS5TwkMBbU1bejeYqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760915394; c=relaxed/simple;
	bh=rLYjHsfMSfuvg3CY5GvfOGm35dCa5AAULJH+owJqED8=;
	h=To:Subject:From:Message-Id:Date; b=AtMEd6ITKlibiT9ywyxdpyVOhrTr9hYwmihfMTtocMApDDrW/CS62bZV7CPBtjmTsnQe8vw6tgcr4SSj1hAK4Z7f1Hzk0OKShLqyWK+eN5C3OfJzMB/K1fbETJyJHIWAuzVnQqN6I9RwsoJV2bX5sYxLQue58qRVVLT/MnTbKJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP+vT24v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP+vT24v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760915393;
	bh=rLYjHsfMSfuvg3CY5GvfOGm35dCa5AAULJH+owJqED8=;
	h=To:Subject:From:Date:From;
	b=lP+vT24vLiNp8UfFtlEvJ70uknPPculhbFC/cpsC0r91o1/bzk8XdN3kqFE6RwkTf
	 HFw2uWSnA9tPpvxPQhIYqzKd+8VkdY5+tU9SRcAMtvoUhFQcPi20FRyn3Mf90dQrpg
	 8EXpBf9wRNGh67/fCpwbNqRQFiCF7R2vsZ6SehRxvzzabkNWx5K1qECcDIVgYQR5jj
	 MQhQ6rnRsLCixQa0YTUmetsZIFbnP4tZcOT/drd7aqjAxfhAVUHct5v1IGjX5WYVDZ
	 otdlB05PVn358nvDWRCaKbb+4aToLNyJTrujB9pqrsevcTS7+fR8E5xFRxaClOXNks
	 sVh3mAvInge/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93017CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091539358.27794.16442046758054886924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ac1166b28c517058d47eb326953dfc8e603a1ea4d770de1ab267816bd51f13
Date: Sun, 19 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760915393
