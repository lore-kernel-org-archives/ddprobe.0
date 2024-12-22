Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DBE78F45
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734851154; cv=none; b=qPXolWh+Q3QzWnBzeBgr3Lfdtp1P8X8h1afZDnJJgT6W0pHDIXE2PXAGhCy0BWeBf/Ztkr80DwJmurvZTtHcw5BHo5nBgO/7stSE7T18jQTrdOa5IYEHOxKoq8hNKEmvVpd2J1MYgZDhnIZSXO+6Y73gZ9OJvR1qr6H4q8hcc8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734851154; c=relaxed/simple;
	bh=eKbyJyLY18yf37nAi2VuIwaM3zWNajocAG2jJGH/kQE=;
	h=To:Subject:From:Message-Id:Date; b=i816IQR+oHaHCeT7+HJoCcQqRlfW4nJ4lf+j2GJlC8nOzXlaekvz6f2wQKb1i3udVNG2CzdwccQ2lDowMbu9YjQO/9eixSAddF/WcHvnpAHyoofSuAOewM6PjB843SsSvSt0BbVm8yfuDhV6TVkKU0fYrFMFAKtY82yWUuRZ8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ8ATUB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ8ATUB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6873C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734851153;
	bh=eKbyJyLY18yf37nAi2VuIwaM3zWNajocAG2jJGH/kQE=;
	h=To:Subject:From:Date:From;
	b=gJ8ATUB46sNlgOhlpGPaVpmwRzv/6AxmEPjDZ1gzOjtxnRpxUYuqWToxHI/Jq8GsQ
	 HBbptt1CTlESH2sMS7edsjK8kDunnuC679j33sTjJGgMunhmHuDmggHs9cN4K8Kf0i
	 VsaZYFBlfvx2mAlqr1ANS57EngBYJjm5dHf3LhHOAgW9xExiV3K9GC+bQ9341UQiLt
	 zWPtpmFwPJlhGNOX3USYDBac4VZPh8CO33mfF6Q3OH+KOG0aKmCv6WInoQqKkOu7nk
	 Fse6y/ZlIoA1JSrsPQRrVQcGu5TTIxjZ4J3nrRQUxEqeOwtBuC6DHE0KG2CVdUkTpc
	 XRO6qlERkNzFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93003E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485115358.12387.18063139436795661828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc2a7eab4cb3edc3ba9a0be165b0120a4a70a368ba99453df534dd927a2b369
Date: Sun, 22 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734851153
