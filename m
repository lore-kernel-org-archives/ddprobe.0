Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B9283FEB
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756594; cv=none; b=pmcACtMV1p2PB4GipUohZ9niitW8w2vkJSfYQ0ihsP/WSvm/r06Tb6sCXvyshOaRluEUH3GdCV6/EudbMusII1zT5ZjJDIKMiFfNzaUce0zljFrIEIPrvGeBHbCJHCzjb3kDbJ8j1vAUus7Zd5NOuT0rsXMg5QClaTicFK/iQCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756594; c=relaxed/simple;
	bh=aAxgCiwRtVQxN3zjIkDZGZH34zYsK0PZC5Xy2rtGLrc=;
	h=To:Subject:From:Message-Id:Date; b=fpxW5UKW4bIx1CIaJTyaGYULpVebLwZvQnwgUcdyx5F92Vso5v8uzL2wy2f5HODk9x60UqjreunEu5IAKYgjdGMkogSwz6OIQAnYrJtx7ypMD3J23iL76ncDm3D1tLsv+5fkMIGRVeCySTuVq6diBQXe6eawSsVdOCZTW+6X81o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukzBsjPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukzBsjPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6245C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758756593;
	bh=aAxgCiwRtVQxN3zjIkDZGZH34zYsK0PZC5Xy2rtGLrc=;
	h=To:Subject:From:Date:From;
	b=ukzBsjPTk9/FFc1ZeP/77CdoQeoEjR6qRT/yhO0J6l5YeHSC1hu97v7k++HW+S3iG
	 5g9omQp6gHu59AFnIAMHBGWanPon+ci6M7MX6s5HI3+78R/2OmRGy2nprxaWb5TwSf
	 rUTPxvImJ0FENKOFsKW5L0lwr7v7NDt0ULMw9yQ/hw3GNem0IXdqugJrTnPw99DaZQ
	 oeBMyRRE3ZG67iPa282yruT/w540cub04UHdz3UvFN4Kxk8AJXL5B2Ucr1zxnVXPes
	 OCpEd6hNcjy/MWJOQeiMbvY0okWTj6MDiSeH6nUlww50DMOS/5MWDncIueBSETDXjE
	 3hpawoZF90t1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF4CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875659358.22286.14596014223913404240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b6533bf46e2673430cc2d8776f8acb397a738316f107e9800fea263a95d41d
Date: Wed, 24 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758756593
