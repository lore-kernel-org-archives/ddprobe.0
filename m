Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336E2C11F3
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778448634; cv=none; b=ChQ9ZKAzv40oLfCbY68kDo3m5b8184YeR32S46GPse10MO7yDBjSyICKxIkSaUSTdIG/4EZ8Q5gPAD27Qe/tdolVyd+VsQKyTgFFmDvajFPgLh+CEg3FlpG/tUf6QziaW3+WX6W+iWA4fX3r8OOx0qxmBiItkCXK9l/XhONd8hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778448634; c=relaxed/simple;
	bh=cC/CzMqsNa93x+AHKi03XxnL4OToablKTarzJbHSePY=;
	h=To:Subject:From:Message-Id:Date; b=R8bqV+l8vqP44GytNu4RpKuMy4WljvZaeABgZNqDa0qD2Z1J2guw2e/WHetxVOE3V9Rb10v5dgiKQfw8vkqWrCP+QOhvgcd1OD1hPGbX2YDPeDiK+UfjA4nvGEL2dLCOjl4QThRNUoM299c3dI/+s606HOVBwlk/CFQpsdiHjIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvQNUU7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvQNUU7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFD5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778448633;
	bh=cC/CzMqsNa93x+AHKi03XxnL4OToablKTarzJbHSePY=;
	h=To:Subject:From:Date:From;
	b=GvQNUU7pGliZw40q/9CQnJ6fY6xLfSuEK+DwFJMvy+lvNA5hLVr9Ny2R9XR0p1sdC
	 4FIdLxXFb4Dr2kJ/0k7U3ZvxdOgt33bbdgodfAo7BAWhRFQEB1rHclZfTFQsSk9uDP
	 qx77fztrDD/b5UAM+JmVX8O99OZhttT/URbVLwarJI8CzLv01cFPEV2e4vzv5BIHK6
	 tASI9H+i0rnkikgHcqe5ANBbLE46sX2WAOsCrXkFCrrsRXPkCNPTcirJng6ZFvvT8t
	 bY70apm5+lmJB5KJEqjGKmbJiTpf1C7ZKstLXLpPYUiGOM9Vvpg9RaDp/TaG/lUGU1
	 TvN+HMDvlrZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEAECD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844863369.24106.17423263597851404989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1f93f154f5e09a76900395ce0805c46ae974264bf7e29ab2c3c6575e1a78a8
Date: Sun, 10 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778448633
