Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F90819F419
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753773594; cv=none; b=UtBzzWoj0FVUDFbkQBZm6HpWv8lDoE0FqxaWcMMV98BAFlw12MW5KeYy2/1tpquBZ0RLFxi1dP+wR1CQbxeu3wm+6T3BhZM7XmbfrALGeqzV5eJ74VDVOk47+bd6g80+Z/hOqJcUVIbh/n4yHKYAIMOcXG6CDbiMKd2LigJ0/lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753773594; c=relaxed/simple;
	bh=tHBCz/iV6qdYmwhu910m7RoQuG5d8rvizCN9JJR8XKs=;
	h=To:Subject:From:Message-Id:Date; b=a2Qqz9mE961sevR1ly0msC/41/CzrNuUVMLY1usIOVdbnEXMXg9t0ouCa4Mm3gVOKYL6sGrEnLKRXXvMdWX75iatxkCeTsCvUBFdH5drYZM3JwQQ2xGPOfN/4r11le6uFt+TJ0N4UppoIy2McpfG/aqECmd3/ZzZpxdsPUZ6y5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEJbgLPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEJbgLPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFBC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753773593;
	bh=tHBCz/iV6qdYmwhu910m7RoQuG5d8rvizCN9JJR8XKs=;
	h=To:Subject:From:Date:From;
	b=jEJbgLPct284hNE7GwNXEYxFLzoCXi6WEPlTbwzaXJS2jNW1nuu0KzIV4TjHwffEp
	 3gApSsOf683ygvROXsB0GjnE+3jFwxk0F2T48w1zqminHNv0U9BYqBYjfajMqltkMz
	 2FddX42jZWLYS847f0GIH3rRm50N8exbN3tiXLDzcFCscmW5Xs5L991EbLsTuZUu1A
	 qUZ58RDjhVQ2Jzt0gf801YgKqk296bk1Te3qUxX3XYsknfsJb1Pgbd1PBsE9/lP6VO
	 +MKQyXSWGcHjQehIkgKAn1JjZBhjNlqV/mi6Bj34HEBtEdFYSyWdPHzgyuOtFMvGvv
	 KLObO+m1hVKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2AC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377359357.16743.14011834675837029030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c196d0ebe91ea79fcd59d68a8ec2f2b1c77d6928479b5eee709878d7bd9ccfc
Date: Tue, 29 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753773593
