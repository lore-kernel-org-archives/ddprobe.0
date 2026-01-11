Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D2F13B58A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768167234; cv=none; b=uu0E+gX0tUmi/gL8x3lgcijKCkXG48GGhC5RTchpZnbJAN6Who9lSNculrvIK7izvVLGeWIxqfDwFNUdnxbKZr4yMMORdgvpN1CzYTQTyQHwA7xETqWOaVo6R/51FitAmgrPIM1g9Z5jgDPnpMPPGYgTU63BBD+11jMPKnKT368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768167234; c=relaxed/simple;
	bh=fQWufyfPVBN5C3W5xqHR8ziNXLr6P+rrLodMbABn11g=;
	h=To:Subject:From:Message-Id:Date; b=Fm2WYKTbwjVjXD0DDD6F+YTIXlDhyvmR18f0RxNEIRmITj8a9Ik8OR9ja0aJnZH4wCfKjxOoH0Lx4lSU5ecYbyOUmIp5dVNVjSov6o6nQ0qTMY/yw1Bfxqh62Mf8U6Y6WqEaPCC76+iql7efbNJB6hgqNz5vUip263FmdfP/yLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZzYU5Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZzYU5Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768167233;
	bh=fQWufyfPVBN5C3W5xqHR8ziNXLr6P+rrLodMbABn11g=;
	h=To:Subject:From:Date:From;
	b=rZzYU5OwhFEm8Yz7mSTsLq4BY1j3ogpUg9WjXlIks6uHvi/nN/HxLaPcCCq4lgyEm
	 yxMw0cm1P6czZrg2X3RtgwfnCrjIUITFZXso4HVdzTROg2tCl9EQDDoHOj4Api2vS6
	 2W/kJ0qImLVedh3qxMBhAoUpBVk0co6N537S/aHxUbxtXL6y4A4PRhMEWGIKh9kGCV
	 k5eV5pInwvAd72f8GKi1McfK9uydvRqW7INdyMb7Z7qx8B2/y9Z9TQ9cPyg+gL7SxA
	 eXk4n61YvlGqS116rFlfw63+GjevpGvCmteodm3pDSh/9ODy9Q/mHpua4RAI5NnKJg
	 OsqVWH6ghQjlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133CD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816723358.18264.10269802364635708828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf725588f7b149f4d289a322ba435538cd5cde333de0938af577719c7ad84aa
Date: Sun, 11 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768167233
