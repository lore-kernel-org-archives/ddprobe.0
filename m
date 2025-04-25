Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0025A64A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745588396; cv=none; b=XQl/uv1XvpXV985xMYwDEjP2p+1Ne3MojMjiE1v3Ma0ggbW5g49/37fg892YUFgaBanUjJX57nKQ6+ZLqbMhkXOraRgizaBfsdmhDtea6zq1JhfYOcwutQpKtxlPNjtvNiJa405YJJjv62+TL71uWzuAzosOZdoU6s03pzggC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745588396; c=relaxed/simple;
	bh=v2FOxaPoqs5gf+l6n5zVdZ3PLEXNcyyzOaHA+QVMc+8=;
	h=To:Subject:From:Message-Id:Date; b=oXt0jo56thiW4jgV88rKH9GFwPMbFXxi2vULEA7/kn7ApSz7NVFvg28h/BNd3dVSRJLFylwZboKF/gEjE17zjU+ultKfq0J/2DQG2IAfhgN8q5bRnoabbrEJCoQuWbZNvT1+KStR9WQ4mx/RVuWpDq/HRk0PAYy3KGzV1U9Sgy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmXruSnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmXruSnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0193C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745588393;
	bh=v2FOxaPoqs5gf+l6n5zVdZ3PLEXNcyyzOaHA+QVMc+8=;
	h=To:Subject:From:Date:From;
	b=AmXruSnR++76IYtis+QNUVa69vwgabWxG16ThM4d9Bhu2Dn8Tn0VXgSOVJrjKOUx6
	 ZwQCXEtQRIfDlUfpVq0AbHK08zM/Zq6O45pBaSU9ki9m3SrN3dSn3jS7koYF+ZDejw
	 WJxS7Hc8ufdQp0vsJV97HbX2D35/iiqGgyBuAUDFDwhsLRUh/4Vkop2ugG0bvJ6GBo
	 CXkKgkTOzvvtQxSi6cTXyOlbcv6/ZupAhgPXrS7icws6/Q09SDIIeGgxX7lOxHSy6k
	 /ZD0OHX/nJ0bNNbQlvw/Yvt1U6ss9JnK/Yw1LwkA5uLjWnD2EQt1MV9M4CV0A5lWo0
	 M2A7ZLDfWAwqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBAC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558839357.25868.12134550679886881644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70bc3d427c0e7bf31080e0bf9664b6e8b403249a43020be565a2a4c2962c568
Date: Fri, 25 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745588393
