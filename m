Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E34E24E4C3
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785745234; cv=none; b=TsI5pcEybzEz56eESa69htwLDMS6Ygq4wyRO1l7F/ANY2PTQ9b+l5E8IC641LeDifMh736JTdLte988a+eKi7/MUKDf8YoqG3gRQFCNQXfPnCnLccXnrfuQPDTSbwF3MLtc/k3xvR4DaMbh96zuZh8uxqW1QRvj2GS/PP9GnOBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785745234; c=relaxed/simple;
	bh=uCo9ZMoP6qwokgis/On4hW6sxPErxJ5DhQ4mr/FvFKw=;
	h=To:Subject:From:Message-Id:Date; b=ZLRnsOACorul7Xo57spjZp4yaQrmHO2uIYbBuGG8K1J3IwuwZQyNpQBs/5I9Jy2Y5mrMxFV+T4R6zzQOywM4SIdba6yVE3TSleoctwRm8tefhI2HJpKldFg4UwfupV6gynU8MVduziaoWDS5MZZQJuzsOSZFe2czKw+9J455WbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYWAyczI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYWAyczI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C937CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785745233;
	bh=uCo9ZMoP6qwokgis/On4hW6sxPErxJ5DhQ4mr/FvFKw=;
	h=To:Subject:From:Date:From;
	b=nYWAyczIdFdMsvL7rwc2BkU7McY7aHrTyLcmtvShc+6xAPu0NpUDEDlNCWGAVPlSy
	 fJt4qgz5BHgfDqGVHZNlmpvWzs4TWO68LJE2YmqJKL4nSClgm/TxBUq3NYMjgKrq2Y
	 v0tEMUfngEwSm9wP4BUmw9dqZMs9yTNNFTc0135CEWDRsmcSCN4nGWJn22+YHBQrMF
	 LieTg8gaiTigEe6vpgkzRlg346t/Vun6YJuWOjrsMTJsXZR6gS6NZT/klJsT6XU7Jj
	 I5vGe/2N4i0tOmTkThobg6jKSHxdb5vNiiHSoOtSrAcGgUa0mi/cFQrCYilz1hFuIC
	 bTdHcfaPJlLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB309C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574523369.22528.320021588433992842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f8dfc0348935cd388bfeaf902d364c8cf891614183ec18d7c0ae80e6adbac4
Date: Mon, 03 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785745233
