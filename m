Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17EA4B8260
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789592435; cv=none; b=aepMAAQpk4pDTtocrx1k2HH6K9uddm46TPerc5+woCbzCMy6ISSApbIRhxlp5D/ocYn5fHlpBEbaJicae5IzRCkIvqjKm3CUYWjz/4UU7jMwviTOkDkZTW0RejfITdZKWvnyTtdEQ8hNvSurWLGLMze6kkXyYe7Plvi+Td0KVvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789592435; c=relaxed/simple;
	bh=gEalygXDGgZqv7B95EKJEvmoDZKjTeJruFEcdMRY1XU=;
	h=To:Subject:From:Message-Id:Date; b=m6MGfKlLnwdzaQhW6B3dPBkcYIds0rK8SROOe6AsAcCC2VZqS2walRxgE2iLLbSMPHVk0P9By7vo/iJHfdVi1z1TsejkNoBr2HLBESCiPfRkqv5MW55QyzENhZt98rZDSXAp6+TC1PZojZiO4C+cs/bZjBFs96R/0r9Bu0Uf0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z82fuHCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z82fuHCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D311FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789592433;
	bh=gEalygXDGgZqv7B95EKJEvmoDZKjTeJruFEcdMRY1XU=;
	h=To:Subject:From:Date:From;
	b=Z82fuHCrwImwF/JeoeQtC3CoiUfmcz3o+ID4OVOyKVsyf2hIp5FsWRnuFEFcGOuAs
	 bI9xNSY1DKi1CfHTvgfcLZFmeVfZh4n5Pn3tvzBj6ZozG69kDVTbk1cDlVfep2TIbY
	 jVsHZgh0FJjs3OltQvs8NUjU06ORk9o/9fs4OgnnGzYf2LkGHqxhBw7hMx2uuYROVt
	 ORARA9tfT7/pLNAYu1W/zKyCEJauI5NI1qdVMRsp10ZUBXZyrfc7zIgSx0VBqAMxNy
	 PhCCqzLMBRTfEAOyJ4z7OvoB/IRNgngR4BuAjMmMTCp9eg4Aw8G229naZxCxPC14Sl
	 grLTicbTVUFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FCC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959243369.7287.15459991681120202727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75780f219899a0030b66ff97d38c3288d95a1f0142d33703e139dc1315957377
Date: Wed, 16 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789592433
