Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C3820F085
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751744394; cv=none; b=ltzMr4QI+fCTzCjRX8J2HJcqM3sRBOD1ZYaL2wmsPlYrUuqZWtvqH3nLeHn3jxAMrCqTf8fMGjZOMUPiJpfmgnEPyZNtEqvmx1SpBnZnttz/I0LQNYxjIF/S3lZwOgTAuHvofjJZH4lBTUAi0H8N5bQfrjfgOX7or3FtNxrjEBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751744394; c=relaxed/simple;
	bh=DJVOTn4g8zwH+jd/y2pXD/ExJPsfrQSTnxvIhGG81HA=;
	h=To:Subject:From:Message-Id:Date; b=ITszAmJcCcuOKANY2MJCkiv8p8W+KjWq3yWlVAOmNMguSnclioKgzY77r8DKe/oMH4yQTko58PCUpHavRN2TWXbqWFmcRdu/8JS9LWSZZMxsVD7BZ5vTpj3myrBuUYgjmyUU5QXJIP7oK33vwNAZ0Ohkdgeq6TnwnQtk6Zk+kXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgUztPnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgUztPnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0775C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751744393;
	bh=DJVOTn4g8zwH+jd/y2pXD/ExJPsfrQSTnxvIhGG81HA=;
	h=To:Subject:From:Date:From;
	b=LgUztPnLrt2saHhQt76gCoahB94hqe2gViBh4pupRxNlp1gqsXwT1MF5V2QoevEE4
	 plAx6CB8pEEimGZGxBRTNO0Al1VlVtHmOBxe5uhZWaF1Fg/VSINymFwU5/kvyFZXwa
	 LYggOrAdlEqD/a1vF2mHz65X8taxKO4QzzlrNM0J8yvprmBReU9Z0GE6udoKyML84Z
	 /Fyo9KgZ1MAnSDu7TNqnoAPhMZGAKKZM6k54TlIunqjuN2M0JwEaX4H8vs7ZmdAVc0
	 rRUF92MP3CH69thiOdZTkRU3ljCSru5xPJ5kXB0OY5Htx4u/cpCxNnXSJwrnuwYs0+
	 gvTEeAIAgju/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC69C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174439357.20715.473503191968394689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7c23b06803f626d4bf022a1b56636486354d354019ef9de79a493461251767
Date: Sat, 05 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751744393
