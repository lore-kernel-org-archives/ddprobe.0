Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C4E27FD5B
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789521034; cv=none; b=RWxFZa50sJ3HN6ljsDqBvSTkPMeXd453dSe+fZxi7SN984/5jtEsDxe4NpNwZXqHNgtsaKMBzez8zvT1R6FSks9aU1JEw/Pz70nDo1yfUZivvb4mZyatD0vZeM3ad0IElQDg0QV7xjJVbskweFZYkIGIlhLqlVPkl45a8g9xQRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789521034; c=relaxed/simple;
	bh=GSY+KE8q17gHVEI9d20witpqcaRVDxrrRvROgSTnC1U=;
	h=To:Subject:From:Message-Id:Date; b=s6RelbEaw4ABwFae0UsmNQUb3B4WQ5QqbYVrNEnAsDEbRzyshtBWPqAb5rtXxLSmnmU5gClcHICeVEPgSsDqXUqrIAKFO6o7+001fEKlRkd9bK52p3KzAUadpAPctKbvqlMYBiDSaKz68PBUBdzW6FfPyRbEax6cgo5Im5uD81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdwUstcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdwUstcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AAFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789521033;
	bh=GSY+KE8q17gHVEI9d20witpqcaRVDxrrRvROgSTnC1U=;
	h=To:Subject:From:Date:From;
	b=fdwUstcfMVjpJPuETBglo1KbeF3jbmzNISaJhE+LPGPMocznJ27ZaARIP3fJctqMN
	 XOKYO5avqfmEGsUA8RVzOE5fbjghdFlXDVgyJswHkfLMy+2rPoZzAf9h1DyV5TKmc1
	 C04sM8xOqolq852gHjFrexKTv6c1GtQvfKdLgqKXcLU1xkptR+wgMByfeJJheD6C69
	 cVf7R1y9IB1/6wYDMujmcaDNXzQ3xh/U6r4yjN5YWgwPZknFxu1wY9NTU0+jGhUES5
	 LvF2YNDAkutCciHs+x0i6fSJBMWIFbclwm3fOYubWlB8mXm0fk40PnOKsl85qYeiXK
	 DV7imKbWuqbdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A3C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952103368.12167.7135489904483332720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9e2f6c84d6d16f77f9ecb6b5ab656874cd665d318d648b87b774e78af1ebaa
Date: Wed, 16 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789521033
