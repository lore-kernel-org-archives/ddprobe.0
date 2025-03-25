Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC5825BAAB
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742915394; cv=none; b=o3Z/6aESUi9ws/hWauq0b+hyd0x4n0s2VoVlnu6QGiSBh3kXlPCRsxGrzDOtpSOS/gs9GaZl61WrTcQPrlo72P0xfwRJp+whXalZV6fred1hNWiWlRjlArttC/6Exl7ulVcPl0xclhrMC7+WGNGhoBMfm9UfOo7C5fmAFhjapSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742915394; c=relaxed/simple;
	bh=Kl/rCd2dKJ8w+1OpzeeRRlM+W+UHqMe+YVe72UQj5cg=;
	h=To:Subject:From:Message-Id:Date; b=jpNi7v8lx7dN8sUReVkW+OwFFC09Z1EBUSSPW0y9jMyDs0+XVlekOAJJqWKvH2Ab+qxA7wdxlRJcXb9Owdf3W3/b28jEIA/7dpSYQd0RoSelblCwovF8WEm00c0zDAAIbfwQLv/7fpvLg3wNFVm9tunVvtG1ZttKFpDCosvuWbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGfjYHln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGfjYHln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC022C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742915393;
	bh=Kl/rCd2dKJ8w+1OpzeeRRlM+W+UHqMe+YVe72UQj5cg=;
	h=To:Subject:From:Date:From;
	b=lGfjYHln/LhonCOlutHu8wSaIuXQ3cWuuLcGXYwdCVTwg/HTPuMNMlC5lOyKUkM3j
	 MrO+tQrDte9wkymBD19hRVl0RMSRw+FJDfbLyZZUhwJbA77O1dyag8JZSKF1e340wZ
	 J2zNVtt7YR0poGyZilzF0kZu4tuFspel24qTx50eyqNZ+zgpamNb+vYkT3NltYItn+
	 1W/p6ntKcPckv+nyOe6/utv7OwiNIu06t2P+gIbZSHylMcGCVLVpIIQNTYP2M0lLih
	 eYhQO8hbp2hwv5xJ4EB6D02te4wCYKQDMBXpHVql2R0q1v2cBXDV2Ou+gxELynbG0u
	 4d8vpAo3nbQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4F1C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291539362.29648.7511167042304231164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84373af23e9a56fb0abc6efb07812d54ef36a43ed8224b1dfdb454a56996ee65
Date: Tue, 25 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742915393
