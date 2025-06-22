Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27530EC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750584595; cv=none; b=snfjgHlU2/M1jjd7BtenfkfJmE55AI7p0SruWfKF1/j38VhjzZhfW9N8K4hGk6fCYo8OpzqrwumZ9lrpxRoK2hABfJG4HcAYEW8SHcvJdvFykuOXNVvEL+UWuWHr9NkifwB0sxwV+iUGtp8hGJdmEojhZuLefFQZ0kMQVGoAsmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750584595; c=relaxed/simple;
	bh=h/xTdxyrQl48WsD3b3NKTedryzT306RWVWmJhRHSuK8=;
	h=To:Subject:From:Message-Id:Date; b=lA5lqabI/ySeTUg1x6L/c2MN84P+oDkNEV/r9yYzlZ6lpXma1dnyHNGP9PWtCzavTGL7Mvp6MsEmgTrlqRLQmI+aRUW9sBfESr1uOLABshnVaCOAIrpUNb05/75LYyzmMQh28OeCsKHOmxL+Ha6YPS0Gzz0MW6O1QfbMOoxGec0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKjFiZc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKjFiZc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D60C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750584593;
	bh=h/xTdxyrQl48WsD3b3NKTedryzT306RWVWmJhRHSuK8=;
	h=To:Subject:From:Date:From;
	b=HKjFiZc44LWpgEkKSU6rnioh3kbdkzsdE4tXa2iwdgEddIULUOV4J8ELNilj3adcT
	 hl3nG75fHhcUCrDj0W6a3rY5vq/hAmOF+8fEkuQlP/1IYDb6SfnXcJzwtMUa3A3A3J
	 WntM0gAlDc0dkH4GdmkKwUmTHuvGIXy+E/QFzz7gTEvqbAwy9P7yEgYo08t3uM+kZo
	 dxh/P2BpvkL8JIsasun/WObCN7Umx9LloW/bSeSwz+TbMb3HV9cAWwAhO5uluVIbDT
	 ojfqrn8ntLjGyxX4CEEAf/cuT7/L2eI7+wWHYt1T6NpoSOlubQ6l5uiUoqAWx3xk8R
	 waP7nUhfTeqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E500C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058459357.7191.17018697289572587689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c856ea03b24abf72e7cbbd085bf3b833d74ad72f12b5070bf4aecd7b64a65c
Date: Sun, 22 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750584593
