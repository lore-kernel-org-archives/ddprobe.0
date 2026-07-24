Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27838448BB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784919634; cv=none; b=NXrhcuhMhA8O51RmaPHe1aJklgzzfkjb7Ir/dTk6qk+HjOWNkDtEn0U8ajACgnKFz5VvGqA7PyPi3LQehSVulq4I2T06CcMPP0pq7rsipqcMWGP2grKn31TJ/9und7CXA15G5GzVCbhag5v5wDEZxe5My7QQ98O0Qz48ByHsJRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784919634; c=relaxed/simple;
	bh=yZatL+i5CrGlgFjlIsfbQOJwro1HPELNVwjxUzJ9yQE=;
	h=To:Subject:From:Message-Id:Date; b=fQzQ3sKVEj6Q9OyCgzSV6dbUihaxNCWt51uuURfxZuJA/2YGyg61q57cV+96Ow38VRVDHiHbH064ujdjThf54QecK52Pn2dNxWBZ78NI77YdqdstKDxE55uupJlejYChken6lYz2LU6LUnahILYOuUfSvPCHrmcIjbMJGPT6MSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbYy1aRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbYy1aRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3623C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784919633;
	bh=yZatL+i5CrGlgFjlIsfbQOJwro1HPELNVwjxUzJ9yQE=;
	h=To:Subject:From:Date:From;
	b=cbYy1aRXuP87UdK80Qp0SyvFsvAYUNk7L9Ty9oUpZdEj7bP0M7+heK5mGFkVFwZ1x
	 1gZUADGfQVtzXmGpZUZbcgKg+Z0AHZ4ijPVICuCIhFN+BYvAwFzJZU06LCksi5GYDs
	 zymRislbeodxOZGj1Oarla8e1Tr8R1Ltx3x/xjw6Lfqn5G41f9qE8X2j3MUkXPu6IM
	 2RPOF/7DKSnkOEp0DiVHhgLy5vIRq5a4+TUQmYe7e4dlWuF5pVkyGjmoFL2j56lTfd
	 trmppYn6KsehtLy1J+uwUphIvhRpzwlePGwwqsEn4TBBtPdpQoXkP5xNoi6NflUwEv
	 tZrD1H9n1kxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB628C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491963368.17658.17068465640759056806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30549442fda20ea1fe9266523475c6ef03dbbac9f7fb81e95ba9672a899cdf6e
Date: Fri, 24 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784919633
