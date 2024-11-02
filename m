Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519AC1A0B07
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730572554; cv=none; b=NkzgCYsz7evGvcEp68auSQfS+sJ71C31n76QtofYmpMKvaqMiy/V0sP/nLYraTyGm+zfx9c5Z7L2gxcitMYR4GBeJSuXoIocihX53/s32sOifCV8nTdDQZ9XWDbsrZ8TTHkNhjifI0xy+a7QB/blXGm/6xFRF5z/5EovBvdkIyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730572554; c=relaxed/simple;
	bh=XRJZ7ZUBMWGw18NSwm+Vtoz3Agv67dQHYdf0sp4CgV0=;
	h=To:Subject:From:Message-Id:Date; b=E8GMg4xYYhS3OQzPCw3dJaVvqpATI3JOeQRHsoxSPZt+IgVc2ksj5S/PQWrRnCV4ZHFEZ0DLT7q5dWfxwLDPB0Hu5aroxAmpb+alGGrAYSgSNJVAS+03otlOBaEbtsu3j0H//dtIWGZoEntkp/UFfC807caIdHTXP9KHvLlAkeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNtzs5EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNtzs5EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7DAC4CED2
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730572553;
	bh=XRJZ7ZUBMWGw18NSwm+Vtoz3Agv67dQHYdf0sp4CgV0=;
	h=To:Subject:From:Date:From;
	b=LNtzs5EC55CzbB3jgpyCj4d6SzJ1sjU4d49Jp2lea6IQ8qGw86jgElQkjv8yOzeqH
	 IUzCTzzCXAixDYELnlEbvfirdAt08gExBtv6GEjeUPpOSueAtjlLVd9Cf5IRCPz98T
	 8osYEqsCv+saPvBu0ZVAq2Fg3Pt2ZZFyqb7CGjtjImqI1zUb2FrzGb1IJ2ozaiViRd
	 ijOU6VLSGLze3tYcoEg9D07EHizn2MpT9o/j1QqgH+AkEkjC2GiboobcjbjmyLChs8
	 B/2ehMTrJYysajaMIO5u0ViV6wFjYlrjoTgoivwn6GtPqVCw4xof+Cc5GrU9uj+jzW
	 97p0vFF1FuTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53B1E677E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057255362.10504.14173447760518496151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f36ee1b9fae71c84baf512e295a789aa5d628b43ceef15d6e04cddb633ce19a
Date: Sat, 02 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730572553
