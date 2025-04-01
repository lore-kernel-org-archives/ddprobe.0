Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59336B673
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743477594; cv=none; b=Gg+ZT0ySs13UtTn2Z1o5tUb5uxcSqWpX/IbCUtDDGd1EO+6xKO6YslaRxKky03cgPxGyU6qq0Jg2/cZ0yzsZkzyJxMGKvrxUGoEbFxzjPILR5lxCao3gPuhsdn0tV1N8cWTCJm4FO7tGVyWdzYoPBX9UCTqN0mawdPR/auSumcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743477594; c=relaxed/simple;
	bh=8PiWMEY1DG44xHCJ7zj5V+iFQ1YJR15rCiB49In5nHA=;
	h=To:Subject:From:Message-Id:Date; b=dY3gAyU5DGEYVOgFTjo91I367d+k/0NGQycdVpdLkaVXmcA5t6pFxZx3hL6QxjiMpOoeFZ+NQ2O/H4ePrKRbKpq7vXCJ2IsGAEoDl4gXLJgnbHBRwvyEl3dycrbtFoYzdA2aGWoh04hDLTVsxocDeZCv2cxAlUVvhqJMZgu+RQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srqXUI1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srqXUI1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B0C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743477593;
	bh=8PiWMEY1DG44xHCJ7zj5V+iFQ1YJR15rCiB49In5nHA=;
	h=To:Subject:From:Date:From;
	b=srqXUI1i2vYTYkwPKgiGDBZRTmgsN0hDqJWtKS+tn5Y4oQeQB4zknZMKEL2gpRxDV
	 s0bN8ddUQ8PenFCdjhjM050xxlBL6XKyGPaAZvZJmPY4xl7NxqkH1YeO0kQd7CNUG7
	 US8pA25SV8bi8wUoumyKVFjB/95D/bMm8nPazCMBJmpXmdFnQB4JGn9ea3AKfvqp8a
	 QkN1vx1in9bNtzjkQ7jkWnPvaelRXoWJXQhTBKQwp2HdlhezzKOdsr6NKsX/TzEnB/
	 R3tmwuyPgCxgsL0DZUdKSgh/W/+iOLld8sF/rEVOO6VOmOXa8MSZtoJW35rAd8aHgs
	 q/afdLBNQWPVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2AC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347759358.15451.902170037518177431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af60532aeb8bdc6094c52a8694acf1c9369b884e28aef24d9a2fe56a69ea26ce
Date: Tue, 01 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743477593
