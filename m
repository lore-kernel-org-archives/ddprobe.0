Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D969625
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788697834; cv=none; b=qzcZRfGZANVraodoylV5FZb3ZRTLuPUyrwqxE0YkaIJGgaRb1kMahXlYjplsCUa2JmSc0av8ryqkx9yTUQu1kajMZ3ig/zsxANvtaDEbujZ/bZKU9k5rxngyDgQwfAbMkkF2NSkEnNU/O8eYujTY9nFfhT8dtezMZap4u/kOVNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788697834; c=relaxed/simple;
	bh=pLHj54rFl5WlgE336E7i00cHCjpaFXYpMfiOKIIeuwI=;
	h=To:Subject:From:Message-Id:Date; b=bOnbOsf5rSzSv6fSoVJne+pwLJABdCv74JDvIPCRHCf5aOqfFIkDG8KabkN6nKJzfIDsDW4Um10g8Max2DBqpNMsg0skHIBUKC9UznjmmWEpas5vLMRDOqDULS3YMCh4gYAot0YzdiO3PSF+aYO+Irr5Q0AQmERR8qSorPpk6s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc8wnzUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc8wnzUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDAEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788697833;
	bh=pLHj54rFl5WlgE336E7i00cHCjpaFXYpMfiOKIIeuwI=;
	h=To:Subject:From:Date:From;
	b=Dc8wnzUfxL+Q/EX3UZMdAJyX4zVb4C995cb5GGhV9jvliIaBhLTkV4gmiZk7NdEyf
	 kuYpVnHOt/I1QQJytSybgWEpycKqxjL4hsaZi9fHal14DzM+2BSYDIvYd7nyevleyX
	 zxTjZWe/e2Wi89st77LtRhLav9Hsw8ocI44e+n4J8rTQeQn0+mlplxCQqsbZaKN0rn
	 pX035LLINCAV2IjzR7LJThMsqKfmTrA6T1EA1f9aSYxRPGS++YEbZfWFGnO8+ioh0/
	 eGd8WJgqSLvor2idzF9kyZJMe9Q2LmVT/wNH13E9kuoVOuWIPpVH70Jt8AxxbVACQv
	 CbbEUtp3fQU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7728C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869783373.12199.14252877854735274078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e2cad55e09a238a96243f26a79e2b31790e49fe8e8bf5ff369c5ff7a2843b5
Date: Sun, 06 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788697833
