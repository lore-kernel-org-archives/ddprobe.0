Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4262B632
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720055723; cv=none; b=VdL0FlyTLrIXxrH5fHl3yf2qYfNSSaHBxYvHrhuYhiSbWHQtiBc9WZ6/EbEo9qaT8UiumhnSO51ZjwpWNsrTAFJNQFlAIAaoEuweQe2DpLbL8cOCqTEKlz05YZzAENxr9v1N29XIfD/hsULLKv9uiz9513BHQIyuo3Cgi8jCqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720055723; c=relaxed/simple;
	bh=owxgxVql0dFzVFdbUQzMPtsLwTPspisvPP4vGsewuVA=;
	h=To:Subject:From:Message-Id:Date; b=XI03BaC6fSCPiLBSr4oQiPdiyDIkXYte7YhR55qEkkj71HykkD1dTkykLRhJazyF92221acuNbkd5TgEw1bxFU3UbTj9zxvWIHsEIo7fmhd2e4ohAKxv7lv0r28WGQGxTi8Bs8bZlhqlFOsxDURYTSFQWG52s9SJRh7MlcgMCHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1Svqlsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1Svqlsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDB3C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720055722;
	bh=owxgxVql0dFzVFdbUQzMPtsLwTPspisvPP4vGsewuVA=;
	h=To:Subject:From:Date:From;
	b=m1Svqlsn5eH4iN9UMAdOlFMBA0qcC/Wyq16rjt7Pb8qjiDbhYWcC93R7Eh4CaFk/j
	 q9RD62EooYR+q6zokRzNeuw6ZPf0Roxv6zIkiWccCW2Rt1dJiQ2oIJDG2KWf6M8psN
	 hYzVWIAFDjRuFmUGfwemfTUvxp5LyGgF+KV/oqdMvj7FVA5JGLFpKARgh50ri2y/vN
	 6LLBDIEp8WO566FvEAkjE0UZ3H8mWlFjQQzzqKDTWCWmBfgesphHaiFXPmfWhlpl0N
	 VbjWqhn53XhULhvRBQDnjSohowTFhHnBVScAkIraSicsa6VPPG8PFmhuGjG4tKdLnT
	 THJbK0BnYDoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0559C31D97
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005572277.31361.16911030005917439031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45fed4115e34bf788822944377cea6d68ebd410894566f4f951282db96b5ba5
Date: Thu, 04 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720055722
