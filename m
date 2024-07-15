Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501908F47
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721011943; cv=none; b=je3pjGdst9ZU/Ph5W8tr6nGyRodt3pjSmYZa+dxbPPDYmbWqdLpcCvJHpbKYXBZmk5Mk1hu4usoTLEW4DdX9hAxydAb5up864irC6igwf2Yr9V542agyq3sXjQrHl7DUPVHSgSEGipEAIRimDapAe00DS3hwBjFKWnXxvOgFTeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721011943; c=relaxed/simple;
	bh=mJIDIlybse5SzYJ0RhUjhQiYd66WC5NRKUkpbjc36fc=;
	h=To:Subject:From:Message-Id:Date; b=DBt5b9cat43+OJi+dn640H/NAkr50hoR6eBkq7pJp1jW0WTx8ifHMlyfd2pv59evaIwmItOr4rukZoVj9YlkzV7G8ndqRxlRlKx0O8rEl6hzsATEuUAJTp/3UaS6yZEWb82Fn7We4G8S1i5UXmJ8tXfiuXBXGzm0Zl0cZm18DWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyMB+cg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyMB+cg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721011942;
	bh=mJIDIlybse5SzYJ0RhUjhQiYd66WC5NRKUkpbjc36fc=;
	h=To:Subject:From:Date:From;
	b=lyMB+cg9Sk26ZoSZJ8UsX44C7rROBYRZOvO3zptHfzd1lhxppUPP+Wu4rVHMj66HQ
	 cC6Xp13RuS4cIfDLaSTFcmUFOc5ojdhHm/rnoKn6wW/4gNX3GhVV14Jkde3bMO/RkY
	 bYTT9q5q81DEkapMOR3doUWe7fa7irsbJ2PYaGEzVJZ9JnyfRDDOT60EAZEzwUZhRJ
	 iozKXlNGJYtdMfroz1vUsaHcXr1nWvqqiQq1MCHgZrssXfAee5p5PDncrzI2A/TBVn
	 Mc4wkQG8Wh4H2SnW2wIg3vCZ9GsTrlNDV3BUQMprrIrwjJZpJtY8vKcLji0M2WZI+O
	 /ZF++tqrfanBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A51C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101194278.4764.5891573084621885564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3df53d6b4b4bd0ddef892e30ed6f747e3d193fcc30510d43b892c1574751c5f
Date: Mon, 15 Jul 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721011942
