Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765CA392C59
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768891435; cv=none; b=qrkCgTmf0s0sP/NLpmKKXdnumM19+c8QQnqY5keYCuBpXrxO1jKhUYMGuYtJ2OQQzZIgHsvKZANjb2CgwDPNyeGpRTugP9NtiSTrHXC3/tFscT0mjxEk28A2ZZU5q5m2CAbSRAAK77tZAvbZ5JH5fbSA1XNPlWB9y6ZbktIAJqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768891435; c=relaxed/simple;
	bh=rOVQXbnRxyjv+QXyCMoYMrlSKALSXynje1qACczIRJg=;
	h=To:Subject:From:Message-Id:Date; b=EN5mbEwdJuhbWdTKrPIUbHgt7MyqDFEMUCiAdqcKy568EGLphMfUL8Ys8wsQJs4y1vRfQOzrnG68+hf/8VxUvQ9EeG2x9xoL9i3BLp8gwwpGfND7ly1OM3fASI2lsa2pENl+7nDWMp6QvdYcDesoDXPEVYteSzoWn2StfOnxkzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbN0efYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbN0efYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAD9C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768891434;
	bh=rOVQXbnRxyjv+QXyCMoYMrlSKALSXynje1qACczIRJg=;
	h=To:Subject:From:Date:From;
	b=RbN0efYMdmp4t/dpzxnM0HlTrXDuYhXKfu7Xxi6GJFqx7CnvNTsRefgyCi5EkJ4XJ
	 2qy7prbteGabaLZhw01i32Oc6qcyWzbvPkYoM5cTPzs/uiRKVXNOACtSiOqVtCTSNQ
	 di5FriTFfdkaLyjpsW38aH2Qb5NpmVRKMOa9fpIZEFhcQEK7T3DipdNtZwzDCmBLRc
	 7MUyrrxlofEa4mnI+o9ew4bVMItoGJGwDOZZl4yaGz/+8mTtsvu9IRM23JuhdMC4/J
	 35f8N4rls0ViR6me67gPrFiF+z8rHGUIkbRFK3UCISbZKmYcM/fbotPZIB8US8uapb
	 0CzRbkgTnnYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD35D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889143364.31498.3183667069400206243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe601757ea45e83ea542b39e742538a64c904f07ca47d430743d1c21e1de5a7
Date: Tue, 20 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768891433
