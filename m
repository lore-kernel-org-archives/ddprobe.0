Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5382D0C72
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785846634; cv=none; b=DwIuzjLwH+L9wPqZ/70I1dnErtvQFR8Am9SNBsh9rGt7wzynZXkp/Oy9ts/yDcoWUoKq2t280Sn36ZMeQ0gGtweJYaFaEhO+IJ9Ex+F8vhEZypHAcbM22JAeaXmf694b1G+Q1clw1RTFhiZ+OXPQUbsZKVN6RHUUEp49BIoCRpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785846634; c=relaxed/simple;
	bh=F6a+QmnDJPFJ4qvgrLaXl1Cp+cbUiNcf4RJ+YPqyoUM=;
	h=To:Subject:From:Message-Id:Date; b=CdGm/xz7+8eY4KljohDH7XHlcAe/4wqg15NI4MMKIoYDmqBmGvPSMf9IrUlS5h9++Lp5JNpSdk2up9Rsbv2uFaZ2HAuvMBDKCeiDvi5QmqGw5gz3KFY7WifN0/oEItZQGpIP0nZghaOiLXxhgoXE7DTYdF1heJJzziokHaR2UaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYu+v2SS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYu+v2SS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBB9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785846633;
	bh=F6a+QmnDJPFJ4qvgrLaXl1Cp+cbUiNcf4RJ+YPqyoUM=;
	h=To:Subject:From:Date:From;
	b=tYu+v2SS+ep+DeDic45sM+dOE0vfaxINiRuMORyqsBlcXyApnFv026NQLK1hvLXwS
	 LLTG87LYC0Q/0m1OkksyF6W1tOTNop7V+Pf2dpHHgOxNLjif9yug1QklyOmIWNT6kd
	 tWG6CCmXFrsSZb4A7ycJ1vA6g+eI2GDkvmjOIWF0uJrZOz/lVEftZaFFELZ1SYFrHO
	 ERqfX0/JqhmzFoE8YSupK4lj26478pFF/3uLXVOd2BSp5u7FdgCOB6erzleJKrVECp
	 wOPv1KDP2UkkAhVCCoHxG+Thn7PVOrUFqRW3lm8xY7B/sD9tb7qyd5P+//GiOOT2X0
	 P0mzdEDFCR+Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B529FC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584663373.32562.15081672265461915212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6ab961f88dd2c22b4626a0c241a1b20249faa0f7c7d21f7d59506234e56e0d
Date: Tue, 04 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785846633
