Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC67404E
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756420194; cv=none; b=EcEYD/AgX3xMrjFpD7/EsMfAQwx8va7NokaQfY4Y/eiozFY72uvfbSFW2pEcfVoW4jXqjpAUbmFjNkIujgclysd8UDeL+VYgr26rY20rOf+UilN0OMJW8+uoOyQ/6fN26cMf/8gPSdIcWFpw7nB1iqMuS/+5IwihPW4E9mvnCPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756420194; c=relaxed/simple;
	bh=Y+eI38GJnLG8J8274O8co9yyLjmVmwGnEkzBJbiIeqo=;
	h=To:Subject:From:Message-Id:Date; b=nuO+MLALdILS6+qEb2n0l984csNQT8pnA7970pORZ+dNMzqk9GsPW691zKXCr5eayUjw6Pv/j8bIHR9aCQMon123LVzAOOCsVtZ4cQjrGjgOt/AB6c1YIkW6lY6AKebzPmIgyXgzIe779c6081ZFGvB/kuDPKxEN1DBZ9sC/aQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4oQP/0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4oQP/0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756420193;
	bh=Y+eI38GJnLG8J8274O8co9yyLjmVmwGnEkzBJbiIeqo=;
	h=To:Subject:From:Date:From;
	b=u4oQP/0iARyhaKTcSxxZRFOWShefElGJr2UjB7QL1E1dmXD5c2UguntP9SvVgLgHe
	 L3LPQR6zm8gWSagoNHFpnWFhe2SZOSznxdukEtYCEZs5pkINSXY8ZqmMs2uFU1H4WC
	 tS36el6S5tNiEfLZ4EOEnGUopmbOVHF+ADiflKrxqLS5B+wDhjXNFcwaB5AG4JzLA7
	 xkfMjNcITHtjYqLkU+j+f4NYX6tVDiJpCjZdKUb3Es6ua2VbyX+Li20Qva1ksBoKM9
	 v982EnumLKuAxTChBj76U3zbvo+B75MYX7ntLDEWfoWm6w2Z6rAOyARPt8DLiSWcWv
	 HKgH9G4nuKOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9522ECA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642019357.13338.3279396905355945336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f91bd89c719e0218d01ec3eabf9c7588711e5664804a5efe36000ab3e75529
Date: Thu, 28 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756420193
