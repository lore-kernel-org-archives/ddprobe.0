Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8EE14BF92
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769352834; cv=none; b=ZSE8l4Uq562mBg10HT9Nmwvs+sqrrrRzyriu7jidBxUpkxaD4FFBfWYstXL6HBXtmNP061RdQANobm+d9FQB4I0QQK8PbjGpxrK0VQlzulUyrMrnEMdygVu8+8VosRZOA0aYyEkMjW2PyImqpTz8KjwPNew4xobtqSYleAPMqBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769352834; c=relaxed/simple;
	bh=bjFOQvy66qRoyZVTz6P/mRvHCg9/NRQ/yreeTw5mcV8=;
	h=To:Subject:From:Message-Id:Date; b=kJqCNvBaC2E8zY9I2J5clfuBexp5JtWRE4GdfbEVyyt/MHXm3untBOUabfQgYzT29FujtZloJEzFFEFq5XWJJH2MKlIOxyO1KRRmuLUb/ACH7s+2A9CZWRlxFOcPWasMKXsYhauGsHKybixCPAgQxbxzPfv3M/4UhtEuFuWD3go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8+K43SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8+K43SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769352833;
	bh=bjFOQvy66qRoyZVTz6P/mRvHCg9/NRQ/yreeTw5mcV8=;
	h=To:Subject:From:Date:From;
	b=N8+K43SMkfMW50sEpQkovowlGpKLBY/0nvipgm85cEsP3V3CJbsD63+ZA+BbFmiep
	 bnP6sg3WVmpBdB6iYEmhADt9mzag2Z34huT7vpjCYGMIeoxXwjHIpYwfM/UvcthMJa
	 7CUzk6qxIfUFk4XgtAbraQkZMvsQK3dXlcWjToO9VV7/zmB1OOswdjQI416lDIvdbC
	 DX9+Wfb08OHxnluQiDrddfATtEIWPrdgP1NgQKeYs8piwsLmiIzb7c63IxX0Rm57fu
	 3cSa8pVx+O0qoV6bq4wlm+3ZkBvhWXtO+0HAe/a/oyGfsrKpsGCVTR14fxOKHDI3k4
	 Xbr173eJSK8GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF8E63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935283358.22966.15890035872825980179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d57b2d0125055aab56a18364f7833ec7a776ef881690b8542ec9cfb2cf6def2
Date: Sun, 25 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769352833
