Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD04332EAD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783519114; cv=none; b=F+qQZ1fBH9va0lBh8WjZ+mT/VlPzkxQgkJ5yGHfhu8wftF1aoUlMNGrmHw1c3fjlU9PM7fbRBlEFcYBKsxxOO2Zp6OXsOT4ZxOJ7YjQ9tVIlrT3JHUElFnV3vHr4AOPaTX3ITFvNg43TqnI4d5yicQsX+WPUcoz1bkqAVr/sDog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783519114; c=relaxed/simple;
	bh=e/I4vyxbb+aZ5zoYbE/JxTvDdAHX+bJvBg3bHtxbFSQ=;
	h=To:Subject:From:Message-Id:Date; b=BcO6d2NCW2n9uwIbxctEZ0EFcsqcq0H44U1i3i1TRXUQEODB54x528ggkrbyij5aC+CrI0/tjyfhcSKMySk5ZqYLmh3Vx56iFrfais2hAgi/OxJo5QzpGMC1eb9EK1V6eKHY1fCnhh6vOnkv4PK0IImQTasYclwD8X7h3773scI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/3kVFxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/3kVFxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2941C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783519113;
	bh=e/I4vyxbb+aZ5zoYbE/JxTvDdAHX+bJvBg3bHtxbFSQ=;
	h=To:Subject:From:Date:From;
	b=p/3kVFxXbDqWcpxYORP9PP0syd8T37ef/5LivRD5p5Bucy8yK7KtMjO7/B1TfQSJV
	 ZLffYr8qnqXxO2LfQ4uhc8FTGfZVqyjCYAvIYZF0uksNCzGSWvqkSPsBo5ruwAc1XJ
	 JdYOXSsRChI/Y1JuIxLCJVNJpy/AKY5PAXvUMs06sKiaSAD8E4B21rlMvfCq4h/BNj
	 vKYMRxe4L8E1f6ZkS4dgU26crk03bx4yzfnnRVjAHp2LZkonvYjGXl1hH9IxS0rhqo
	 ZRiHAHCJ7368CepRm5mPYEB1x6coAGgG29BkNxeyFr3EAHdrEfd3FXE6xAKEkhrqX2
	 lTeFjglOb2MjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6FDC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351911368.28672.17944084648373055444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdb87cf3bf5f19f3f3a1f4ab693d5e0b5012442f4383b5a3985eb96bfdc7b8c
Date: Wed, 08 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783519113
