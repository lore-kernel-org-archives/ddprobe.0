Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FFB25771
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790662834; cv=none; b=rY2NMsIhLqlelJuQug9bPuQSrR/Xob4/vKzweGgkjAJw2B+At4ol16SSPVkx9Ddhkklj5+u8XOMMPtUc64ITDzfTMrkpUeyS7pEioUA3hcOMp+7fLZr4VqPTHiJLVaBLgIWXuk/aOuuh1GiKkLTJQmAlESaiWCykLGHaKECuoCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790662834; c=relaxed/simple;
	bh=mzDSxMVNPRBdVhgQ9Gij/G79d05sy7M4uVlKfr60cDs=;
	h=To:Subject:From:Message-Id:Date; b=CWnVHG8E+KUsOCgWtG8B4MvkDd9jZtmyJEcsYusV2Ra/eolpOEyNT6EGhIgtlIeUf4HKL8XW36ZQMnp0l+Bpx8txg23IOrwAUVBV9lP1bWJ/0m2V+UOKbZ6e9DAf4/rU4Gwfrbck8yah28N8P9ZB9WgFNGUGOUztxhBB0YgBowA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+sZ5YxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+sZ5YxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC565C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790662833;
	bh=mzDSxMVNPRBdVhgQ9Gij/G79d05sy7M4uVlKfr60cDs=;
	h=To:Subject:From:Date:From;
	b=q+sZ5YxE82KSSVYyuf5qQcjIWahF7ZFdXVBfLg/0VfmA2LPskKL+9BVbmVJ6uz78e
	 bsAA3EpzIaPrSxxskV6Zcd+m2bZzE3tRUP+5jDJM0S3tkCo1Iofs+9SFdH/XznbtvP
	 koRapLocvAFn2l+1ho/nsXT2QpBY0aAni+dick0GpvQSMBJG/ak16Ld2PRktGXbQnu
	 e4EcnHJxlTDtzMRhxCV2vGtMXBqLwDXm6QKOz16/XEelVQOQTKF2gP3MqdpBekN8Gy
	 +CFNiXDwHbz2fWRdW2sO9GBQFZaTylXPWjXcqHEfpNFrBXV5b9JTlc/rrTLzO6y6Nn
	 SbdO0x/VBCe1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E4CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066283369.5691.10559753156699070887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d74ca5d70a27bf92f4ea780a5f526cff4fc956e54d0c8afdf1342ad342bedff
Date: Tue, 29 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790662833
