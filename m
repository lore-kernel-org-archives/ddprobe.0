Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF056F30D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723835754; cv=none; b=NdOtfDnGVgToCAA4jl8U3ilMXoblxooXlNtVO7PmGLbVnrYZlIY9UjjEMvKXHL9VXLa+ZGJQBvtQUIgh5ODsp03j0df2BeI6p4yIKx7bIcSKmGNreEzDMCGUN8md4qg/MaYNXKVdItYNYJV+bgtNrBqYKjWYcvxuQVpxUmyPt/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723835754; c=relaxed/simple;
	bh=yXFou31LAul+xOrYPx0gbxQqDfyWBhQScrDkxt8WNic=;
	h=To:Subject:From:Message-Id:Date; b=Vhkx/Okyp/Zt4WKkISEUsnMW+YJ0aNEsMbLRCkmiSa6FkS988bA9ccbDwp/f+G8Oac2qhRTulj5yu4idWxsNnL6qstgcX35i29G0lgx58kt6AzG6rhDu7abPlu7ed464+oGkGnk8YzSRS/8MDBjHxrjlNQmd4Rkqr6+Z7eoMP6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPw7tiLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPw7tiLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CF9C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723835753;
	bh=yXFou31LAul+xOrYPx0gbxQqDfyWBhQScrDkxt8WNic=;
	h=To:Subject:From:Date:From;
	b=SPw7tiLdE1oH2xWabRye+r93jk791idsDB1UgtZm+Jo22sFwWr907341CrICTLY4G
	 4w49Bi8j8wQtQn+rcwnOplV6DBkJat31HQZhyPbH1sGbM7eOY/xdHYoF+oUf9jKede
	 oy0nUjyOHuCy0G2QccnppOOJh9kBu3qk59mJ3dTtg+UX9s0jeMXyFvx6oLkafK09i8
	 khlVHulPeQJrp2yAU3NDYKhw5fJvJ+gBXDYDSSYGwNtzg3mUDfZg0AG00CZTQSueof
	 rUSnknHKaptoTENhLv2Np5Bf8IJ2d1sb2zy7giSnkcdgAZWea41iVIVJ2+QnDrjx4b
	 LUQo4zVHKKPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67F2C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383575361.19919.3882151084524892668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc69928b84f1b0b09c4cbae8b74e49c84e59b67d0541b4a314220e84b83c208
Date: Fri, 16 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723835753
