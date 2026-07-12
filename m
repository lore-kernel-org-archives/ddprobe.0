Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F61318B9B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783853914; cv=none; b=L9IjT4zIUy1Xj4tDIq7iV34bhMBx0EzArBWG+EdD4AVI4SRBptxCnZ4I1adYyhtYGDuMqw9uvH4/DwiOJzCGdV2YSZcC8Xl0VokcRlGshrl+mWdsiMvU2ZypwBGpUPoSZdR5POILnZpOdLiSDYDs8FRQG4YrOuzG5fFdcGZISp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783853914; c=relaxed/simple;
	bh=LfhcVu81DBqsZRGVXYS+leZ8rMFg7n7niBXKOJKuUjo=;
	h=To:Subject:From:Message-Id:Date; b=oxjqB3/bylB93NB498ONCyIbJ3KAi4VXuFg67zyL3+91rAhGb4iqRKCNoPW0RD1lmvXMmZZmWHt6Kr0xM+im6+AiflKqisMurdG3xgtVzusW9DEHPTNTgDg16/etntxTgaY4AMjnn8MJysktYLSOAk+m0Wn5oDIfThlfeqCOpDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mkr41E77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mkr41E77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB91DC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783853913;
	bh=LfhcVu81DBqsZRGVXYS+leZ8rMFg7n7niBXKOJKuUjo=;
	h=To:Subject:From:Date:From;
	b=Mkr41E77HAvZFaCI2SjDUzqN9dDu43+p9RkZEBa7nqcJ9GWA0Zqumeya6QWNvWbbc
	 GbVAqlLVOrXH0Z4TMWBBqqQbWcW3ISmVrfMETUaxW3bx4zr/VfwpMQiGMued9YM/+M
	 +F/tlc0SG1+tN2nnzZEX/cT/yYPcgX6/HDllDmpwqUYzLev0VWT61z3QzOLj3pcy7z
	 PmOpDGcYI56f8psixuPl6SI4vERJqNkuKjkfppp7NFPJJaPUuHp+BF6yR+Dl57z33H
	 ZFWPadjSzxD6MTJrxQQSyAIwakl8ZYl4ub5z9E2QsZGlT/t9A02WAy7GEiU/xEVoj0
	 Pkoe6mu7MmRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8385C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385391368.1808.13893829200711484512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6972aefa3b62ee9842f0e821d9624763fd7089ba137997327c90832b86cb798
Date: Sun, 12 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783853913
