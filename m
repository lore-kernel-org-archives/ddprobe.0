Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C10742065
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756564194; cv=none; b=MLVZFyXzCSXpnIwkch7uPz8daKvjLHsLOEbXR6zALNAXL6mQbMoF44Ey+rSQ1QDRAVRHYy6tyrvPFlvQJdpJQUnnIWHI7CSvFFcoKvB2TZN31IH9BX4vTA4rIsMEZ6lz8y9fAy96bm+Whcf89xcyVDKeEh5RCQlMBBcTR5Tq07M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756564194; c=relaxed/simple;
	bh=DpPTYbnG9c6fJuBHmSDatjZoPTYSivFpC9u0LCirsSY=;
	h=To:Subject:From:Message-Id:Date; b=I92oqo0e9ZZhDGjAy8fd6cBGy/6RcQm+auksxNR/QFRB4ReSuKuyTgK3R8TvCwzgbghpqo/rzYvEzZzMq7CVyhbTSoBo+ALhSta0CCyqE++dHwVTsOFr8TfySBp6BOVK1ijbfYWthdtei7552GV/pXDoEQibop5QRk2nmuaffjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlTNynRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlTNynRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756564193;
	bh=DpPTYbnG9c6fJuBHmSDatjZoPTYSivFpC9u0LCirsSY=;
	h=To:Subject:From:Date:From;
	b=TlTNynRfYktTdF5Ji95CHV2VmNVuVyjH5UhAbMJprNUGHUfA26UuBw1FNtG6eG8Lr
	 D9PuQjxgha3AKweEZLGo6EyWo1kcY8b2zQodkXSThD/BKIeYokS7zx93CdLkB6uk2I
	 TxUtue4usuKHxXOTS8GMhL18tltvXaKFTDapJBUtw+C/KkzFO84WN6EqtUtVDqHBu3
	 Cum60PRwhHxRkGulowcWkATJk+/fRL6AQ9FaJuNlJ30LEL4eFI52MtW4ODdvYzU7rl
	 EGH2MB4DP3q7q7hY98zf3mbmYQeNirc1Nci6idH2gMuldBzZePyyaA5/ImEGk7VfQX
	 eYYY8ZBDrdOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC08CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656419358.28601.10481421152734615169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9e457b26620bf55793c832f3c2d21e2087b8868a04d02622f8f2ad32e54723
Date: Sat, 30 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756564193
