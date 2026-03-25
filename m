Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA67351C29
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774430094; cv=none; b=eC/aLCcpeH5kMZiuadIuAuFkrEa5sIqm6YEAE64wSDJsqASQu89GxxAFhMfHbybr/GrE2b5rxOFOMy6t2dbzZpdto079WulTnvGH6I1FjAFQnJWKzL489OEjeHCIntHSizMBpmtSyniRbkDdxNU8lH0qy3PBOSvtQJKIW0KSFHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774430094; c=relaxed/simple;
	bh=fvlfRk6Bo31dAZQPRDaJ23I5BoCRpeRwammpn8wuz4U=;
	h=To:Subject:From:Message-Id:Date; b=VUemBGl87pGib85uhwBBXfzCF5eIbUryeFjrNUJfpRpevlcuoOJ6R4jilCmII2V1LsTPhWpc5e1Pdw1HsgJxG6AmU1rfGZgyMRzVhU4S3qIUagENWTYCKnerVGIMyHQjQWL2AhMKcowt3CLhZSIUcygD9KaLH0fCh3yDDmIb6J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKW8lne0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKW8lne0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B080AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774430093;
	bh=fvlfRk6Bo31dAZQPRDaJ23I5BoCRpeRwammpn8wuz4U=;
	h=To:Subject:From:Date:From;
	b=bKW8lne0ENX7x3IzmMhgOQjnLQq4gbNdcY2kjN3t+oIXnY25/V308btr5jv3QG7Ds
	 E0Af0OPJ8b7ksXzTQ5TXG0ca4eJeRxWn1BLB8sCc7cyUXbUU2qlmNYaDF5wJGczp5F
	 +zDSIqGZJm+DEOJU8fy2zeT2D02vqHklwYqJoyuGLbDz2hvvpBQ6dhPzXIIRYCursK
	 8DhDEiMCGqPKQBO4Nh6+NhmAW3wlW3L5+80SuwoQVEOIItnA4SbK3YtYQ77I5PAheV
	 4L2dPJJXDhBOZ+sEnnFj0UkRdVDP20aAJAnZe0StgDIRStW//55HzKz4kQ7YQwBi8I
	 SwhqVNd6pw5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F606FEA838
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443009362.15443.14580042912807635415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339986ff8b30fa7b95f5e3281f04e4e0a946ef55b5c9c3fea8bc0de8345eb3bc
Date: Wed, 25 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774430093
