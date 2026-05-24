Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7A92FE060
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779666154; cv=none; b=G/8EAxXC4xkeEoTGakuhNBP8HJiMkH5JPa3iAjevN5pDZ1XqgV3aoWfJlDYEWVVD0hw5hEbktq2va8qSaFby3zrF7kR9o4647w61gJJRfjsIeIwukMHp1dtV7WeKvLbkoveksPf/KQeemrKZ7lVSdMI+S/odoqxZ8bOwhNZZ0Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779666154; c=relaxed/simple;
	bh=84aw+oEwvJCFmf2f4idGLmpyHhj4PRrM+rTe111Q8pk=;
	h=To:Subject:From:Message-Id:Date; b=UJvd9MuJLkVT7xZx+fvmmPc8V0u7wdfQ34V/izQ0fmf/DUsYtfJyHOkBEHTT9/qVHNuAZbZlj+Wy8vYJ2DFZYDPHygoGpgJob+8M8NWnAB6xcnlcKeXP5ME9EaPqLpEfvBfPxv3Jev3Pt8c3HppVOLx1bfKVlLl16uym82RydEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMiEbH/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMiEbH/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE53CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779666153;
	bh=84aw+oEwvJCFmf2f4idGLmpyHhj4PRrM+rTe111Q8pk=;
	h=To:Subject:From:Date:From;
	b=fMiEbH/gh+Jfhpod4ncxFiyXFpyexM6bauWSDSSm7rTDcyiwrg7zV2aB4Z9j7jQgj
	 k3qGqApTKXXJAzsGUJZbvr7ohfplVkr3bBoQkH92eZRe0e6bLBU5E0zq1hq1XzfVE6
	 DdoeHIBYEWKZk6JJwoenfELpBvDSnEiXkShqvtXiBp3WeKmQdsr3qRZlsnxnlVg6rR
	 UEMuhci9pWsxvVWb7G30hhci/Hmt/fr48ZQSmfImY/3EE4Fh3JxnBddk3q3xwoZDAj
	 3n9EV93s9wta51KvQE/I0oY2WzHBg7aA1pck+Dxx89X3zIUrtt94GRNhp1hvrLwfVY
	 T7puoXRZOF9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BAFCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966615370.29957.9872506491676188351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0139cca83d73f72992e8a7acbc21b2f31be0d5af1d8adaad46f06cc372e12379
Date: Sun, 24 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779666153
