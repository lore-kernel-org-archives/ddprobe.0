Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211541803A
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724560554; cv=none; b=QPf+qMomJl1f0Npv9L2MYByc7dZDWKzOQLN9ogLEfgaj0ke39E8zEaeZ3GSpl+B8hb5SgyuxO5UQk3lSN30pTwhgE27FY8llxjkLsGZLRP8X1LOim9Qntvb1yPv4u+IbtVNux1mqvmL5+RPPdPJgXZ8Ki30I263iZ2pb18J8tG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724560554; c=relaxed/simple;
	bh=RT65+ARZvC6h5v+2HEXXQGAQpbogHFLkgi7SY7vGDTE=;
	h=To:Subject:From:Message-Id:Date; b=S4btxeg8cw+LRO3BQoMIzcJikr0CmPjwYmVo2KXfX5fPMQQFu0ZICx/R46SFXxi1QLz7Bvi59QC7twx23952+IbipK+2eQ8FwpTIQApgkKtdVWe1YPl2uQkahP5/2ee+nBy2xFlgZ4Yp7cK026KcYNNKnmir8cXdABASPMBgOdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT9bWpVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT9bWpVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCD3C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724560553;
	bh=RT65+ARZvC6h5v+2HEXXQGAQpbogHFLkgi7SY7vGDTE=;
	h=To:Subject:From:Date:From;
	b=XT9bWpVXOv1ruCTJRUvRWTPA60yCV525YuLP5HGbus2GW6L1We1jVCWld1GBnqXh+
	 VnvVnuEo8G9VY6JvknIuWFW2eUDf+6k/6VVN2YzpykSuDlZT6o6iW9c3Q6Efn8lD13
	 PEeaG/TmgfbjM8IZASv/LL5xPiFjslwIURyRuzBsTnYZGHVcp/wgKaE+2cgZySXbsx
	 8JbyrEP3RXb3uX4t8ffIWI7fqKANmYmucQnRZ70tcTWCBpJSIvnKcBXuijkcirIMjE
	 7bcjCdva0HAQC2kThvSQJUFDVaTf0UQJZ2U11ANqA6jcIJaKa0WTJQw0pipJ6f7Oz8
	 gPtJra0HJCNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5CC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456055359.20130.12670353544837123259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b295e55cd0e5be78d410b27ff3bc70d0ce13393283abd90c4399ea56ec7bbb
Date: Sun, 25 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724560553
