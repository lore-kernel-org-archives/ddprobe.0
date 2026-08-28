Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5783F25B0BB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787883634; cv=none; b=XnqTS4ozOp/brfmMdbqYV8RnI4fym+1rjnizkBZ87j5pa3OrMBxjzPpB6hyCxj7JdMsyJtxEVncECRZQed+4Cr9ygcXaE50f+vA8ohFSqNNFwcHQ4YsYn470jnwYfn0xJF+SCQE5gH/+rF7UXyco8t8CyomVouVHdA4Rj4q7ufY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787883634; c=relaxed/simple;
	bh=1yNGypNd8V6RZSywel/alIsBVbF1la0HjGgrzjVtu/o=;
	h=To:Subject:From:Message-Id:Date; b=m49+lcVqMFQDcRlBbnHKMZjtzoAkbLsopEqeKlkC54BxdjTdSCOBpSZdOmHh24rDdP+hz6fiIjmTrFxmslq0LF6bTAwk52wIHLVu6gaRReNeGt50QMZDZOoGL+gFGZ1NRy3vQPCMK5xzQJPrHOPNj6cmt5Xf8z607VwPIC+wxlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCUBcLzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCUBcLzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE288C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787883633;
	bh=1yNGypNd8V6RZSywel/alIsBVbF1la0HjGgrzjVtu/o=;
	h=To:Subject:From:Date:From;
	b=DCUBcLzZYYnjmUrtbwfBeX4v4Hcpw3tkT6kOERWF7inmEXp1ZbSh1M4TyrwYhNlkO
	 UhSUxYZrt5NdoLIkc/QtJrO7w4XOYEBzmnB41q7ehVhx/MyHfCshTflbP7JFA30aHS
	 E0DltZ+XZE1FBX1L5B22F9GuaE2Co3yW+QeaCvFZSa7/uZZjprOsaWI2wMabpPGBww
	 3strFIOyjoT4+9WX1oMl6HufSOmhXFdV5d6XWwDNXMdL+3S8HYRcEbsj1DCjN5Nc1P
	 oSc3Nm4hwGJtrcgZ39+5E5iL1f5v5VF2gVIfUbCZyguxL4VqaXhn2K/aaugJW6Yqsk
	 nN5sVZtZ9+/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82AC61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788363368.8656.5765577257098398823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f68bfc72d96959e85b8e18e27803a646d6b09bf4bae356710bfbb7901ff9bdb
Date: Fri, 28 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787883633
