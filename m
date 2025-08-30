Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0A9279DDC
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756540194; cv=none; b=HwDsT+Y2nL3u++Ki/Xz9E6fViWYBPDpekzTrRJEXGOtoweSO1ctIbTiUVrBkgHxuPdYDof1eQGAIU54LQ/Qkkp0trk5fbE/jP0CwlPdrFTCwEkYSgXfK5Vg3JymXLq3HwvMB3MWfYoWqkjHdBde5oBi4z20OBR6mEsApfUKuYOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756540194; c=relaxed/simple;
	bh=oB5B4xynBw3U43S9chfFoqP3DPvd59fOhonALn9T8Fo=;
	h=To:Subject:From:Message-Id:Date; b=lAzqgtgiNsv/Tif7NJDFqektN9l5nA1uePz8no0qWMWosb9mPD31VRHqZaqO2YNOY9Je0AgvVNz+DKfFueBc7rb3LHID65vBiphuyyOxLm9WBqYM/MMsWpms2AgEF7gKU6QCM7BvY7woRGY5Mvr+7OF0GB2zSuJBx1lNpAb7WT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVcZPSET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVcZPSET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1275C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756540193;
	bh=oB5B4xynBw3U43S9chfFoqP3DPvd59fOhonALn9T8Fo=;
	h=To:Subject:From:Date:From;
	b=eVcZPSETvkwel6ghP/FeI8Xo6B3jta2oE7VFK1v7dszu+o1/X4TG1JOM89QNJzly0
	 oMe+0pRMY8+S6O9c2ZqyKlll3V25MpfF5RPGYR3rhrEakU5vn6Aj06J3wYVZM3vfbx
	 BeXH8NX3j0uIVT2PjAzg6foWsU9uBBFbDr1hxFFm6yg58SkuQeNoe2cqmmBw3+Bv9x
	 o3aDZ09HMcmyuTzgJXKbwyVzTy/PPXMuTt17QftZZKGcPBknpyiknt81xxazOPwLJ+
	 RmYjlkZG8luVYbK96571hzh/dlv2HRjsyBe63NGKvQKMWu60LTGFmu7rvqQg1mvcnH
	 s1FP5jbwV6uDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFCCA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654019358.10873.15866703059187808993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed514bf2c69859d789597b58719567a2e7be095fd6d5924bfcdf829d13f76f75
Date: Sat, 30 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756540193
