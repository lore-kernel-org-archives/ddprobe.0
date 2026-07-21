Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6F3EB0E9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784593714; cv=none; b=HQ1KbUuTX3adP7zu82Cp/jTdWdWvviVI/kE0oRKfqs7LRyDexPpZI75duvAfk6LTkC3lx0+1vsKxr4fqhlvt9d8Ti7WsGlb2Q/YK2a2diX87d7KNZaglQSohFaR239iqI91a7pY/9DcCOPI4SfbLvvJ5g06EKA2/XVyQy6StPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784593714; c=relaxed/simple;
	bh=fUP1DFm7BNxuekvVSFm7V/eJsWJCsFtbgNtq5emCZe8=;
	h=To:Subject:From:Message-Id:Date; b=fjiwZ3VTP/WbMN6TFawTsxNStHq+ijQj1x5T3e2qoOK3aiZ8JAirAc/6AiwbaJMi99YWrLthXq8+JfGiMCb2f2WXUcrzGkaTLG1E5ep44BGXc6+LljyA+k2J1P8CxoVl2lBc9JFjQw7XDPN95jFjIHPfS8dczwIyYfyN9Orp69U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4Qt4kEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4Qt4kEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE7EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784593713;
	bh=fUP1DFm7BNxuekvVSFm7V/eJsWJCsFtbgNtq5emCZe8=;
	h=To:Subject:From:Date:From;
	b=R4Qt4kEsfnEAvDzLyaIWm9OwD+LEyrN2tL0XShdTtxV8GJHHXIH2wKs/7+TdKygNu
	 dE0LV8jOphZGOsUoS3h+x+ktOFwD/HExJdiBjJwCKQ9CT5ir75bt5VF15gGg7o/xpy
	 QeMBVxjHG0kHQuo15O7ixNTn2gRgq95uKEdct1nsUGf86aivLJy2QMRqcvL1HPt5Ln
	 OZpfuLfz5qsSTFEK6wleaYgoEABYS2uxAW8QmdhPN59OQ0DuHfChkU/BZlUwQOiZrX
	 dJ8SkzJ7qtLfVF4HqCJi+scqqr04L+yB0j3sOX/CPtENVOWDH1KPVCy3h+RV3gzNDd
	 MaB8VAAxd5MEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0AC44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459371368.21574.5034339586526057618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c312d438c9aa14b0ff354dd5dbe46709fc848741c3015eeaf10d541a1feeab
Date: Tue, 21 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784593713
