Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701D814295
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717917443; cv=none; b=AZjoofX2X7lfIsXPBjugBq6UGMFhRAceJnNdNx/dSC3kB2oEl5gfqTvVJwBPeV9AkkhBUsmFbWdlgtl7NdDQBtLLN4zUoJQs3w+rxT/xq4qoVvCnZPu34eJObznCCseJ5MkGW79If1pFh5FjzxHneHOuLqkzsyQM/KnEjyZ/XOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717917443; c=relaxed/simple;
	bh=5zTZwxn23g63Y+jpb7xAT/5n1Q2U73F4n9L5qjJYGEA=;
	h=To:Subject:From:Message-Id:Date; b=QIp8dF02ikIOQEj+ZPw7zGVWfrbCcB6/Nw1xd3/nlh6E9xH5UIbIat6GYc3MLiMorLdHsb9gaejLakiWGtP6uVTgL8D4qrKShBGeX5T+MukDfW2SvR0kBPdY3fhPBeiZs6fzcWt+bdeZ2aohY5KkucPksPWfhC8xNtqOkp+SF88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q02fSHeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q02fSHeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2301C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717917442;
	bh=5zTZwxn23g63Y+jpb7xAT/5n1Q2U73F4n9L5qjJYGEA=;
	h=To:Subject:From:Date:From;
	b=q02fSHeYkUQoXsf7e+G51+EOvHnR5VWM8Ddu7ME8zseKgSEqJYCG/M0IlahIv9TBz
	 5esaIFJMitA3dsymvJBYhRy6C8+7G4Wbyx1EL2+ufRobeMeyHXljKMUQMq7XLP6h5x
	 jkDYK5psvPE3cyx4+wmcrE/yuH5NxxLh3XmN+S+25PjjR3tIJVpz7pLZ5j2h/DiEbQ
	 tI6jYSc6lTvyoprxQgeYyDvrd8pisHzhYBTNSBYjw3o3kILfpA398G11y8R2CiSZa/
	 r0UZMZsc4CesTgJfsZ7/ja0j8StYhId2t7E7OzvS41JAvVGhFgyHnuPT0nndg8ZG6V
	 xZNBhTzjQPlag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2019C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791744277.21722.7830552891539102092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d1547cbd8f2ee5d7d5149e0c10a22f4e2be832d549e1a7b61cb7a9d10775ef
Date: Sun, 09 Jun 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717917442
