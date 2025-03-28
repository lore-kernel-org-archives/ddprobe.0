Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0241F8937
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743127794; cv=none; b=u81AATjg7D2E1siuos7LONSCMhCMJbXEqHuxjd7R4xgRK48UbTE2Kno6deHcdIeEzW2VDv4Gtvg7KO7Lkbg/b1q4znvEioS+P28TrqunoY1CSKl3XVnV/mdk99ZrqcJ/q/17ctI4tQL7ZPRsFOlb4/zuc5By6dh4h824yp4MRTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743127794; c=relaxed/simple;
	bh=VjEJzGHP8F5CF9nx95yYlsRxEV0nfz0GJ9qPZTzyLfM=;
	h=To:Subject:From:Message-Id:Date; b=JjSc7/ElM+9MvlxMmkh1DBF53eksSVyLt8psYD2WD8KHVZ2d0/r8ZuLWEIxWhsFIlvHwt+7X+YFwwlE3IJPFhnKyUI5SunU1uYKx1BuswLVZm6tckZHRstYJnWgg5YJ4/1QLWt1Tuz7OamiWaSYPU4FpavWcRV23lT9Jmsqmxms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCkyVMmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCkyVMmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743127793;
	bh=VjEJzGHP8F5CF9nx95yYlsRxEV0nfz0GJ9qPZTzyLfM=;
	h=To:Subject:From:Date:From;
	b=HCkyVMmE/Gspv8OatDeXXmdpm2ynPN4e4nma+Q0JAvKJ7k/5CmHG3p/PV3A+TZjrV
	 MpVPxO6e7PgBD3NbZNykUHlcmxKBCzS1qgBs4ITYFdb2eL9bBUCe71z9Z9A8z/M+YL
	 AwldONNCuKgcMDvjrVXqTUhOYw0MYWxhJnXjz7QQWBFGn11QyGLatoNwz8BdE+il6M
	 NsvLOmcpVOI08Hjj/mi1noBSWm0kENl4MbtIStG1K+elGrHMeWdiDsP8r0w0YIdMf8
	 dlK/IUVYq7cJZy2Q1xJXOw07chJ/N7ZyDTDVsy4eiM6RE5q9vB8CAwOqTZ1Xe3M/+Y
	 RPX1A81I2l1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92875C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312779359.29318.8131800194622322648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fb955b03cbdfc6e5b5edf0ce9239e82716fc228ca93692f507721e0fe77932
Date: Fri, 28 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743127793
