Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6CA27446
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711667296; cv=none; b=nVTt3MeVgSNy/5LG3D7f431YjjM4s0XokQJcYZUeFTmLLQkXGO9kO0vA7h2qVyHVHNMXHHkOv0j0DiB9+Yx0y+IfHvpERX/468wpg7Q7If1os8xsJNWvSa9zCHIb/6O42ZPQyAaZ+PNaFXHKB1SHo1q/xQS8ogw+WuIqIdY9QYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711667296; c=relaxed/simple;
	bh=EQVSpLwpXIVqDCu2haJf3tdJ+PaFh96fYBnrhrm50Fc=;
	h=To:Subject:From:Message-Id:Date; b=h3lqe1zi9VeLRF4ePP6dOPQ401wozLDywHPmkFER5vt8fTqrjHSVfkvS6EMZfUMqPPQ0vjKtAfxPkg4wWqwdo5bV9htqe/WTdpOma3jgOHfHFiSnloazhW4o6dqmWfj+/8GwFZMrdolVxDb/hqE8aa/VYs3atafLITgzSlkqqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpX1CAYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpX1CAYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8713FC433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711667296;
	bh=EQVSpLwpXIVqDCu2haJf3tdJ+PaFh96fYBnrhrm50Fc=;
	h=To:Subject:From:Date:From;
	b=GpX1CAYntrQuf1tLLJX+N5rWynqJqmjwrflTVmyF1qU0vyJUXygHOF+eJoS0XXfh5
	 BjnZyiIgQ0+aJK6wOQaoH8nJi/smbTBEiqGUMsBKVDsOwYPImcwGB2noq12GAY6OTe
	 +d7WrTABpIIH2smaetzLIyT5wAgHjaPftLrYO1neovlxocxukX2KGZsbZloqIjksvx
	 Xfg6bUaIhhCT4rlm/vP2/xa0XDkkLe1c2cUClD1jQxnf3guN2aCSlMrWiGwhV6PG+W
	 aXO8EuqWwSureDxK5RtGmQFyo5MLW3QazEYKxTN81zmvo4oZCfZWjagQtmbLPOCXgT
	 +zW7o/Y2lTSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DC9CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166729642.25046.14879458486519199710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a878c034ad89ab68e1777bc5abdd167fb3050c538c6c7e01a83576f1c481e8
Date: Thu, 28 Mar 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711667296
