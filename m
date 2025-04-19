Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C0F1C6BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745026195; cv=none; b=VFAd+lC4625ycDhpEihqTFgSp2c+TG77VaGa66tZZlz/UgMsUctcdCYWoqD73BiBnFOg/VdQEuYGZm9bxWhai+xhdPgaj7XMNdq8ZV4ewemsCBGe8ttLCHemBsyQI2guGeMIIN7LlgdP1sezDDWgMSHtXWiuJR9FLuJiZqHZyUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745026195; c=relaxed/simple;
	bh=tE7kFNIXQP12P6WFxalIZVccnEqfm/oZNtCB04H2118=;
	h=To:Subject:From:Message-Id:Date; b=E6WywCzkpF8tM9hgdEi1V9gGV5TG15twpexcfn1BuknilLLJEns/L2ob/kR1hRKBhHISqSgYIJmxT6bcwR5IHiTJsCVTZik+G1xdWIhnTcafj8zYnR2Ttzm/8cukO+CaomXN2R+1k/f7S72wV/APQMQT6gtI9x+Mk5EOc/gF9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBvVzRCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBvVzRCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE745C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745026193;
	bh=tE7kFNIXQP12P6WFxalIZVccnEqfm/oZNtCB04H2118=;
	h=To:Subject:From:Date:From;
	b=eBvVzRCosHEmEEkO9QJCSULg9r31IMBMD/cDYTsOhV5shJkXMatlv/OA6/LyJLDlO
	 2snOlEZP35boyHoaV5t1KoplSkYLU5CrOI0rvQv8iyNn6h9zo4eheUqMxpKzf8bGCV
	 p5Qx5QHUcxYlv2gKfqRqtytgsm588vKneyDPb0XCyea0f2pUKPOkcemPUlAoj/R6tM
	 6nPkHeCcnYdztSr8ZSKRlg1GknPQo2DXTUlf8zof9RvjExPS7TBd+EiVQMIors98fz
	 8gKa06Ia1CPsPZ7BLiZej/nT7TIVaV9wKvPASTK6iftCFrTg4dYTrActi04cOK5LU7
	 RIXoHyZsUkZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15B1C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502619361.26212.7250512662851616744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c491ae07f0c10995105e0be52aefac848bbf9b3f03740128dd98c494c630499f
Date: Sat, 19 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745026193
