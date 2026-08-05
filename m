Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FE92E7623
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785909034; cv=none; b=VM5NGNztWmCaM9r/FzQgWQ3xNF7BtviRSS//YKgLvFxDuMmB1yoymlNCdSKUt5wErLQDvxhAT5KQDjiFEHbv2PJmq9FZ8C1wj5PzvpYOgsKWs+nicALu249N2IuADzFQp0bPdwxSJ9BuMpydq4i20h+F629EPjPkaVpo2YJgSiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785909034; c=relaxed/simple;
	bh=BybVbJ+LkRbfWAEBXYCVQBqdjkPp+F+0asZpuitTJX0=;
	h=To:Subject:From:Message-Id:Date; b=oNLAbKhATqkdMUiT0H4HDXk2hHOA8PdYcyMv8I5jp//CbJGXqZB1jZNncy2up9Vr1Qq9HHFEnnd/y5wVp1zacqiJDAhTYObA4dxlXM+kMu4Ilzc2oHnBRrlhTx7QHPYWTC+2fR3XXKZpRfn3eW0txoBlNSRA9JM5k2iX3M9qloo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o04yq4SA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o04yq4SA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF89CC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785909033;
	bh=BybVbJ+LkRbfWAEBXYCVQBqdjkPp+F+0asZpuitTJX0=;
	h=To:Subject:From:Date:From;
	b=o04yq4SAn7XN9L1Srjyc7m5ng7NVVl240z6Fv4s8ESpdBNv7RggALyYnsSuusRFSy
	 n9oIMp8IxxfZthAh9SZ6Lir39GHeUjhYGvP3C8sEhsiZw87XeHUvDjc1OM2N22Ph8N
	 kvCdY1g6t+ybR9pNw1691gF/p4HoelgevJ98owTZlngGVeSnpcd9Uqg0i+niykg4VH
	 A+qHy06cqh2rxh5TFBjJ3Ajnujv+xr47XcHwX3eEyPIR/CIC7/ATzw0yVuUh2PVia+
	 Ma92ZJIMIvU46+lVAZ0/kP8qy/lfmmYO1/OHrZSBgUZ4tRtDboaxKCbi2K1TRtqccE
	 FDLL5Z5VBLzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE12C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590903369.31442.10955486641550090282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7251060c0eaab2fa64a7aed5f78bad7e87b5049bc09796988de821a59c1a0678
Date: Wed, 05 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785909033
