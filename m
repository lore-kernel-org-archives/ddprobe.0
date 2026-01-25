Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37C2417E0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769343234; cv=none; b=fagXBryUIuqS5IXZodhreQZaACKy3ajupA3SD6j3Xd+6qG3OmuTePhN3bQYzsTgNLRmwDns4n/35XLv/EqDPy7qnusZ3mJWixh536Ox+CKDCpI2uThN2haZckBONvgr66cMlFdDWmNRs9Bhby6xgkkygyjT0lirXHiy3WQ92z8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769343234; c=relaxed/simple;
	bh=85tG9KLBxkgpQlAmozCOY8jpdtnmGm1X8MQEsAQ76uo=;
	h=To:Subject:From:Message-Id:Date; b=qlznhttvSgkXLVq1zDz1KR/5mB8qfvVe730wfVCAnuYrr/IuCHQnejDYfsROmc0Ji8nBHeuknxav3+pqOxYWkWtIi5Jp2Zmt8yA+R9ouwY8ZMXgUYl+Id8Ar4mjPadNGpahe3USKat968D2ZlPV87WgPG3eTzpZty/dQ+qnH14A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f67UTsGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f67UTsGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7591C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769343233;
	bh=85tG9KLBxkgpQlAmozCOY8jpdtnmGm1X8MQEsAQ76uo=;
	h=To:Subject:From:Date:From;
	b=f67UTsGliVSqEacOUR162kzDdRVapCaHx3PkdG5k2NiCLuuwPB5sFo4mYBNOjZNqE
	 5Lhq83vg6s/CzlSqqquy4UwtoH+dUIs0mnDhOn48tlz2bhzKyG0k7pCXA4N5Ksf7dA
	 tN4eG9piuOV9wp/e95hixqdEMt4ZbJUtmxvtha3dStES6kQayO9I3aiZuqutI90iB7
	 BvBae8iwg5+1eYvtWvVBNC/ICBtK1tO+Tfu7z628IodLuM9aDf61HvpmSivzEUJSz2
	 zUFbyfHiKXhuKkm/PoexqqxTHvi6sYiuZRF+KrFhpWaTozw9hCmmrWyALwD9OwhT8Z
	 /onrA8J8YskUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95747E63C90
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934323358.30738.11957647290476315560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa7d8e4a075e13170eae83bfe724411fff6dab2b3920e28f0936d067739a534
Date: Sun, 25 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769343233
