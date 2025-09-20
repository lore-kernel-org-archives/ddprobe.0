Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FAA2686A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758401394; cv=none; b=Wr99Yz0hCguzebkMBd2Y6wOS2b+HcfRCZsBJ2ojvdqiTmqvDgC1U1UBkxCZCLaPXSrYgPiK514yx2YfJ+8bKZyYObLIul/snBkK61vZ8Egmt1R1GcJJeIiY/XeZtPjJDCYCL/SR8qOrKwKFZ3h2NZt19LxLuYpBn5UpVWpRP25E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758401394; c=relaxed/simple;
	bh=B8YWH2dFS6/YtQE9vp7GP4Tl+/uoSl1v93tzWi8ry40=;
	h=To:Subject:From:Message-Id:Date; b=Bn+A55/l4zojSddxMbeswl3AzYiob0y32Wy83yPYi69/iHYJTj3mdWwf1nHZOvUs6up9iQIN1YS4BrbWjriNe0ltl623d9bI7pu8ZNW4bbESm1QI4wpUhej4zQqu1XEnlQpHOiS3MR6MHwzrMwV7a7onVcqVK3KrNmqGy6ryx5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR6pnqe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR6pnqe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758401393;
	bh=B8YWH2dFS6/YtQE9vp7GP4Tl+/uoSl1v93tzWi8ry40=;
	h=To:Subject:From:Date:From;
	b=nR6pnqe9Gxn3sxwEQGpn5omv6LIeF6ji5DFe45+IJhClJ9lNuFqswhxdMEb33TaXS
	 dHa+7phTFoiCJVq4Jr4gxLZ3q/artx7ZIIsGgI4mcelSZBAgiNmX+ogElZc+zUDjR2
	 cpnevpqqvCSAucDoo1MOTzHDzKnVJzXL/9f0bQu70H3PuZLctX39iaJuPzlQvJRWvQ
	 4YvSFtjihnZLnGoP/1OHkNgtW55p+rMtxikkcrQP4rF58kJPIgcXdpUnxkzc362uK7
	 rgBXtzwWCTdADZNksAYKCfxvG7REknu0VBuXjcezHRnlkSCgW9efaHjGmRbmNR0W4a
	 kRpyDpMX9OHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA4CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840139358.7901.1717265796128118846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b622f2919637b00f3041bd23fd67f4e1cbb000b839fe537d9cd7385e9d8307
Date: Sat, 20 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758401393
