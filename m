Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1D914D710
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715074943; cv=none; b=U2qcqsHrJZoell2ELVkn2zQ9WzAJqNeQrQ+c+YD9Z2DbffWnlVBS4QfrozGLOvSUMmWAA2n2KhQLxi0IgmEt85/ha/ThU59Eprem8dj5jL93AsbyUJmox46ggYFGg1Y+sShO9bBCmReRkBuPr9xx+eHDNoGmbjFCFuPDDOQbECY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715074943; c=relaxed/simple;
	bh=scwrqa9wJ0jKv2GEimVa9NBC1+wanu3KAYFqridxGdI=;
	h=To:Subject:From:Message-Id:Date; b=JxGLhLbJPfdLvSNjNWny4UUYq5JuyS+qLFTN3gdU5sGH2TmV1CgeangJBWRIw0jkLXJYfluTvq0btwf07aGdves4yvvnLig77bPmVqIdV/fjbHa1t840E8n1B4DMOiE2ZBDbcjgKRBvfHIcMnCjiX6xWeRbhPR8PpKpu/qh93GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqds7qgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqds7qgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DEEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715074942;
	bh=scwrqa9wJ0jKv2GEimVa9NBC1+wanu3KAYFqridxGdI=;
	h=To:Subject:From:Date:From;
	b=dqds7qgVxzrVNsxcbIAOPvDm2EtjkGy9R2s9DK7C0GwyqnFW3L03oUU8TAr7aLsKO
	 yYZ3qdqDIJ/mTIA+Yiw7K7Gnm7ETwZKCJr7pPwcJX9iZCq6aK4Q7kEf7H5YZmS/TmW
	 LRB6L3jhwmhDGi4yO96L4xvx8KB5VQB6dZFHzWsAibw8y6x5TE5mD0VEoR5OG65dun
	 358cOMj/tjsSxamSY1go4pUrZOUlS2q9AL6aNx5SeHq0QiIzR+QlaXHIHhLzkxa+ZK
	 1dGOhDT0I4xqxaHXTdP53OF7HxBOjfxhTtj2Q/a76Q7ZdbsjRKE7EJWiVQboWIEZA1
	 ufu8H1OnLU/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B97C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507494278.13087.7615609354972907272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27054f95b7bbfe182b48d23f447a441c2d6bd9fa80862e9d3e63af446793d3d
Date: Tue, 07 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715074942
