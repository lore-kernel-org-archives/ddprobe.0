Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CEF13B280
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741883334; cv=none; b=TDlXkix3gtBZH6xkEH+6pPRkugN6Ylxrgml1qC3wyJvNHq6Ti60boe1U1Xsa/lzFd6W/MLmCMZvR/9lafcizcDsbk9T0OgOSOoBMurjJ1TI6eQFxfesNaduAvjWCrya0/wAinlILMag0ZSe/PqZ5Q6yx/zwhrxb5xh0mVHHJ9/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741883334; c=relaxed/simple;
	bh=IqJbeh1V13X7YzBA04GmWot4RhmxqavlJuUTOCAvveY=;
	h=To:Subject:From:Message-Id:Date; b=QGSZKo4hft9AHa3ytC3zq3fA5XpCCDdxPRJCFgIM6jxOi0IhxkqnXhJR5++SYaBBaSEGeNd12gvnLGHneZB3r6WyqAaW3FVii4ZC192AEb4RvNoSY5wt7a9VQ0ri8thYnuwwnJmAnhMHXecMpVMzER2ku/7PGK8JmKBzCHa/zA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHfaqP8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHfaqP8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C336AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741883333;
	bh=IqJbeh1V13X7YzBA04GmWot4RhmxqavlJuUTOCAvveY=;
	h=To:Subject:From:Date:From;
	b=kHfaqP8PUejtfUr2yniUQNrQ1gMEbkjZKqIwhhvn/dg6VnogK1XVf+AlzlnU4lHDC
	 sVDtsSMyhH+GWlXhytRfIs9kmOzDnAPnrp/Q8c/7Z62yccfPv/LTMcdx5MpUgxA18b
	 QIQ4QR3YtryKZMNBw1wV0i6Yz5Bp8BPD/BRQNJMBigsh5n5hPEd+N6Ny/ouD3RElZ3
	 LPHeY5hYJldcUqqHkBqbn8zMEk0yN+6Uf0WqVIarOJLXFc2ISW/OfsWMnwx3rpTBPz
	 IEsTadCH86uLMv2yn0LN2MJCOECCwFd8uwBy9b6dpZ+2xFg2y16PWtuVnsfXc5LyNb
	 cAbqT/DUx7ZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E4AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188333368.25136.9305875415173518319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d9fa4ed5d1acb8f88103406c347625c629751939249b0a5ec5c34ad3e34bc6
Date: Thu, 13 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741883333
