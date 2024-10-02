Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F11D0F73
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727888154; cv=none; b=gcUBlxzMnJlElhk1ifNJAVsOl1dpmseqi8ek1+l6+juUrpECJakun/ryWBmcI9M2n9QjTbLK2/1cmsOCV+gShLHNqA/LAnbBLaBUnaVy2nnJVyxu5YjhZ0fE7pB40vQlVApR5NzC07eWUhqIeSdUk281hZcDtlujLPpPPhTmNx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727888154; c=relaxed/simple;
	bh=v6Gng9mu3cUEsM4nGX/znefcEMDtUCdGHdOOKUMheOM=;
	h=To:Subject:From:Message-Id:Date; b=OUFnLUjUuQJnPKiCJFz0Be7w2rKlPApHo5nzfyGcURObe0hjQjID1gOppf1GWrZMaJtcYq+pGb0vIPmzKRf824x0q7avYCkbA5FuMsTLol4z/pkggdRiA2jRGXBiVNralx4b+NAXzemOobwvWGqy0jwrlqocHst3bj7g2yjLrZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qw6yuZqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qw6yuZqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2FCC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727888153;
	bh=v6Gng9mu3cUEsM4nGX/znefcEMDtUCdGHdOOKUMheOM=;
	h=To:Subject:From:Date:From;
	b=Qw6yuZqRxz3HM6NDzytK/UUvwOqduLy8mNIZjc0ZB0S+D5U9LIFGtn65YPpiIdX0f
	 zAiWWJjCHGdftGd42XPOPGfqq4Bn+3CFOJM1ABw71NuicA3aLe2qI8fuUNyxWD8la9
	 qf1QhDK5tQdNNMkP1dXhTRef12U3jdpYpeeEAzz7xL4j/Sh9HtYRhSUuou9i5KUns6
	 wo40ECiAEeas2dxDST5LxibC/BZh/MDGt0daDndW5yhC8dgj/drRmihTar+JmgyfSt
	 3eiySb7BYP4YtRB5cEpgb7Mc1b7VegtFGVwbb0wgtMdOlZA8y26umSgPxUEcj1nWvG
	 LnvhpeAszWSQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B767CF6D3B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788815360.28678.11811575312299715663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf126478b6d9862258afdbd765e36aa61637e87424ae78ae35a99a3e1ddf51f6
Date: Wed, 02 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727888153
