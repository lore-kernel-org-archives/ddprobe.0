Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2993E1D5ABA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771076094; cv=none; b=mpmIShJ4ARF0i3VLB0nw0yqmZnAIYED+QHNbzblejy5Si1HAFizife8F3aL7SYxukpT4Fz9QQ8A7dz2TKPMQJb3NXC+adk3MJVkXkeSTuaKRPp0O6BO+KpXCC6sflFQUWy9e46oMVMaXcnVwA6ZS7tU8ppOIg/nhwWIk7EGOORQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771076094; c=relaxed/simple;
	bh=d+72Z7l0kj0nYQS4Gw+CY/iD3R+QAp2hteG6cVTPuKU=;
	h=To:Subject:From:Message-Id:Date; b=MmtLtVRdUL6MbdCiahsoFPWYLECu4Jv4QQSR1bMSkgbxzMdheI7TphHss3tnsYYrcjtzG2M6DD4/qK9sG8MOR3azpvWkYtWi/eo4T6EtJY+bCo+Ux5N/O/3VIESfCjCClCExE/WZDd8ts8LnZyz8+xH4qUYE0EtprWlwwN5hSrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfnXH9go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfnXH9go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB68CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771076093;
	bh=d+72Z7l0kj0nYQS4Gw+CY/iD3R+QAp2hteG6cVTPuKU=;
	h=To:Subject:From:Date:From;
	b=JfnXH9god+QG6K/9O2sYHXLLWREXxJgAD0M/Hw5N5ibNc3E0G6I2Jiz/VOaFQWbkj
	 6N7U56ZgeHw16DTB1P46uoRX4Ky86dGh7Jx/RmBPnZwOhGqui/oriW7mUKAbpftG8m
	 UvMCdTqw3G5+wjxXFv4rlwDqWhacMb8tXs3gO38mN1kVXSpdk6oaUHrhttCvLyy9Gg
	 6z2gtk1ICvT2Zhp1h9tacrVs2VrmAjJVS6r/lhmDcjaEGXRL+momFxfK6WKrmpc/nH
	 SRBS7Q69T1tGR5igj7GR3FNROXdsJodrZ9yCLHjtekj2wgLa0VN3aAd/agz4KlYH8C
	 E7PgVT2PaHxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08E9EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107609361.30687.975609186964744025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775c350ef9f55258e57a6d647596c8d093df5454e2e202361bd35bb2fdda39f1
Date: Sat, 14 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771076093
