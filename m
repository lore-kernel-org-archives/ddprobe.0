Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482743F8232
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785151234; cv=none; b=lXk1K9nffMHtIka06dzxYz8WW/YszkiYvpdqMgY8wphu7ZzfhWMBAmYWoIepJ26E6U3axuwetZvIqtya+i41dQU+r20d6FayMaiKYtkZRy4FpMuavmvorb/a1JnBjtRFXvhPVN7EeqO7odORbLl5y7cvadCL8Y8mjs45Aelw3F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785151234; c=relaxed/simple;
	bh=/c/TNitjR1dgUZP8AER28jPCqgbpe68ePkwxq00KKKg=;
	h=To:Subject:From:Message-Id:Date; b=BS/5wy5ZgWkErBC1RMfLcEru9R9d2iYMyPxjLDHSP67zmhAAmk9s54W8IQhiIx4ntx/IjqL/XPMpABzKCrwFqL9/LcEPAl1wnwbE2GLPuRu3EQel67+DFM2dMcZtasKXHX7W8QFA/DRF3mA7srke/tIjaYwzLvGew+Lmvf1O6mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5fMAmjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5fMAmjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9190C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785151233;
	bh=/c/TNitjR1dgUZP8AER28jPCqgbpe68ePkwxq00KKKg=;
	h=To:Subject:From:Date:From;
	b=s5fMAmjL2FsMEyzFYnWpfSOx3yoOJ+3A9mPZEINs7jrVXaGql33KQZnVOBNs8C6QG
	 RN9kqDdvtKCxA+hCabTRZ8SwuR8E0UQZmDAA+wlEwDqKFkNfoK5GGwIz4ykEilrt8G
	 6/uIpH18WYtytgbLJkUbLxva51d3KYyXE5VF+kfyXupQtgSBBA0pcuHCpIzyz7Uqob
	 gN60aQwyzrB6DXmM6ieSMHJAbmV6B0LIXqlMjLjjf0jp1PDTY94wSI1lRkgc6bscnh
	 kQ6MSM95YuIa9brbi6M2VHBkUIheozFEOLpHVX2p/7EbinS/uoCzln4SzosdITlRB4
	 lqxgubXgvasaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A859CC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515123368.30725.17016356794396539049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c98fcca49d4804f12650afb26f439ce4ddafe47b794aac86a36ac5e6fd17dcc
Date: Mon, 27 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785151233
