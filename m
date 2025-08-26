Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939236809E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232394; cv=none; b=OuVyQ6g1YTgvYHQhCbPfhtSEfeveOIY1WWrs5Zu5MP4XRUKuS0VYgeEQnvDV7EK58qZgBwTjfkiCB7LtfMeNC7RHPn1cXfLPKi0VYbRgJCFRDwC4UHZ8WqNV7CUSaZqGe6PzO+E8vTdF3jA8WhxYdpDyMTbAREwsoThCBW+pxLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232394; c=relaxed/simple;
	bh=HouuSTmaioBGSC/dh3lY8ZJK7/8mpUeVcuX3VZgk5uc=;
	h=To:Subject:From:Message-Id:Date; b=Owebumza+zAUhBWlHoUUoHYwowWhLfWm9Lh3vscBCGacE9aLUzBTb0jIJkkFx2vChf7kwesZOSdCFhC7xJS2B5souQKLXRwKvLbS39ALzqHXGowhR+uUlTywGHF+V7lta2dzbPX5SvfbyENQlCvf2pRII4n5c1UzXXmrToBxhe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrNc2jmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrNc2jmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0A9C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756232393;
	bh=HouuSTmaioBGSC/dh3lY8ZJK7/8mpUeVcuX3VZgk5uc=;
	h=To:Subject:From:Date:From;
	b=GrNc2jmBHuXA5PKe80naLQtx5sW3/WCbZnf2M/O1SwH4YRrdd5/0QlzFMCra+vZkj
	 nTvOSs3k82rCHDTTd9LRRdOXz64y+ifuNed93oo7xlF/EZSHE8HyVQqS9FUM76nx7W
	 h/RXdqmMhTgwLSzieMuWuewSZecZNaucNRuyPrYVDrxsfuyJZ5VHtC88o49d1k9zVK
	 /KNp7+9Xd+mn1Zfa6GVeGOaf1QtpzACPqMlWO1PEiXGWDluRrV9HtU/NNZhoFUi2h6
	 s0Bc8ujnSJaD9/bwBsinH6gLs+5Y0W5QdS9IlwtFb1g3sNlLfTA1x2HiTJsu/S2Q8Z
	 oR8RK+DDx5dMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9FCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623239357.17183.11460727751061509207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5f0b5c37027d1cfa7003946256a61ec0527cf85188800cbafcb725d71a9b3d
Date: Tue, 26 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756232393
