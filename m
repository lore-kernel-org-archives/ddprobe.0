Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2059535959
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759820994; cv=none; b=ayYm5eZKk6gbD6xtayEH6Ce/RgSWTK0KqzBmGI/xre6zXQZrOW1pDs66B6OjG92SFGDuQVO8OcThE7Kcqxal7jn5Zh+4RyrOSrWOSy9zv7kcxymQ2N5XD39zkne3WD93ttIrQ7+AR/i0Irs321uvoWoH6+v3lGqDBdhTIaMmOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759820994; c=relaxed/simple;
	bh=igc6++ylAJheRzROCnVyhGLYsBJuVmT0NXm8TdF7RLg=;
	h=To:Subject:From:Message-Id:Date; b=eXq8T07J/+Dvyockex08xboM1ZHGlDcRYJAVvVdDhMrwIyugVMwFbLBsGVSNjvFhf2/6cQ7ZjbsGxtyX1uodOyOaf4mVxpxT91sOKtLEE7wz3s7r4IlufLkO5gU+f3qesshVbc5bAxVMkjTjHnbO77UzTegOMCXi6+gLXBLmEF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6vRgdxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6vRgdxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759820993;
	bh=igc6++ylAJheRzROCnVyhGLYsBJuVmT0NXm8TdF7RLg=;
	h=To:Subject:From:Date:From;
	b=g6vRgdxNdFDyIc28gdQx1lKMXL2Xgy52eyYHwiAIWk5i7lqZirjer0d0HqobmlhSi
	 WWRAtNkmXYBoYTL/UX5ZbjFE6QGpmvREIZWbrDxhCllHntD1kdTqlwVvbJ8rEWBCaz
	 Kf6KrK0stYd1GzJO8wV/BC5AcmL94ub+L0eExldiBaetnCT+7Rq3eNwb9dESpN7ru7
	 5vn3Yz77gw+28Wdm9UT+93X34sAI/VqrJkWkgP3jt7E0z2aR3xW6lAg2FUmmuQO4uK
	 QhR2XXCx4fledZCwrLDG30TUM+YW6yeLgpZL8PgJNFElvXCEfXJXv0Jeyj85ZWlHbZ
	 PVRlLPqNjrEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE0CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982099357.19267.4327309615313340029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e67ef06e5d3b3722182b08c27d7824a10a528d820093141508bb7d346c9e9f
Date: Tue, 07 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759820993
