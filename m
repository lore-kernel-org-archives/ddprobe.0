Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6729A26AD7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718338703; cv=none; b=mE9K69/f7AgRD2cdo62QkTeW129QaaLcMMNHz360gDWlknVsJ0vQtH0QptZv1ShfwMfwYfENstPjQ/oKFO6guWRElG2GAmbw93njGr+XgBaMs2KVfuug2PmTDLQ8qGNV/ZPN8YttdpaAoZnyV3elVch9xZTy4Ku3ja6bL81/WkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718338703; c=relaxed/simple;
	bh=xvt+vsZUo2l6MJK6pijvFrjjZBH8htOHAI8pHNm4EIY=;
	h=To:Subject:From:Message-Id:Date; b=Pnhf0mzeLxiQNx0cl832jSZ4LKKBfKC9ynRUtjUDR/HoeD/n7SZMHtwWyZWj4k4aLUDCt690fcTsWqEMJW+ZmhEmBqqrzD/iE96s5siT4IbtDFLIniw/trwzF1HSw0Rlt8bJA/kxWSC4WN/tBlb1uCzYlcvcxjR2VVYoQBQufHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLavv1gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLavv1gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA8DC3277B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718338702;
	bh=xvt+vsZUo2l6MJK6pijvFrjjZBH8htOHAI8pHNm4EIY=;
	h=To:Subject:From:Date:From;
	b=gLavv1gIIqHb+Av7uilCqbX6edIBR01i9Ou1agUWuy2LIGLXb/Ces8cvbFzgf1Td9
	 UeJvm7rN/cUZix3WydrdHTprahoQbowfd03lTLDAgHRKu+9XW60wkOVsnh9mrjGeg5
	 +rk45H4C7PdJ6b6NQbYnCnq6+CGAIdu7vDsYvOKESa5zT2QlRKwp+I3MSlB1Nj5HVp
	 fPKv0iCOZyZM/6fwCioVJxX7Fh1oevHydtqo3Hczj4ohJqKc/gCjGMp1A4xNeZJbSa
	 NU5wR03dmNTDn2aRhUCAdNLA+haXf1/RCvHbRv+cvmlithYGr3zPVF8b0MXSSKALrR
	 NBUllFLFCqafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6624C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833870279.18276.16989225860459992748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b861c23736e659589df757b1b952a0290f37d7c000b15e896d89a08052abe73
Date: Fri, 14 Jun 2024 04:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718338702
