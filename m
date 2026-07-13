Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35424334C39
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783934914; cv=none; b=J2q7/06MJQB1/GSsbtBwPufqmGlap6ztLTnV9eUYvN8lfU0QQ6BeM3emv4/tM+Nut+cWlNyPZQFRz8jzajgasjo1xiF4td01rnh7okH27OPJwX9IRYlKT9iDOCTg4snZjqP+T3p9xdZDAy7i9SLsoRj4v3oszaAJPp0EU7QaB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783934914; c=relaxed/simple;
	bh=mcD/eeYcm51lBcQphq4SFV7pMPk1KRjbinSs6i3Etgo=;
	h=To:Subject:From:Message-Id:Date; b=UgxR2LXzrML9WXoX/MlikPc0xlezHOJLJGHjuy7NgpHPizwLEGjC4UfigRtzBioiqQjrZD2NceSqmfngaVXSfjj9sqrcOpn36lZ4SxKFwl6dpgUqFYY4MpR0GkfLs8kL567hTzVQj4OW5ptxxltTnWg9e1tNLzsJ7Og/MFAi0VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKSl3Zm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKSl3Zm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA647C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783934913;
	bh=mcD/eeYcm51lBcQphq4SFV7pMPk1KRjbinSs6i3Etgo=;
	h=To:Subject:From:Date:From;
	b=hKSl3Zm7Y36VKX9HrR+gQjM8wPCIBSLZ/g2uGo+TyJEtuxJytvrEMB4L4sCf7cQGg
	 ObUgXQsZKMKheimCT6qIsFCP4mW9PbsMG3keTOHoHZ7xFaM+uITOrfi+pEfLZPzabq
	 +opGLWNV0hjGrfdSskb92iY5uRG1jaXpoT4Ra0FRrNwiMUW2VD8sgWvqvn3Hgd+IVU
	 xzSo8OG6CK9pG/iecGC2yCjxSZ73LWxNakt4PZfvM+yw36ibH8jdoPHKijqz/UzYkN
	 Bl/pr2sn6+SukQF9uUWRRaNoQkkNIrH7LEPFXQ9PaLZ+QXabY9qLPhkUoPtlel8GEy
	 quVsnK9UzoTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBBC44506
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393491368.9359.10999088636556294275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7f35466b94173fa3013f26223ecb81e5221d36664b834832e45f12c82cda06
Date: Mon, 13 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783934913
