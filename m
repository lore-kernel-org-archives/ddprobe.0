Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D59441D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721560554; cv=none; b=RZPzvXUQ6xOW5nEg7BaDahhaCn7t4qLfNU+p28fNSDj6jBJLiw5aAAR7KarTUs4USlTOhUgyBnr1F06jMBp8d6RQmi9iDnuywsrts4fGs31ZNe4gnS7qX4AGgp3lPyck94RzbYinF4HT0Lb69N9sXw1/W4pyTLN5DKLk8vkDq+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721560554; c=relaxed/simple;
	bh=UxP755Uo1iAdReISk77zk2lhlsmoKIFV04Yggd/q8II=;
	h=To:Subject:From:Message-Id:Date; b=qpL9F0nz5ExZplOXaIpT6cyag7mvgraGmR97J2Dwz9rcu8SJU2KEE8jJKVYo7WF1L5RFknv3TubU99ZA415qT9xln0rLXdGaK3S8x8FZIKObEEnqdthtxItSqu1x2SKspK28AleU/lifH6+lApG9Q5jjDcbLZHno+wl/skR02PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af8I+Lru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af8I+Lru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2009C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721560553;
	bh=UxP755Uo1iAdReISk77zk2lhlsmoKIFV04Yggd/q8II=;
	h=To:Subject:From:Date:From;
	b=af8I+LrusubqseUAV+eP7Dz+8l75Yoz7GNV7TFBjETQVwLp8WaKJIeXK2XXOH18v2
	 gvhpXQqJvv+/2v6RCJIEJ39iHbnReuS5rd69RJJK7E9Y/y2QJaLEu41zVj+bsSN8nG
	 Ob9yQpSJunZx1dKAStbgpsQ1tF+/4KwAl4TvBCt4zy1mvqAIUkfIS82l83hgOX+r6s
	 j0qedHSToiYO/pjgf7toJiIK1ItJpeef/ejOlIDi0xUQ5UKtJyPMU83Dl2c84F4pfL
	 Zeu4uGoJHoIdpvGFyb7B/ApuX9Vlcv6pZSZ7iCNO65ypgLlpFmqwxwxP1AOU7xglQZ
	 4lJGN/LxEi6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F25C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156055361.17662.9192777440801174786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af43f08e3cd45e318d13aa9b4d28c9522948df65f06c9df3f75a8e92eec3443
Date: Sun, 21 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721560553
