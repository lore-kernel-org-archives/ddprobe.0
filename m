Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601B56E5EF
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714316543; cv=none; b=gPHkuJkuBXBP3bzgEbTi1/UPRoIIAMztKnfquM0Xb4XZUKE8ASbuWchKnTZMr8XEssKGhiOUCZ3oFKPxg/qLl49SmudXgg1jmt54xKZuixNSgZgq32eatyff6I0qERZmM3qG4GWWCjRp/xjsT/4eUOEANLRUOeaE55CQMYfZFNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714316543; c=relaxed/simple;
	bh=/oeeg5XsF2BiQIOsMJYHUZV0cW1dUP+6ys14hn0G2II=;
	h=To:Subject:From:Message-Id:Date; b=MNKI0OWtwEYUDm/9P+zif61pG2U5yGnt1tgHGvYRjEfTXJBDqyZYTB9LIF937NhfFs7sTpu/3vaUyXjk5WyDmz/XAwbJUdMG/6Jy6vbk4payQ0TiHCGz8hACNpGITI1FqWwRRDXxKbu+7c6ZsnP3igJYvUyFWot0GRNsfsd2NpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK4Nb8sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK4Nb8sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76A6C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714316542;
	bh=/oeeg5XsF2BiQIOsMJYHUZV0cW1dUP+6ys14hn0G2II=;
	h=To:Subject:From:Date:From;
	b=DK4Nb8syGiUOHAOuvh+2Ll0Uq7ZlvJzwgR1GNuj8QjubxF+9WNZmi9d0Wv2SOHp27
	 YIkQZPi1JZdN5D7wf05atximC2gj4KfWH4KXC9NI7qYQ2VzMPvG8JayAiYVlwoiGhy
	 FXUxpHhkEDbMdrC1RD9MGR7EUHRk9AvohiH6OyYLsPE90sHrvGLOtqfCVtL3KHiqrQ
	 49ynNUiJvZUgy1E3eMPvdypCHJoDDIzT/byg/Xwlo4uJ1/MHD59e6uCtUKg+YYP2ZQ
	 0glroODN7uRhyjphXqJkK7UDidscdzcSF6X5tmaURwGTokwbrbwx10APmrQffbNHDU
	 nQaT7p3SzPbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EF5C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431654278.13857.17622361221656406227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dc5abaa8fdd17eee12ad972b94658eccf00b7fdb0e4609fadeb973aedc99b7
Date: Sun, 28 Apr 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714316542
