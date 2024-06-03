Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD887E579
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717434923; cv=none; b=VcYBxJrZL/xcePuaFwvIRiSqTusUZqnBmtUCN/SsEONVBHiEypn+dZlvZXd1LzZksLoBUYtZujGE2vBTcFHrW87V7RypEKInx/5iUz7BppP9A5x74y5G47np/bHzkfwTcOtTvZyh27AI6dgl95fVARzUvZexsYxShC5o4gnpDDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717434923; c=relaxed/simple;
	bh=x2FVE/sbDVgv7IExppI0mLOS+OgI17oJbPErD5PcaC8=;
	h=To:Subject:From:Message-Id:Date; b=fJ1+WVgvfqO3SFyQGYVdVqJTc0STwtLT9qjfSCVLVcuaqDtd/03X0dAcEyBXQJdNNZIh9v4Y5BvKo9qL1uVCXQvatXoeW2+RJ1AnxbUI/rr5k8m7wYZgOc51yH5jQEbb8Xk0+Pic9FIXMwU5Utp2qwPUvWwPhDmhLbt8PVhblco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPBD/x5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPBD/x5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB96CC32786
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717434922;
	bh=x2FVE/sbDVgv7IExppI0mLOS+OgI17oJbPErD5PcaC8=;
	h=To:Subject:From:Date:From;
	b=PPBD/x5BYtN+YGjlNJ5D3PQLOXiIn2Cda7eqt9Hlrt443vfe78Ny6a8MMbXI24/ue
	 pugCQQQ0WLO9bZTPSX/4rTZkrWh33oJ3x4VqmONYE9AjD9bSpBGE0EklSe//qU7Ped
	 ZoXnYGr385IFE5WMcoj+OC7ctRn3pijz7jtt5iR9tl31jHCZNBXrxO2/Ti4YahRz48
	 4OnpKYVCGOiPTgOnC0Go6NoAz2n9//qVRBnNR8kRw+0YGYRbJY2hgUMHwGLjJeajLr
	 JMEpe+Uf36X/wBoY6NMrvgFh+j7YzPSsperNzcEhVQ06QKvWdNC9VSzziW7ICrFU06
	 JATG8VFQA/XbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB64DC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743492278.5616.12581316837847146229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6233a13b3311430c74bc3684c583c373ee92453381891ca71e8f645858890cc
Date: Mon, 03 Jun 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717434922
