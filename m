Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC981DB138
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936154; cv=none; b=LeCnENmwrf2uj1C6KzoAVbIHGvcMIj6mVZmEYBQFxZ8gkac2K6S09kW6EokEpWK5zNmsQXkB1gbk74j99yN7BB3/7W/yvuXdhd/Zzzllq+crtW29eU2C8vlizmx7xMc6qiKqenYAmUw9bXRbmSohdbOYmsVUVMVvElZkCjbe8+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936154; c=relaxed/simple;
	bh=6JHdltCzc1R7Z16E8DyX8JNNgYgckZo7g8Rmu4OxmWg=;
	h=To:Subject:From:Message-Id:Date; b=qt0njEuzhOq4y96YtQLkBhXWpD8G6xV/WZ21BmNAExY5peI+LX1qslMGEU0zjaEHchJenKejKJxGSzhvLNi3z+h6jbv9FfuRsY8Gm3lXb3pwiLxp6AbKcwdtrKleSvtv2MufZqHg7DODT5amIK8MQYZPXMhmvxVlweFCsSdFqgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2yZytot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2yZytot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76EFC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736936153;
	bh=6JHdltCzc1R7Z16E8DyX8JNNgYgckZo7g8Rmu4OxmWg=;
	h=To:Subject:From:Date:From;
	b=H2yZytotwoGU+qBZ5WBCfFk+8cYe3maJaxKSWJNZXqnT/0c0Grl3/UqKvgYfuYpTY
	 pA0XmCgULX8MgGuixmkSMs1UHxbajXVfyGnIUGaz3unA5ZIW74aQPfZlJhoLH4ZdKt
	 rRLjWk0zk2+t953G4Re35VGrwOighnFv4UyENNAVrq2UsJgB0Inr+1wDptXNohzUEB
	 3heXV10Jg/x4wFPeSJmXH2/P5HtESZ4W0P/CGpk1UWtQ1Onw6rRmYRHkE8pDsbxY5L
	 obd5dwC253qUVQ9MnnVI4URGjVj58B8FVXyfSYZtmotfdwIx75th1MUX5iL15WMitj
	 ZEN9PfHxhs6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94735C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693615359.2152.1307518531863644027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dd1b1c738f75c14f201275797db3cc788ca722e80ba947baf2efc4b1056e78
Date: Wed, 15 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736936153
