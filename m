Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5516C1C84D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742637595; cv=none; b=Fg+c7vOi+VPu4oP23KEsxJOnbCyceibo6Yyys0bMNQovA6BiFCQ0CPWzZcE2jsX8duCBj0bXpSq0ny2VVnamh1uJmkljr99lhI0rnM+UdQqovCCrE7ikRZpXREnflLM0udz9CBcqwA5JMGkjp9oX1MIAeDC+Z6wwlrLhV0MGPnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742637595; c=relaxed/simple;
	bh=vY1thGZqzJwrP+RwqteMEwKTY3q97lJ0rKViij0GYyk=;
	h=To:Subject:From:Message-Id:Date; b=sHUs/w19NHx7/3e17MTOW19HDpVwr5BSfI2xSJhEK1tHm4miGruMd7Lqpe00rLR2b+jxtUDVs15fuQDg+65Dzg85qV5s/I/RI+0ow9U5pdISsZYtzE3rGHng7UcaYfgXk/xjgfP1RqGiIhc9B7HJhJigz9a40LiqyPUgSix6g7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeQNqKlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeQNqKlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70D5C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742637593;
	bh=vY1thGZqzJwrP+RwqteMEwKTY3q97lJ0rKViij0GYyk=;
	h=To:Subject:From:Date:From;
	b=HeQNqKlkv3bArhStf/2UHkiMyVCulWwZQTafqxHFOQ1MsJRFzvYDrMqd98o1ybKes
	 tZ4Kt3gqfHVPOQdJcjep1qkPhpZo7//GmAcGJALwtsYsTbD99SKKEEdA+MCYGpP/By
	 ZpzxvJJaiNpHB3F5XwjSW2mglsm+h7Hz3wF46ClyPHjKZkrtpdPR6CI3IciyQ5tmc+
	 lxXm8mDOA41QdtLv/Mih//F3WSHgij457SeGAipuby3zfbfVL0kFY0/JMulYAiZPPz
	 gXUZutB+TcX2/RHIDJ4/e+KwH3TYP2CyiHRSCez8IrTd8OUW+7PnuOLkt9/1uDEZae
	 50W5CxnMJtNrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBBAC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263759361.22686.10514167649793453230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a04f3ee5282d18e74b0f2ea996637ce7e8f40441ad6930fc518790541ae7b8
Date: Sat, 22 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742637593
