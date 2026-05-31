Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5E019CC0C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780239274; cv=none; b=TTi9IH7JHbSAoeTw72fCjihRBAM/yRvU6w+mlOsVC6WcrL0bajkIvOl90gdToENEn5EXJH6AFN7JN5YAyfJvc9JQNUJQ6iCv37yJ7BI090Wxia+TkBomAqqJzSeIyEd0owT4032bh51O2taKa5vIF7qwXWnKKhYNCMeAJRz9agQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780239274; c=relaxed/simple;
	bh=612U+QGBPqJNo1J4eeQRvPAFP39fHV436BajUSicYPM=;
	h=To:Subject:From:Message-Id:Date; b=qCt15SvMUwjhEKtv3qcPL2pU4uH3d4NQX4WFmRMQGQkRvgUPkBeqyKDTAsOki5OqwgypuEiL7lTaP8rA+odyukTXNrcIj6ybn1+POn1bpIaVgVomMGm7m6sXXolVR2gp2xnEAYW4Fw7GxmUO/7h3hTb3K1ZIOuwz7HlOPMPA57I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNBPdEE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNBPdEE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D6FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780239273;
	bh=612U+QGBPqJNo1J4eeQRvPAFP39fHV436BajUSicYPM=;
	h=To:Subject:From:Date:From;
	b=gNBPdEE1nlb+vzOzGe8JYW+Zc38GG9KgrAPN4ROhNxtjd0cJlGtcFm30f6LpPb/T3
	 DRXYcqXKL4QUZA9H0ZbD9ce5q2CyWVZPXWSuqyCpWMS6WdjjKfCOMWco4ZKYn8LYBG
	 Z6hvLpGBVmg7jTWk6T4NfqHTJ44ujAqVLrO4/bxpo5atVilLovhBaTrCHv5GyCyS9g
	 8EI9ZHvKbruyZ0tC14usZsrpKCRRQGpcmODpYjUiAQF8qxKnpdCUBtto5BJDbq6/5y
	 0zrDf3Xom9BmM7TGmuW9SLFZOY95m3cTloHKPsIBHCTJoI0EXoDkp7IM3MZgLHxZxd
	 Y9OfofBFo3wWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F3CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023927368.25311.10659827715190857164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ce09753bb20b5208153547feded31119b0e7058e7825e0d5ba773afa730d24
Date: Sun, 31 May 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780239273
