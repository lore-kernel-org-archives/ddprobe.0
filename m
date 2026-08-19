Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF8E476CE1
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787152234; cv=none; b=eLTaISFYi1PgfDrLewLkHehFA0JSE4VSzDjsbqVYvyrasU7GBAIwaul4LzerpP2T23BnYi0/u6iQouYb5CRzmKraZb8mybWcI+6VNx+a5yrLcBIojJuNqpzEAoc9GBODFpYk4MRTJiTs/ioMuu/aGsHHXVQXKB+vdyk62EXTeuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787152234; c=relaxed/simple;
	bh=+64MW95+lqkjrSOQmpVQBIGQPoOC16muaaLRd0AaZ4Q=;
	h=To:Subject:From:Message-Id:Date; b=kqtDGUk4YNOMT0e71j39dI/iMg5J1hTHrFq8mpfe1C4PFUsvk5LHFPfgkv5Nopr7VnmDSoXOgeW+/XCZ8Px7PjLto1yEtyqG8GilaSpXaZG8JF8rRKNfNFiY2I54HpTK9EtxZ2WbBp1HTwURg5zUrcAY/4kHffMjLj3IoLowMio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ixm5eVvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ixm5eVvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08D3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787152233;
	bh=+64MW95+lqkjrSOQmpVQBIGQPoOC16muaaLRd0AaZ4Q=;
	h=To:Subject:From:Date:From;
	b=Ixm5eVvXMmv9SrZ5RsYE+v9NZ0Pbs2FS2QJ1yF+6LLeOnLHi005G2sQ5FfHlaR6nu
	 d5mWt0/lvtUz+r5qCqFJINnEbOLtJbPE9VqTC7NrL2GODQNpXXFDiQh/Y+JT6OodQL
	 kiz4NZUvgHS/SXuSYURmzPZAwcK6HMmciTs3+BUG27itr3SfYuhpt0mKWQKe1UIlwm
	 z9MD+0HXQfpPeP5BmTHqJvz9AD8IamV+XxSWYjEl5TOlVgfoGsn+m46xCZ27ZYySdq
	 e4dGbsFHV1OqdUvv51mWgi2/kDuR7FGdEdx4C78Xb8TK/W+qnvuqHPxvwHJSH1XrMT
	 7KDCerrnFolvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FAC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715223368.4273.17594259865045952671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e325163d395897a40a576f974378c9df5229dddb65f9ae2b54ca5d0dc9635e
Date: Wed, 19 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787152233
