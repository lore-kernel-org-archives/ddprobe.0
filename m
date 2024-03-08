Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1551C5A4C0
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709928497; cv=none; b=Tvw1XhAA0ET43mUkgR295lOFQAQyMW+82BLwzhbL1VVQAOAR4JokznEvuvUwbxncQsWYfJG0tD3K04b2FfvPVf/VePzMDSFJEMbPc/UTgzXxit4W4qmjqjkBmB2Zz0d8GwmQEPLdx5olm96mv9EcE6xQf9PUc6YC7/ujjZIxo08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709928497; c=relaxed/simple;
	bh=m8+/7VtD550uQAwSJbtkZWe3QClvxL2IBM2yS3JiRmg=;
	h=To:Subject:From:Message-Id:Date; b=pOhdXV5yM6xkEz5esbitkkrzvgmxBZLyb6u56mVzRximVVbXhETlLvggDm5LuKa0yPd50YZ3RWGrU7+opz3H49mqECgZ34tu/AtLmsQ0XWsAxCunMp0XKhzs1JMzLBSsiLVsIOrb0sGgbC5vY81kdGByEs2CtJvBj0zwc33ZZj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLYZOAOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLYZOAOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C811C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709928496;
	bh=m8+/7VtD550uQAwSJbtkZWe3QClvxL2IBM2yS3JiRmg=;
	h=To:Subject:From:Date:From;
	b=qLYZOAOZY1sxfwavsum0b+0SIUrIJ42O8Ax48gsTNbU0ihYq7toKrsg+5nZlRY0J5
	 jZOHbFHU0tjWUO3NFROEwjJYojdhgXngrKE+ge0a+R+CwZF3u+DukAejNB7cUqgqMP
	 W7l951DcnUjZ7KCTYXKUsVPcWzXtPiqkn0xx1W8Nnu3VOCApVtiGfcSURYEzZKijy2
	 vk615E+8yq5N7KWBGMDFteGBtff/8b2ojWAL7fRExigkLwB4CBDKo9RyRoG9oobqo8
	 bcM8IMauU5g2WGUgpDt6P6ucRmXFXefhIczuuDDt5B7+xlJKBCoHCt3pT6aIouul56
	 VYmOG/cqj1Xjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B60AC54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170992849637.26996.13659651067392088357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0310b795a5a5773ecfbc433f6897bc90736d39237058af17e06b71ea5abf43d
Date: Fri, 08 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709928496
