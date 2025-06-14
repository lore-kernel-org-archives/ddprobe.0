Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2942A87
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749938994; cv=none; b=n/Wd51rUWFZYu9LIrE7C9B86OEZ3prhiCRHT8vQZc4jfhF9/sOBJ/gY61fPDBgnWcyLt3j9ouN67t2WywNAn7Ll1H1QHF2JvZ2r73Ayvk0sxKHstPiN/5mpz7YABFUgLi7hHND7wX0DEXTm/6wP+Z42mXFlR4zGlMy/FR3o3Bbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749938994; c=relaxed/simple;
	bh=s2BtqhcOK6MKlY1HNddfGoc6Uo9ZK/rBapZJM7dozhg=;
	h=To:Subject:From:Message-Id:Date; b=g2ZEhzt8knUpI4TiL2aP5FOk/scKWHaf7FqemGnzVgUPIZ+C5xtizRcYiOsAOBw6IkZBS4nxtWElG1VVD4+NBi4sAIgCgb8x5x7pmuPypjHrLLwPxof4Hm25HPHdUBGSLpyTSiZh9O/yUlv4rUKpVovLFSDE+VGKfgSDEPiFIGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afz05M/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afz05M/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749938993;
	bh=s2BtqhcOK6MKlY1HNddfGoc6Uo9ZK/rBapZJM7dozhg=;
	h=To:Subject:From:Date:From;
	b=afz05M/uaGr9V9l7dQ2i/7TWaeHFht/gu8Lr3NBJiI7pQSp3KtI0O9Sx170v0NEta
	 QmVX2EExJrq5r2wdQ1zJDMG/CLcC+4rSiDkqRagPRDFv/EmfshYAidrKxsMH8O7727
	 YTVgJu9K8dp2OsaGVxoZxNzQ7Kf6ri0LB5WUzqTJ8Wxlq5RjYrMLs8TClOVIQfP2s2
	 7yvVl7/68q9b0PGRZRo1JhOK2Tvn6hT7yHwGfQPauXKYaK6Spyxjfmk7hsHOO51CFi
	 Rpd5G2XSJilYTb+wpcpirJpiHFkZxId0vOApC7diplMU/awnw/fSfP6udOG6dGEqN6
	 IXn9r6aGAErgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98928C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993899358.975.3625033341252006709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463afd08cec13b62a19c60701118be624cace04c0bfb07dcf86643c30d7d0a34
Date: Sat, 14 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749938993
