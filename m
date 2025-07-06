Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3903A125DF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751765394; cv=none; b=rU08GfNGaOhYSg5FEVzjJ0EzBaeDsli/0M7AGqWUPg2YKAJCjEPjrBW7UyUdUuzDxrctUxRjmK7VmTpcW/bZyTrJbZPcIMUJ0HBf58rmlUDkzWVg/vcOSUrtxVM8iZMKKUcqqVtxqn9OCxWceW5UaKT/6v03uStadw/D6HljgxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751765394; c=relaxed/simple;
	bh=/HmkxZ0Hh7Fboio8q6pjAK60opeWF2PfFkNMqeI70+0=;
	h=To:Subject:From:Message-Id:Date; b=UW1qgwBEDvmtEUauIuRprZwiwACnZ759ZB2Qx5R32cD5EhWzuy+d0/oHg0TbTvO3eqY+cxI51l4Z1K1CWNMTLf3KzU6a0MM0p4CQCeMKkdKSZofgrMo0kJ/2Vbw1FCbZe85VMOSU47vxqaS4Kdk/nKlj8dUjhp8pRQvXBnYqbPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6//MLyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6//MLyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751765393;
	bh=/HmkxZ0Hh7Fboio8q6pjAK60opeWF2PfFkNMqeI70+0=;
	h=To:Subject:From:Date:From;
	b=W6//MLyBAVTaKfibcasWYKhhqqeJAiaWKzQryx6ZWTdmncufEunDN3N/qRuqYTEgT
	 NMhENJSzWP4g5gtEfvgrySbQxtbMPNb7Xd5EiH1iEO1SCovfIWD0VsXKA9xOGJ+PU/
	 OtnxCVJVpvpHrpztKmsMhyPG5C0BbOm4y9+TmFtbGihhxjs3wC3GV4xLVGvoxWUQqx
	 22Gvy5i/IlvVY2xUITuV4KoK9Ychqh/H3Akc1SM2Qm8K1nF9lUu0zduMszT8oQgM5e
	 HQtHOz/qFQb8+qnaFHzvws89cjRNEWfIwMqo3aIj/fPB4GsFcxxgi38iR4UC5wszHG
	 XUk6Q4mEJM7sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91614C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176539357.3338.5870327116386750973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c26214eb2c18fc8b4a7d80906bc4e8a4608f024dea56219fc15e5b48191b39b
Date: Sun, 06 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751765393
