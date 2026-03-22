Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECB937F720
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774219494; cv=none; b=mywholKUAxHL1RfzsKehyGAPKIZeoFqX14MNd0GcAzK3V4QpOpqN1QGssCzKUdt6NvMpiE0LGLNneemIHTcapTnv/FScvxWqutE/hUqsjfgXZ4/7VlgnbgmC8cN5EeYPRO+8LtwkerTCrart8Zh9NG4ZbgJhRKtWNh8WgrWCrLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774219494; c=relaxed/simple;
	bh=Z9pYRg3cNVhMHCyhtxOXgiZln4VGj5RZu6FNkdtH40Y=;
	h=To:Subject:From:Message-Id:Date; b=QPsyAhMjUNNXciTCGp81Xu6TkVvlq4uOVUUnN8oMwNpBW32BFjXbBljFlVgsspDS9mAsFx46JwaZT6hjOL0Ngy0vedraaunggvQxYPbaWN/6XbwB4vQvve1gvpNfaDmSUiwfDK25uYBV/L1tjPu8cREI7st6yD9LmC2+R3Kei0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVNhC5fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVNhC5fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774219493;
	bh=Z9pYRg3cNVhMHCyhtxOXgiZln4VGj5RZu6FNkdtH40Y=;
	h=To:Subject:From:Date:From;
	b=RVNhC5fkEnjIK+PMztW4uMJdk/+Qpbt7xCmAYZJJ4whdv6Zw879UTAw0zsg1CU+AX
	 mNMq89VOfQ20+r7NUqAt7PXIpXzfcGT/cXzmdefv8HCpXNWQtkPCxenh8QLHnVsghM
	 j4yYA/vqyrgJBbe5Ppmm9M/rC3B3L3sCF4LZXb07nJoMJ/yZtdNGKdqhQGOfwRK1v9
	 XUeivv4tFteupA8almMKwleNL1pBNEQ5eUoA+1NcxxKHnVaKxOe+E6QVb7mpPLQ8sb
	 tM2Xs3hkqQEQ1XKDige1h2vscg1Us2YEI5QkwsNbgp7TvOUT0mANNCvjA2V23+T10y
	 qyjym2egR4PBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963EED58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421949360.6247.7875715961614228470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbfcc24f1bd540fda1bd36311b3950901ff88d9221fa72498598b8e0695e700
Date: Sun, 22 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774219493
