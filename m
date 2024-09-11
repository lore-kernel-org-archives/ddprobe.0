Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E98518785C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726055754; cv=none; b=f1dwH8ya532JFwSiwq6x5ynxRVlgqUQ6bNFYq/KSZT38HRnPr+hP2Pr+uyQMV8OvjOamLzfo+3dkxUG8TAE/IFjEzwEMx/3ZQBM4vJ0zTSFCnGSYDHldsihPxOFVz/HTmn6LU5wJbVUeF/vNjqZ/gbjNRh9NeKgYj3qTj4+px4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726055754; c=relaxed/simple;
	bh=/c3l8WDplHDPq4wmBjxxggY9Xy0OG+AaC1TX6z55yzU=;
	h=To:Subject:From:Message-Id:Date; b=Ll5SdzhtoyUofQns8uDhavu3/HpoGQrhaFjFeTlqLQ2fxBq5zfgR2PFEiCSro8GYU5m97jQ75PcxDrMHXmrS0HS44J44ZdJ+PYwo6C+4OizqC0gGkpovHE1nCjNI77/ilqJVUfSHQloVOCNfRFswiGqynda7Yr/lRX/CWZ9c04E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YummGqqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YummGqqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FEAC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055753;
	bh=/c3l8WDplHDPq4wmBjxxggY9Xy0OG+AaC1TX6z55yzU=;
	h=To:Subject:From:Date:From;
	b=YummGqqqPNsAdrPmqdX5fY+OLCGNEqLaKOok/cDQmapup6UVZnlOkV94tF91S4WhL
	 EdeoDDO/34Sd6g29CtEa0uvfJjmrJ2Ght4cRvwy3zNsahjbpz7/PEA4Y8ioq5164PN
	 2WeJIpAbsZw273f5mWqgWx+lI/rvwk1jE2k8HeWPQw4FDlCbG8RBYiFEoFUQEBR8d9
	 libGEDI1Ee0LzhjB3LqDMy1W6jP5RFlUPqnaeOXby472soR6z9ukUf8ziAqldxvZLn
	 kw3Is/7Lcp+nx0dLqxOMcyzs4T/DE8nXLsgCXyv7joyn6tV5hV11hsGWDkgSpUfwEk
	 JVYkdTiE/eJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92754EE4998
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605575357.8130.17730969884278894993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf548ac09a887c560dbefdba57210068e4e604c384025d0f95982eadc4c23c7b
Date: Wed, 11 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726055753
