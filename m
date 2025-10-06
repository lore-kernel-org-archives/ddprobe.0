Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E381DF982
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759766994; cv=none; b=qhrzzIbrMvMdVpX9Gy2x6gn7fveL9z5k1SssRSMLUACkp9n5nbvR8tbVQARFOrmYhnoRnFZAcrmBoFEY1q486Ob03CFSK4IAng0944BOmTrQn9yCQWXPazWXNjWbH3MXyXMQp5jFCXle9aMfXWxgCj8qxNogRj2ifjKTkpkb4Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759766994; c=relaxed/simple;
	bh=IjEPDStrf9NOJAgfvLuWZT6Uhh20ssRDmAMgx0oYhPg=;
	h=To:Subject:From:Message-Id:Date; b=AJH9yLJEDMcnNRRjaXpBIt/Qjw47KvWI8+5gOPbEIUA2EmfEnLMtELGqHa8/vXOfFrqIEvWQqUgaC9EOJQLjsya3qi9zlic+/Pphw0AijGLkWUl+hPS0+i6MPiwd27CGagLKSv0oFe98LP2X2E00YjYj0vIpp+nfgtAGCrSKhU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAaZHa/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAaZHa/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD54DC4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759766993;
	bh=IjEPDStrf9NOJAgfvLuWZT6Uhh20ssRDmAMgx0oYhPg=;
	h=To:Subject:From:Date:From;
	b=OAaZHa/phytO1IG2ZoXXsUz8xKhWP0rE1yp1qTBRZuZdQFoCPiL0krwxkVLdr/tH/
	 d5Bc4xYesvqioCqygGm6kvOtM8oQJ+F/uE/sO9ja0AB9/N/R9MZVmoenyQ3L3cyUss
	 fslr1Tr3BUKOAbj6DVwCjQlcy1p1YHoxTz0IVEYhV8XHxXuvSbjlUukaD5oibyyScr
	 /CHxhyegGAk2tvqoXiOydVw8SmhXe7RYrMUMvSSCnEe+VmPM7NPnUqYfzUfKfcS6Pe
	 2Fv2pDGnerZF+tMHYnEnn2wkKlyO+yfsPZM+W8t7RRV7GqT4uMKcuFELkiZ11eOSZ2
	 LP0Wz3bf/9ifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B517CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976699362.28425.13320024684680623517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89ce849d9cbbe8567d988b4539db680bad28b157cebea708908c470787d5b1d
Date: Mon, 06 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759766993
