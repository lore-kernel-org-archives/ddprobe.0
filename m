Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7321EFF89
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747121395; cv=none; b=XWi/guI5SrLZRuV6dIVO/ExiNRFh7m6Qfqo0LVCoal/Iy9SuCcof+s3JMNzytAnTtsQudOwg6ihyAQ7g+7+wHD0t5GHVNvewNCrWni/VyXmBISlJdO3t0vVa7/BWUPBXsvb1zaZasNuSVUNXS+ZjiNHQZnOWsO2qJ4445MsyMOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747121395; c=relaxed/simple;
	bh=2SQpYlKsvml3bD9WmfhEpIxYhs/o2FM208+Szt62wSE=;
	h=To:Subject:From:Message-Id:Date; b=FqWaZYHeFq14h55MvT5fNOTBxEIbjYhPWA0pAt5OgYUEt/aBY49hBWHjvT6cAAUdKZT6uWJKv9wGfQcUhXh1hkMpITqomQj26D9hACTEIzbOrSjD+bLJLTTCFeQwPkr1M6JHM55fJZ4ZMkvIETrEK3c6dpV7LidC/FeJPILPuIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZtViHjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZtViHjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7067C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747121393;
	bh=2SQpYlKsvml3bD9WmfhEpIxYhs/o2FM208+Szt62wSE=;
	h=To:Subject:From:Date:From;
	b=eZtViHjX3dHbjtw+F2NKWze0v08peqTko7zF0Ak4Ott939lyJvKDthL9Vq5Uy+/GU
	 kW7xeMvYyEh86/ERzHTxUbvAWC2jBZyMNlffow08yWp0vbIOdhOCeSq0h1QhZ9GNh6
	 KtlImsEhViDjuPdQGdx/J4oUfVYRg567Hgag7sohXT+Ba1h2rEkWFb0ZHAdby7rtWv
	 8abLsiSg/BQmpT6LR96f8m5P+uBx9SYr/HptF0cPC/CWtiNLB3GFI2YGdOPg6Kr9ws
	 aKp757zrHZCRQ4+RorOakCuTq+OCNQ5NmFOkkk2NZOg4MQHErw2HgxKYAeApLQ50TE
	 1d5Rz59TtrQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE4C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712139358.25038.13514768009181279580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f0225d7792dfaca84c62958a4b9f6163a3431969ee83eb35ed0da36d8fe1cc
Date: Tue, 13 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747121393
