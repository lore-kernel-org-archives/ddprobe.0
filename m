Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414223BD224
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779982354; cv=none; b=IFMmHo+QuCuPDS1qrIqTY2INRz34BGcO9BTBc8XHL2Q5/jS8djJUNliDV9pBGeOFnNoH4W8oQJ9wQTCem3Mo93scDnyjfuB+5P4o7VD2QZkeRDclVqJ3dolX4X1eLaI/oZJcwT4/nbiBMBoHFeQwpGp5A0U8RzNkWI9mxd2ytOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779982354; c=relaxed/simple;
	bh=QMA+NqF+hC7+3QACVyJPYmT0Rwws5Xzye6FjQ+yFvns=;
	h=To:Subject:From:Message-Id:Date; b=kBmBmkIkefvH0lgydAvHiXr+cHLXwLvJE1KEh0PcfgHzoV9LoHbPDRDxDK/mWWKqqk5sApgK9lM2b2v2UnwKWF0OJRXBZEyTC0tr7WpeSXB7XS6UrEvhjWq/p7jk/tgTtSZ0HZFw+Q0YN1TAP0Ts3tLXIHeQlNN1mwsF5D9sR1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkPlPfsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkPlPfsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62ACC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779982353;
	bh=QMA+NqF+hC7+3QACVyJPYmT0Rwws5Xzye6FjQ+yFvns=;
	h=To:Subject:From:Date:From;
	b=bkPlPfsP6rXYnl6RK8o0bitvaqA5bwgGjmz+3D1gTqoD3inpWPxnsq6fLrQApZNQE
	 cwRGNzN+dz2pW8y/laZfax+q8zayOx90WAaP2z7eYbxCjB6WrojagQK9DrkARowR7v
	 47QStHYPQAr/5LdJKsS0xNkreKhWnKy3xvW6zoKtyEIR91XiN1yrzrWAbvjOPZPG6S
	 ycsTaJwrWfOoVJa67l8jf6m/ccIpm3u5eZU2wkbc1X+huDhIbfChU7B39LFHog45li
	 ugT9dLQEO44A5Lm2JIZ53lmp5NwMqvjbqR8rxnGvPbdxSjLHvnSzaIxksd01N42n5Z
	 KQuOtMS3psV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA165CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998235368.30496.17738463852724272627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897808b691251393fc4ef467f949f78e8f4d39fa8b41b309d4cda6fe0eda843b
Date: Thu, 28 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779982353
