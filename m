Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F62276023
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753547394; cv=none; b=U/5TNc9mvRu+1Ngf4tMk7XPZtSdgw4SJXuaQeBfj0mOe+9sVsLWM0SQuEeqDJ42eamY6QkyIoMC3wK0/Nxci/w7O4N9QEapzTS3tiGw5pYWl8MsrB0s/4FwHnC6n4Q4uvtrpdYn90c+40k3A8+5ixYIJS5gtoRzEpfUdR+9y/3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753547394; c=relaxed/simple;
	bh=5RXVdM1441XxcOLIF9VmmZ9TV2q/L5aALnyXDAz/bh8=;
	h=To:Subject:From:Message-Id:Date; b=tEqXotTPi6GcpffnjncE569VolRnaxqli9vK2Eg+unb+S2F0TRHMk7mknJv+Y0/1uVgv/MNJlGUP5O1mcvvIzMXFBqASRQ1gC7Qv11dZfpuU72CXm3OXDOujHGjdmLeHWLjR1dJCPf7ARKqc9yxPEgLkKjZ0HcG9sfGbvWil7/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJDFW9sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJDFW9sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD53EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753547393;
	bh=5RXVdM1441XxcOLIF9VmmZ9TV2q/L5aALnyXDAz/bh8=;
	h=To:Subject:From:Date:From;
	b=mJDFW9skFGe+f86l9fN4XO29JVLBMVchp+xuRU0ZJkmoz/ZVdqh4m743UXBAT8M0A
	 6CPQv3OkPMgn2FFvABO2zrS/CQFuRfcrEsol/zuUnzEb868ZdSlH8kgLabVp4Yhfha
	 xdix3NMICmZW4sniq8AB5aupF6jPoniqf2fN3QfqIMt+UHpqUWIGau/rJuCPzjOO1C
	 E7hosPV3ENRYCLslkfJxzYTmTgE6J+z8qZgi7mB21Blf4tCeePMyYi9nWJH4UfO687
	 S5uX40EJbzWaisILEUjHbUMUS4xgnZq8rbTTFlJqR1u088KGQMkZkq3F8DO2R2J5jn
	 9z88p/mRnmDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E9C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354739358.24792.7612861064513987821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91fe64c768d37c78543fd3e2845a750407804340b2012b55e4970af99382003
Date: Sat, 26 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753547393
