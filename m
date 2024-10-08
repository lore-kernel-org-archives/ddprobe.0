Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233FE16EB76
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728377754; cv=none; b=Zz+1Lrbtte+kYm7eBOF1A2gn77myaiCfq7bIgmndZFpnO2zZUD2SHab/0yphM6eN84Fxrh48tK+jt+Ojxy98dsaN1ZVNuOij7LskmcRUUx5U0JNjOYspKYrOTQPwSlL2itgDL5ELTob7xw1h2I3SdRnsIlKLjUag+4DBIdRhWPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728377754; c=relaxed/simple;
	bh=CsgFMdeBFP4jgA32VSWWVjLPp8LMmogeAUPLhcYS3G8=;
	h=To:Subject:From:Message-Id:Date; b=RhH6I+DghY/cFFoMjdotdGxWT+vGrNt7Odb7ricFLv2pNY0HIwAQW6WzXGld+PyiFMuLLO1nVoSJySmn9feJpzOD7C7IXluiYBERXbev9vjcBRPTnS5S6RNM6kQOaEu901zRinv0LQpdL/HVc85qOVrCXRu43xrK7fz3JNYbQ2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7WdCF7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7WdCF7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F2C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728377753;
	bh=CsgFMdeBFP4jgA32VSWWVjLPp8LMmogeAUPLhcYS3G8=;
	h=To:Subject:From:Date:From;
	b=D7WdCF7jEA6r1wpNKK2QtVWVpQ7AMjjsmtSw/7ViBwSx3K/+eeRmtA+QThdDHxBif
	 U+r9pZwkw3WufRuYobVrXJC5copKOvlN6OwuJ27F60+TiYybt3UEITnqfVW4qmMtac
	 iL7bF2GUTGNJlVqfAiKY7dyL9nk5eGnQjHcPzaZQEAb7PCtN4HaZ+Ly7LPdbnj1s+X
	 gvirX4/OPKxUYaNLmXf36Zm4qVxiHYD9RKIxnmE8r3siKwKRZkQuo4Pj1xF9rJ1AbU
	 Foro5G0P0ctFTSFxApr0w/n9eGtTzELncy53Z24NLXqpgvyXp9A/eQ4inNsJBWzfMM
	 /4ekMqh9TWpjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94080CED27F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837775359.21941.17961735634142970086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f96e2ed02017b234b46610d6428179dd5187dd1b5d4b20c1633b53b92d5540b
Date: Tue, 08 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728377753
