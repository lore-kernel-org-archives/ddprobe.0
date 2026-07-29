Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD67481253
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785328834; cv=none; b=e028AeuIt0C+CFlhoWgfdUg2fiSncZEfnzUmyGO1sGdssfKwMhunIBYRBNaP0QCcmMVsNJ+FH3qLRCwYlkPw1zyNw9TnyrR5v/C+woPKkhYyGWXQrJZxgN4fiYZ/1ATAUJn+hhdTwIMQ2YJCcRDKvvuJWEVuV263I8vanGTSDTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785328834; c=relaxed/simple;
	bh=nIF7jgUguoKM9p0mJqwdtKws19Sqz22GblfCuTFR7QY=;
	h=To:Subject:From:Message-Id:Date; b=TXEHc/NlelSReafETleQ1bL/7D9sp5NTiJ4xAe5No3/FIedK3NN/xm5IL1u2jOCPjJiLWajzu7Q+C767LyGzeM92YXb9kVihRxjJtDQc/rlcnFJO0RSlrwcEx1o40j6UeFCN9tZUN/+8wHo2qs5kejV2DHLIn84FTgqbvlieqs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7VJDSKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7VJDSKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB5BC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785328833;
	bh=nIF7jgUguoKM9p0mJqwdtKws19Sqz22GblfCuTFR7QY=;
	h=To:Subject:From:Date:From;
	b=j7VJDSKCg8AFBTSMdhr/QH3jSl0mhs18uLYulhoALahKkqsw9zsF2RhmrYB5RS2cM
	 N0bvXaFWVNxY/9sAfNEl66ZpwkCJRTgOjmJpMSkwLf35Cz3fH2kk8aq5i+5FhaFSOK
	 OeI3MiAzQ14iJ+wuheTMua/dFnzA1zoSYea/uu6X7lE4V9N4ZUg4MvAh/0Eqv3fj6L
	 O7ATl3/6ZngOF6W2hqfKim2sJu3c8DlJMM62DUsQrdgR06BAjWY59MhJkN2VdLM1C5
	 nOD3aKw0iFPggOQldbclQqJqQL+4fxZBW739kYAoUXHUK+RIaDbIt0s1vTX7z+F5+C
	 FV4xPzduy+uKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9150C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532883368.28788.16068875848725126685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e45602aae2850d6e3bfafdd6961b1426e906e160ff6cf27922d80458607366
Date: Wed, 29 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785328833
