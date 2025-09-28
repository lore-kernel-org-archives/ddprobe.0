Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321304C98
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759079394; cv=none; b=BJC4ETrhbDL8KFbR2qZpbpUquv/A51axcRtWFtI5KOHKS2mYwfkMIUdv9rK8SBTxmABiePEq6hNTjBEmorii+xbSY+EX96tI9BiJSOLO5PLU0wT6ji77uEmIvP+pfLYaLnduXyDakNZFKaPwuSgg9iYLgZmOSM6+IUO8bqXxswE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759079394; c=relaxed/simple;
	bh=z2R3n2VdIB5KHUNfqJKwJ1M+6gh5DlBJsylACmK4/+Y=;
	h=To:Subject:From:Message-Id:Date; b=gmVMfSV3MF95h1VatCSrkV/GT2hrufCHg36B2LxqgICzpWU9STAEpey/e9UqE1syQr4eb7vGhL/xtd0UQGhWUv8EYJaGwth2z+Wwh4tp7vwLOHTDJ/1nzPC7AOLR2yV/ormYSvQh3esJ7iIhCc112JUpy+VRs5wKRYbrNwdWZvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWmif7OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWmif7OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759079393;
	bh=z2R3n2VdIB5KHUNfqJKwJ1M+6gh5DlBJsylACmK4/+Y=;
	h=To:Subject:From:Date:From;
	b=lWmif7OQxTHhKmhbBWfkwCV1H5oqWu9YN42yi5ELqMsxv2oWCFF2ZhKSMosxBPRTo
	 e4P5UvkAHiEMLOnl4QbwOK7qOTJfq+ZufdpcSMITUcQeBPOxYAs8Ce7PH81Hm/cWmh
	 6VB0Ct3meIMgPQwxoxNdQ3ixGRxFyBxShD2luENGYGoxJvArImbUJgxeYVI9W+XtNJ
	 NGDUvcV6NVbi5/XtsrroFKLGj10834umzMiQGjFxALzf8j7KqfgIZ9q7MSfhSEk7IC
	 D2vBFG3HmqG6e89c0xXI9l8iGfwfaxcoLpVLLgMt+vlVzVzNM1KkXGh9c7+PZWO1gN
	 F6fwDd0zCOIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AFCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907939358.4876.12587363704005952409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ff0f2bae3b6f22c4f0c4134d1594f1c8b78127db874fdb343f892edf2e531e
Date: Sun, 28 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759079393
