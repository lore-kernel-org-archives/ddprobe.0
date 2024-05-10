Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B95815F3EA
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715340743; cv=none; b=uLlEQZDYB6gf9+FSeNxA9PyHSfxnEWZGOMvkSs1UFrvcXxhh1jagARZvBgCW98QO6D18QHajWHFAy9vi8s+hL29bMfEvCnVMWylakriGPlH+ejz+fi/D2XUMeqr/rMSVKsrISjt3CgXxvsMrvd+KxgwvdDaoaHFT43Z37R2aD7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715340743; c=relaxed/simple;
	bh=MS0F1xS+7J+uP0Wt0WxalgmAabVKGtHaFoCWqMccXHU=;
	h=To:Subject:From:Message-Id:Date; b=nUPLdOVQpFkPLung/tWXsaodpK0CQ1fSCa1YEzK1rNeXOy+T44XhNdK9WZdp7k8MqRnuilx+HSwRPkhiLMoc8ZEfEnGaDM+fge9CakyWO434Owx4kE5nPyq3l7uIlmoiu8ENO/D5+EHAI7ws35MuMrFfNeMnvP1mNr7SU3IasFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpGrH5UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpGrH5UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CF8C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715340742;
	bh=MS0F1xS+7J+uP0Wt0WxalgmAabVKGtHaFoCWqMccXHU=;
	h=To:Subject:From:Date:From;
	b=MpGrH5UAU9g2QMeLqkNhNShRVk4kvsKXfv0gFtB7zoRiOpRn9yRa7i1Tvo1E52G0b
	 St21eB9XrKV/lZURXk33JPSz8WFKEObeYDXn+YLwEJVP/QakkqXGR/zdBf0lU/QAyR
	 GJN9II/GDxT32WWPTmy0s3qgQb2c8qrIEG4/bzK/uuxTfAZWbOfOtafnlmD2mkH0s5
	 8KcE79oWAc5x7MP3xdkgcThZCvlrjGLXcozMz/2JQEwyVsSnDMRyjoYbikRL3Q6e34
	 upmfzZQH4AjMbc6hA9XaBSPNTUM9+Bj69lUGbJQsBDKm1CM413tTEkql7Z3YHr/SFU
	 A8e3Et+ldXrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F3BC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534074280.20723.4327203678582830563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd71eb3adeb3e4def8db341799e198c7abf83dbf0a8b5565d52f42e18022764
Date: Fri, 10 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715340742
