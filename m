Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2E429B777
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757995195; cv=none; b=SEaxwL0o+CPQdbGmWLnS9QQA95P5HlHK/rcRcQ/2YDbgiMGitW4eNhEVZDoJIV4lksbZ6zzHOU+L8ZUvyiji45oXOYlj7aOgH9CGFYe8i++Qw9f+mAZuPTublKXyByJBnkehU86htpeWcaoJUJMEyyaVDAQ/uksIgbM26i8hPiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757995195; c=relaxed/simple;
	bh=6+mFSZT7zGZrzjnRVhdAVq9Mam3D31BZvTJF8wyBv3c=;
	h=To:Subject:From:Message-Id:Date; b=WSUjLlrNdWsXSzuYJlvD52lJaR0AOrV2cvmsS5ObfgqrvCSYBRHYZ0GRignYe6XrGPLOdj2DupX2UNYvxVPa0itavQAu96gLsL0Wh24hqrey4r3N5J32K68Z4U2HxDCRWnIpUGREIG2NEgt+VCP0w0xBSflN/VG8FGHdT/QIIaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/2yC0Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/2yC0Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0029C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757995193;
	bh=6+mFSZT7zGZrzjnRVhdAVq9Mam3D31BZvTJF8wyBv3c=;
	h=To:Subject:From:Date:From;
	b=J/2yC0TqPyOrF7FyilOUz5y/zsQS/yPtW/yktuk6xp6sAJViUWT8WYGvHqC+EHBlq
	 OH/ym4WZlh5aKE3xoFKJp0dYUjrOb9LV6BalcfOEisJx9mLF/uUYw0bNwsk6Z/Q9p1
	 KQbC7/2ve3z6+YgnGW4KLhSK13b4OSSV6V3eKYlwojsrT9/KulglwIAXQ8PI1Awa+j
	 aUhb8kZha665J+FwghsK4iF0BJCLe+I04G1N5uTg1mbSV/Fwt7nInh6Rl4AjaczA/h
	 nAvkZKewOqthOqoU2NOLg4QT4IKaSfq9vEW90Ajk2I8pHIMr2kx3nLeNuSPYECfkdm
	 WdNXWB+Wudjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F106CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799519357.19172.16025338307608821575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88eda037098b2355b12faa29a18742710776f2078414f9e6c25d169563f688ce
Date: Tue, 16 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757995193
