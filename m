Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9CE2770D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727522754; cv=none; b=Osx5TZ7GlO0KBWkrijDA8766I9o8kfkGctqnZwYvdQwr5mzV0u/g0ruuEqyq3ViUemU3t1ktGeY7pvtRZAq6yeVIHWODs99T//uiGA7p8hGXjt06Ulue+pcut4KFHCqbRpuglpMZlgRn6pRGRbUX8qU5lylhylKuCGxoszBgczA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727522754; c=relaxed/simple;
	bh=gzDFv7wi6TJJy5/NRAcw2YmkeqFlqz2mWtB+EdBVMoU=;
	h=To:Subject:From:Message-Id:Date; b=l0BwGDcT7gQkVXgSJ8NUkTmgT8y7jzeyp7ucQXQz+wzLprjfZ3xGKpuIcE4kU0jOxJTIasiT+KxzqmWolVJQupNa3UygcwicWHR77sTk+aPI+IfDEiU7pKm4gPJ3P12VI8id24ZaH7ouUeZ5Mb9mY/RJMCUYJajoXnF/TtVJiyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhkxAOGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhkxAOGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B848EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727522753;
	bh=gzDFv7wi6TJJy5/NRAcw2YmkeqFlqz2mWtB+EdBVMoU=;
	h=To:Subject:From:Date:From;
	b=mhkxAOGiHn0IKR2h23Jyn1sVgHbcspovGXCZ/veCMcYCguJ9fw8ACkXqtuZLWh9GP
	 Nu3kD2OozvDwMGs3uR7XFdyXTCQCAg6FCdnKign9vlIWCYniqXim8tGE5K7LuSxYgQ
	 ses+pDchEg/C27HMZ+iPR4aPXwMZXnIay5YYFR+bxMjF+7OnQrv7uLNSmHg6uCR0iJ
	 qHShGi3qHHOSUJjpHiaF1A32TpB4Q06wyL7Rz4JBoDXnuBq6jR6DX5z+fVzbjnkwRE
	 NtrJ22VVwUUc49tHgbEuR6Pn9cwUqAmwvqtuOBbqkgl79oUl7WcJe2R/RZwzv46TId
	 9FABbrg9ipBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00E6CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752275361.29763.15516141312177533776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5d64a792a9133652c0daaa46544a6a53fbfa105c3c312f8294c9071b379c13
Date: Sat, 28 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727522753
