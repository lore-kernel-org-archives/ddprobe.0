Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5741417BEBF
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786238434; cv=none; b=ToAJ5eXJz6b0E6vi/MzD4meAmeFELiNxu5oc3qhn+UWI9K22Nirpvb9cjzTzI+P2gPgpjI6nSo3G/cAERF1YiYMn+QrzA6KHQ19aKyLPdG4miS11DAVIw8EO4uD76nL15eR30d27jnJ0zAwlL3TlODRrUZFS+ql4c7ojdeDDalw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786238434; c=relaxed/simple;
	bh=IL4urD7eLINCDOhuhyzM0JjuSydrgzLLpUOM6Zv5LHM=;
	h=To:Subject:From:Message-Id:Date; b=DuX7qgpduJVpXvPkhuesf24kbHEStiodzaQbXsWc3HCOnPGLcNxfIP4zzGWYOZKvj7eXPU2+fKLvk8EK7rLAzhhcSnemHh1CYdyfHtmdeTRzpv2qRUNfNddqg9bENh0N/UJ2MjvAjIZQ1v/W0fC2WkJ1hdVKjNrxQc76rzr1CSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e43VaP/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e43VaP/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6BAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786238433;
	bh=IL4urD7eLINCDOhuhyzM0JjuSydrgzLLpUOM6Zv5LHM=;
	h=To:Subject:From:Date:From;
	b=e43VaP/xMjH2hhk1qFX51wtvbKgwcj0BJ+CLXku+7c1Rx+5dH9UuP42SmSWG45L+k
	 69Y2GQ5fwOABT8sM4/mUHVNIxOE4GMZUJW2Fbq5SbL55YKAeEVVWnD3HL3xc0x1sSu
	 mFyg9mrlaJwcoaMIg4oWKf9SWYQXeqL1yOUo5XiVES5iND1r0LPsiNN0eepogsUQB4
	 obXS/jyvCud8fgBrCCtu9SSBY0+gR5JAAzGKmE7pr6VN36ErwSzoefr3PkeT4I5R/a
	 SgVpv/cSL5WjJrrgk/fL5PZDqKazVYA1jhT+LKGJWQ05fp5enBnhUgQjjwwyfXijek
	 weDlV0CoB0B7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9395C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623843368.10366.10263779649633376049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a306068a07e4bae03ec07b515a6da1102fbe9e024634e37652619a8ec6fd733
Date: Sun, 09 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786238433
