Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290DD2FD1DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769550834; cv=none; b=TeQk3pK1cJLB8l4veg13sCjjfCEIi9Zl9SegOfZr8/67XTj654U4wxhXg+8cBkwOKm+c0uSD9pzb3nNEUTUDo5r8ZvkG6WwcgwMsfOqIxq1hzCGZUSonQDya38VS+ruVAlzmW2jppPAW1/TYmuHzn+K16eO0SHq3f4KrpUog28U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769550834; c=relaxed/simple;
	bh=abAXeGE92jf94hg1Us1AKxwsdrdpkyRVXggg2qtduXM=;
	h=To:Subject:From:Message-Id:Date; b=aYNAjab+cTXDfZsHfl3TtjLHfXJa5HYVr+OR0AxiheG63GtuAZKhLJqyprTS6MuohsoS/yCUEWUBKtD6uSVURXjz/v7/PRD/KpU60Ukr7VDqTWTyV25fG9Cb1Q0BYV1lezquM4PWtI0VY+bDYZ4oHpvjv0Qwd/6PbQU3pfjzeuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo+lAYsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo+lAYsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB0C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769550833;
	bh=abAXeGE92jf94hg1Us1AKxwsdrdpkyRVXggg2qtduXM=;
	h=To:Subject:From:Date:From;
	b=uo+lAYsDlNKbOKvj2o5y4/Rgp/ERT1jZsMWzDTBrukQSVN0+/C+wGSB20obDYnXY8
	 HNC+gekNKMoRDArWfEKyUSwP9d03fQa3deTXAf8EIlrDenW/ZLCIOj4gf7aP4dTAID
	 idtDdFW1MIAfvnwTXeXAvuK2KcJDj70laHWIRpAlX1RURG6B8i0+4N/F9NuQHNMOLI
	 Vpkhaj823I8D77JMIReXFWlw3VqSiHU7jQm2fawPjXddG0GUJoPf01oBxRqcF8YceS
	 tpGoSYK3/8vyEh7j0z8EMGUsWkD5xh+A8yGYWNj5OD32z+uCNuM+Crj9XKleL4zIzA
	 16FsP3haaBrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90124D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955083358.10432.1168355106395828607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1d457b350822c2bd976c90ff22dace4de072d1a0123e81090c108ea23d1af2
Date: Tue, 27 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769550833
