Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DB925A2CF
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762816194; cv=none; b=uMovVTEzhkEEFKz9ax6lsdj6NTcZ+E+3GuY/TsGo8klcog6qsqHo+BEq4gfppoWSE2ffWAze80/rJKgaPvb25lWSZGySNBAklWBBGdBlCzrETVx6plm25rYJP+SuaJ+NrG9Gp5KRl6aBb7C/kezUgGM27iz6lVTHe1e4i/gypsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762816194; c=relaxed/simple;
	bh=gAtTfdALZTZAlnBN2xYqj/7GwIk8DazKFXo5q0KzYkQ=;
	h=To:Subject:From:Message-Id:Date; b=UhQK+Sh4NZrunYsuQM5DkMPKKFFnKUWBD8Ra0Z5mSKAbxmWIFp4lfhTaZPwx5wdnHxKz5Q3QjPLZHZW27dloINPu3aMQBa24P42cDjCq1fmqo5buxQGRKtGRVzSi+wVTQj/cHHhfeWiDmStF5fGCczzpXtRfKo4LW+CCqViKe3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7JPrBcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7JPrBcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95D3C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762816193;
	bh=gAtTfdALZTZAlnBN2xYqj/7GwIk8DazKFXo5q0KzYkQ=;
	h=To:Subject:From:Date:From;
	b=b7JPrBcMDCUq8KHLfC3uWD4jGdFlqAIBppX+BLhkk0yJb4vdZH8NvgvgascgpW2t2
	 ePnECcBTIj/XmX6IM2s8Q9c/IAwPbFSPitn7UG+r6JmbDn4sd/NLbWtGEwknhh72Lz
	 birGlMyWQ7FglCgjOiT8iSgrzmrbYhEVLX/EXK4wKj6u/2rHeaFvCPw6fxgVt9S3yo
	 40i/BYiWEFuv1W9iekJqwX7GHKyzP30FypS1YM5Sw+7HTZFTZvVYP4jC0pQivf3Mg0
	 S4jCC0XiuUpVKc1LADUFP4fM1w5IYtGjZJAGw6trNbebiWIFF5ilYRriyxmKu3s45q
	 8FIh2fO9bvc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C10CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281619359.450.10861942722054870443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5496a0799aec27bffba70deae0d6a4e3c093ff0527ae1ba66761b5855f9ff633
Date: Mon, 10 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762816193
