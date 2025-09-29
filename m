Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC823BD1B
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759189796; cv=none; b=JQ9qqKXb+YARw5jkOnMHgxYD9JDZUrN/fQ7OZM1uxc3WamAmvyaoj6JlM9HxZOqJU8RROWs1dLrUqoPKe4q3bwe8NdwPMztf6IsrjbClLVnNaVJAy1zf5Yr3WoMkAS4ivV7OwVzkgX+oN/LpcOKYED9hoeT01NTjonZellDwErw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759189796; c=relaxed/simple;
	bh=59A1QLxO0xBm5p1E69Uecm2HrOW17/+lP8YDLJpgtr0=;
	h=To:Subject:From:Message-Id:Date; b=SdFH332fJYbo6T51Tz1lTCQ/9IMp8dzMWnnqABI7wHdxl6AO+ulNocgJtDHZjfDJD+y4QEd4gAE8FShKbmfXmQOGDnUCSvBw3siwYxPX/9rrXtSfnDoDzvfsIvxu29prCrzCQYcrBBP5r6dKxXG8N4ES45vrQMh8y3Qg8Nl3uoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI6bm2Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI6bm2Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06DBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759189793;
	bh=59A1QLxO0xBm5p1E69Uecm2HrOW17/+lP8YDLJpgtr0=;
	h=To:Subject:From:Date:From;
	b=JI6bm2Se+AdJ+1D6MPbuYSnC08Fryfgei/CVaLqeCbJ9HxYY3RvuKzz9JeUvouIXT
	 cWfWJgeYJWmhNc7O8LxhhzK5KEiU+chg9r0TBVdIBReyeJSWVVAG7cqi3bb5jjtCNO
	 pdrvvsHi7U3ztilz5lr6TIaIytEnozCfUjWdt6YgYBUoEPHWB5Ky4iRUc2k4RYwAKa
	 wj48CBNsVuiy0Y5oR9olhL6C61ygPnNSJxc4CmJtw1BsJdG2l6VS+/AX6TIjiErMxY
	 mpiZuso4yEiaMyz8lX8YNiTEagkE28irE0380TIVSr4CUTENICYUDAe71d+rZYBVNd
	 SNRY1YI5A6NMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C097CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918979360.14512.7264874254222825285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2376649101b08be625fda782e1192ad4a36988693810fb0662a1d283fbb508a0
Date: Mon, 29 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759189793
