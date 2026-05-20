Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B30F343880
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779301834; cv=none; b=O7/h9eEawD508ALgM6cgiMbmQXTPQtX0oEWeoGwbuzH+JuZ7h4ZRiCegCVuUcPz82FDRq/aR2fZEyld1vN71c+B9RNupmQ6zGq4r+VbQe+6iICNJtFT8bnPnnmB8iAVR6VvXUjNS5s6oZWr90VrSgR8iT220xu+8ZUiswdRPjHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779301834; c=relaxed/simple;
	bh=l7RRKshUKK6/CkBM62bs/1Ya14uSJ639J1jjUQFtwGk=;
	h=To:Subject:From:Message-Id:Date; b=EFauKBe+YSCXtxUtK/T2sRU50YoyqUJhL7g/eG0P940839fq9055ENyjCeJmorD9ucDZXD5MxxCOuH2/OVN9PFPOXASiFzVGH0qVi1q9PgELhSNQknR9AtdLTwERaZZW+FFUgZb6sS3YqNdX8Nn7fdmBuhEfvoK/NVcEdh0Aceg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSZwYRao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSZwYRao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EB7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779301833;
	bh=l7RRKshUKK6/CkBM62bs/1Ya14uSJ639J1jjUQFtwGk=;
	h=To:Subject:From:Date:From;
	b=GSZwYRaoe0a8FfnXjt/Xc/ZP/7sEu0TTYsZ8acEuT3AD7wJS9WKyKt3xnFoDI6TZv
	 SNPRYNRJEZo+M3OXkcp4ULOOXN4tYML6tnsN1cTSAep4Aw1H+E03CtPUgdggJtAca3
	 lK5LAJkqBdtbRKslkjvI7vf8o5w9GUKF84Xue0EUmWd3HqhbjgG0I/ALaJieAQsD+1
	 zgR0CM6YOlHbVefQm413Z1l4+5GSdvPMhe3Sy6uKRoPe0cw4diaC6IezUj1lpeBZlr
	 BoySb+ThnuL+nKFETYYEjRhCI0rkL/4EUn+Ar/QRKB+/E9yfr5IwaqiwZSc8FIwTf/
	 UslDHTR2y8KKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89DDCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930183374.32277.12817283545878005519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676172b90c0a84afa5acef7167b26714d3801073773bfdafdcf9597c17484be5
Date: Wed, 20 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779301833
