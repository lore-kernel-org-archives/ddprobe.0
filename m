Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CD8634
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736617554; cv=none; b=Qt9DzCQlniuWLyJoXJEgXeWBTj1bz+Rll5Wa4jnZ9K+H2x+kjllyWZMiNC4zw8FRPG8ezRXjEqYdmDagZ0lu+YYFa2abjQvLUOzxhiR1yIQsaRk1L32pCcuiwZm85488HrjbbjfyzQj7jdq4gZURi6nLSjr0f/fHxmQB2y/03qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736617554; c=relaxed/simple;
	bh=9bEKIIy7ZIW1gIBFqruJ5J/5hs39xe9sWCqE6zyc3bk=;
	h=To:Subject:From:Message-Id:Date; b=Ic2l2+0l5qOzcOh8aP2XbGBOsnnbcMrS9m6VnCU2fgR5+LyF82aqENWLVFlUN288JcYiiymsse8FBNa7BStMQ6+iT2xGiuD2DjyJvRLEyLQ3Vw4c8Xeiy23VOLZxlljhi73o/gGD5Eq9v1B4oqTZO4e//wr7uS4oIH4dtPLPE1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGq1Kz2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGq1Kz2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D6BC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736617553;
	bh=9bEKIIy7ZIW1gIBFqruJ5J/5hs39xe9sWCqE6zyc3bk=;
	h=To:Subject:From:Date:From;
	b=PGq1Kz2BYl8ovHkk66FT0hZXSXgSoxZPdrxlBtOzQcTSyovRNj3zYkyncPqdJkV0x
	 U6EhRDGAJckbWz/3cFR1WuXeei8hC4C1KEdstI8oXLTCieECQehx6Bmy2j04oQva10
	 tpxvlqEaTGbcaVzrYXNq09XZS/NsFZNtz1aBbg6bnxGuM7Xbw1UJ2uPohLgBg+SCnt
	 UUxTT1iHfjOUGrAaoBlrpZxALxaRUtaU+sb8E+kGVXmB1VeV9ZWgGqn+k65NdNILKL
	 N4q8sB1kALPAD/jQamVXw8Z9Kne2ENp+nily2qxTR3jg4Oh+66q9/b8R0fpdnhEJsJ
	 xQp2sBKQsbksQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D49E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661755357.7584.5581759478248275199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8ae249dfd9267b83a0db79ab204646a16c33e170f0736cebffed34ccb284cc
Date: Sat, 11 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736617553
