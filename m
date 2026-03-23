Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00661B0439
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774271093; cv=none; b=ETYVQtcxwgusaIQlmqzU7mER9WBOfcJp58GszcdEnCSNXuIz0nojWFMItSRt50wBEH4l9TY2sL8FrxsHZ2aWO0A/RlU7VHoo4mbYcqWMHGsEiIq+dSj8vbDGJSM7gPP8tzPRob+075tfg19OUIJbZ/8ik+CJoQGppUuo4iqqpLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774271093; c=relaxed/simple;
	bh=W81LOCo3VbeqPr96sujSqr9CTj24CF27aDL0tZJXhEQ=;
	h=To:Subject:From:Message-Id:Date; b=Y0JZl4dbgLZA8GlHR6o90NEcREqfWLeaDRgTghnFfRa2smlUIFaiyCmT0KD/y2Qgd2N47p2MZKxrkfrXUS1RCC5b43f0E24haLRkLquKZupq0lEf6WCi+RmZNn26H8jA6IDKZmKEs/t5EPQvYkiFWIxB6wSMtlsBWrFLsIK7NjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V78ua8J9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V78ua8J9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B8C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774271093;
	bh=W81LOCo3VbeqPr96sujSqr9CTj24CF27aDL0tZJXhEQ=;
	h=To:Subject:From:Date:From;
	b=V78ua8J9wEnGMelzFYUeEHijTc9JVSCAVHznz2YjToKsI5Osek6/hHBW4J0P3w79L
	 YoNs4xuOjfjGmxrQ0kLoi7FO1kwS9sPHOVmzLBtp+eOXXwcErwaN0PApN+5+8onfLr
	 FWB+t716p/d7PTYJm4yoGctBex7e3H0oaEUxQcVWGmI3jVIHnmGNvT33d5JPWvQUpS
	 j9A8gDqHUmy2eWeQFDF8ocB4XAvZqlqyJxEgiAwu+UtPxMONL1Cv+ZSHCRpemo1jiN
	 CV7hWrXkDU/KSJNQjN0aEYajn00CfZbQqITENtTAi8wFvfRRX4Lj9TlTY9ZlT1Hz/M
	 0HtIsEV11Qkyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B9DF46104
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427109360.3758.8374010706864819225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf281966425e23a8a27f38f92bc26869367d03a53959d2c5b8de30eccba3f50
Date: Mon, 23 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774271093
