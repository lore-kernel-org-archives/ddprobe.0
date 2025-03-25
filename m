Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EE91EA7DB
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742916594; cv=none; b=cwe0Y0TmWD5LA4mDRGbdPpqy1QYAmlNSWX1HKYzUiiUgS26VkYxx6odnEiZa1piekxVXAu75vxNSmwE/Mr5qddL15yGXcAeMxOhKhBlYLABxLVDeUy1hBslF00w6u17sVJ5YAi3PKDoUzqFl7cmcmmUgbnKd1p0RzFe6+S7y6Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742916594; c=relaxed/simple;
	bh=I1P30SuWgRa/BKHe3IPMr3tW50bnYFiox16ntW5SZLg=;
	h=To:Subject:From:Message-Id:Date; b=dHAq43fBXwACAsKn7pDqumlJ1cy2q1P/+vo0BA7DIpDeabgwXgfMuOm2hAtsWwyb7ORHCSaRvP+sULjixu8DECfmSxk7tcY1jhtGc6F7vRvZbdIbdcUDrab+erwqaE05s5yP8Ek5DEYXMsEvrYLgLmOCkb32wyfBC+yPgc1H9DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc/U9bMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc/U9bMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17E2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742916593;
	bh=I1P30SuWgRa/BKHe3IPMr3tW50bnYFiox16ntW5SZLg=;
	h=To:Subject:From:Date:From;
	b=pc/U9bMmoP+S+FYza2Uqg4iNq2bxfbviUV1nJMXyN5vFXur9UKuisgYVhYcYytwmU
	 FmFwE3lp5dJfYDGNryrivIWni28Gue53+lUM/zV7wSqHuPfN2vfZx30YtKiMLjzeJv
	 Y43Tx2c597aHZsXYjtAyN/PD0eKgc8kvY1zF/cIN08I64Mn5WEjIHiEzHsmexnys3H
	 eTHztxuIbq0X72/50jmPPiTNpp8r5qReVHBSB1AWcVnQqVcHVumbdXiI331s1LJYEJ
	 H3WXyb2Nc6mYsWT33kYCrE5oKuqnHjZLbC4A66VkpzEdQy+3AMwzh3IGReauc8Qviy
	 zq5LW85NaFiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB41AC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291659368.28201.4578361358420410007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2977705d620db4216fa9d169435e8089704104028e18668b03437ddf6f871d59
Date: Tue, 25 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742916593
