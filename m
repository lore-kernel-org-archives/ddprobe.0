Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072CF2AD25
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339974; cv=none; b=qIuEOuYtH2MBIuq37ilS/Zsnwk3OaAIWvhn4H7pxEyIPz42t1l4IyO4/rOoDWVj7mz4x/evA0bP4VTN+jSJ0W71GxEU/4jpFFqukKs5+Ng6HpTC3vwnVJ/Avi4nxzIlWaVpSdWADx/XiNBgqGnYzztUSLpjo2Wkk/WAXoMch0KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339974; c=relaxed/simple;
	bh=N5Y2ZYGUZGOkumzESw4gxWYuEFfIYTx8DIUKyXX/zHw=;
	h=To:Subject:From:Message-Id:Date; b=H+pCv14Us4pB8Lf7VC/jk2GrB9K7wqvzQPkjuh1305PRj4N8AaU5lU+k20x6qlT42MfpgMmTSA6KnnbreowyzfTrJAEUpjK0Pum+phtowwDoCQPOcuG5e1A+BX0k7sGqvsZks8vYJ3LmAJr52cITfr6hKniMUpdrtmcqoVe4yRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQZU79DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQZU79DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C51C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765339973;
	bh=N5Y2ZYGUZGOkumzESw4gxWYuEFfIYTx8DIUKyXX/zHw=;
	h=To:Subject:From:Date:From;
	b=oQZU79DH81qYDn5XqzqfS/ULbRtz93PJ+0konfuo9dNdskCnbCiau94FAgaHgi/1D
	 Of7TcXG8FYpqVV2gC/JLhiQyjvJoqg1k7Hvz+Z+Cl94oOkoKM1S03RYBEP9DerdurY
	 N8eAoFXPRNQNlM88MDSJrWR18pc/Vumwr3vQA88BKe/+cta5/uAvIsFlGvl2iUPfbX
	 o+aqnGAQm4bfdF9ex0KWtqvUh7weMMAEMwRBiYY8yLZr9oJetNQJgjVIMaGi98x78O
	 ehA6R0ZAy1XUohfkiZoQ37re9oH8UfRm1d+gGYtQAsVYj+v7B6k180i0zaeCyvEydK
	 nVOKFbuvGp3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC1D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533997358.21948.14779583641766822195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43be444d20618c14d84946f3597166deba390627b61cc70f1128a7c325b09e04
Date: Wed, 10 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765339973
