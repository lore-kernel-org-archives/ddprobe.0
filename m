Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20157149C6F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782394654; cv=none; b=NQjnyTA5XwexMT+VXk3fJ0Xknowui22bt9zJlos/MSjfjLTa52pHchzTK7nT5GYGOisD8t4KLoYX8pcnzkg9rJOmHgSbKPlQOUt0j65lLPUjJEgIZMWURBTCfwCofS0xgUkgIQLUHc5UIJW3qMQLEQ3Qu8e9sESRViMtK3qtQ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782394654; c=relaxed/simple;
	bh=Bp3y3+H1YEBBfKqy/yi+xAh4wC59yWxtZ6BlExvUirU=;
	h=To:Subject:From:Message-Id:Date; b=gpPS9cGpN3doD/+fHBG4ePxbBkF9RF4vwW3F6NOHcRN5fz8INJnUgPwRSXY1Gf5/4nI9cCHEEtY0nGJkFuKDZ2T0vPBs00Wu6KZXBoA74OrvuD59BfF3QpYC1VprSRIs5nrVmtxFxvC8d8r7n7v5ixy5JWCBRY3mQAM/qk8/adQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kttHy7uB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kttHy7uB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D535CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782394653;
	bh=Bp3y3+H1YEBBfKqy/yi+xAh4wC59yWxtZ6BlExvUirU=;
	h=To:Subject:From:Date:From;
	b=kttHy7uBZ1E+PKIydCgDQgi0BrL2qOAwi6Di5HYXaN+GqQF82+JCNLziiUal66FCL
	 cOpnxjHnUoBygQTrHOVj51ZiUwn89FbdC8qJm5vjslBed2HC1WvdWq5a7AMPKjDT25
	 aAe29oB6N+vbAxjwm5DhaXqyFO9jLKd/SRHPwURRIoYYO4Fg4KEfG/KMRh5JLi95V5
	 hKSmJ9ud1ag32c7zkWYXJ6ByPuo/zPhT9xS2auRs8Uos5Zx8EVb50/3tD4jNsm4BDw
	 J44d/P0I7Mgt2iA5UA4jrjH7t+WttWWxD/2VvbNII4p2Zn3/C7YOBnreZAyn5HdC80
	 ljUZV5lNiUHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97CECDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239465374.14337.4614849030665768310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5254f53978df9c9974ad2e3340af0afdada02c886b239268c9daaa513f0168a
Date: Thu, 25 Jun 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782394653
