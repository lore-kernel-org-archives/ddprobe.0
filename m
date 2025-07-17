Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFA5219EB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752750594; cv=none; b=GLATGBoQUtIOamg/mObf9jjZ4NUW37RRZp95Wi0adXDD3LxOqoDjVEhCcs/pMkDc8RkJRwaUAbPaFkcTaghs9bI/5RgqAtQzQ8ENQdOWTeBBx/VmWacyH9uMjFbsH+xdyVeO23JT137wCwYd+dU1O7uXBhUGYsAu9aIXtEXqkt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752750594; c=relaxed/simple;
	bh=179lChhNIWZAVlr1qMOlYVYuTaeBXcUiy5IdWtYfVbU=;
	h=To:Subject:From:Message-Id:Date; b=Y114X7jyWJ76jiI+/Kqb9LQfPq3CyPNq806eJ4POmxd4SWikQsBt9wGO6ivJf4HzAxm9/+iQLBdKMElr3LW/9DP8TMkbcU/ouFJFZ+19yJj4CPrGokOEal5TX9alPLEyoL8ZjkzEdzAUV+CZeCgkqd88cwtMfJTvPMMVSE1EjNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL79K5iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL79K5iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFF3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752750593;
	bh=179lChhNIWZAVlr1qMOlYVYuTaeBXcUiy5IdWtYfVbU=;
	h=To:Subject:From:Date:From;
	b=AL79K5iPbD7mDOKqR/51w6WQSOqlxaDbamlRueFVX8WWGxIaK+PV/sMjF4y7NOFib
	 spxy/NAzCmyv/d0cQzKEs7V6rmVJq10narNUgXCrCzKxcbDaIpnmyw2upt9EUEA+wi
	 V4dKcycQkVsKQE7T6WvnwLLmCgbM5XOprLiG7Dj88s1MIkXskl7vYqayJrFTNl+X9/
	 XrzN88kLwC9A5l2RasTnT+z/aH9CRDIY3c+gzd3oISWc/krMBk3PwfMqgGRW/6q1+x
	 QzZh4CkNfWsKfrrXXvi3r/Pu/B4zao6uw4Wc0f2Z/5P0nzKh0dEo73S7f5RWL2bSsj
	 GtJHb1rDi0rFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0DC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275059357.6003.1681166207280684175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144fcca30ce5dcb3b2a0be499d15c23f9f592180f458aefcdd59bac36a55de04
Date: Thu, 17 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752750593
