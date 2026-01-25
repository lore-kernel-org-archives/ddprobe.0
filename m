Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3213EBF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769375034; cv=none; b=FW3Q+hutVfJssga4VP2FcZOpu8tIWtKkStRGFq4lTQFDcwbsBZn5IjStfmsB9LSU/gxjRX3EtlT1A7gLnr+egFq/8b9vQjcJ4rdyKXGtX2OM8WfD25o2/fnAgySX1+DbOU3YiBQ+Djx7NRk1UDWgbOgAfgtvXAyDSskBksMSOsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769375034; c=relaxed/simple;
	bh=FGuJbmja1KKGgiagz+CMGzE3IvKwuCIhMETMhRRLOqs=;
	h=To:Subject:From:Message-Id:Date; b=hCrGbNOyLPvud0Co3x5OKSRhY4Sxebofp6FallQ2R3BYTb08Wk5mW7vxNWXZ4gMk/qu0rlsmXqysJ09bhpc6IlUIUQxD/jEVMI40UBZUNd37YwEZCgCqlWrO8LM5jPPidX6lWQvA9Rb0kCV9y4Uioe4LTOl2jxPWcgon5LWdXEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL05T/UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL05T/UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E50C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769375033;
	bh=FGuJbmja1KKGgiagz+CMGzE3IvKwuCIhMETMhRRLOqs=;
	h=To:Subject:From:Date:From;
	b=vL05T/UWAPlua01sGE3IX0LTtXdgKVBFoNli8OIIox9RnsqjcYtWXVqMnzpBgQ6cy
	 3/wSz8ZVrorvU78Botw3LguklpChg44XyRLA8vP/bDtMeThG8LzTL2DiBZwYQwY95k
	 6vNJOhZzNHyZnHbuCMg/fE5puGI+Qpg5Lb7tHvw1t3EAa9ChVn8fYuj+dTU1fXuQ+0
	 AZlEDBLY7ZEu19fnIqwtZPJ4ho4ng+6gtktY0KD60Lzgwho39/nwgjq7XUMtLnjnPD
	 KD7oBM2UgGjMcVGfjK1GdFBghHKLX9rYXZuponVjTpVhP4dyP8akeNulb7SR5TAhon
	 6p5bBUwbo/eNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECFE63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937503358.16366.15450821280780289184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034680c778ecf7df3b341c0717619898c6a1ce2b641789c66c9cecc79224362a
Date: Sun, 25 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769375033
