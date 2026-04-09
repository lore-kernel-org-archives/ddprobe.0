Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB8F324B06
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775735134; cv=none; b=TL2IiOzzrzRpXwEnYLu1US9c34li4y3AbDYVWvcfEw/OsqnKNShpFYGW6nvZEytl5GD6a1rHj3WWbAAy1pEdkfyl7Szzgg5/zraernvXyPKqtEehSYAlD3T2qLjVrPbodLCB2WAEQ90cG+0xTuGJsfwE1KMoZSUpQaO4WN/1BzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775735134; c=relaxed/simple;
	bh=mBqz1RcWwkZ6sNJZyc1hXxUol01JdlIYFk3Xli/XOlo=;
	h=To:Subject:From:Message-Id:Date; b=pGrhfqGH6R7v2nkmRWmoVZqX0GDxcedFIgzqQBOtaw63LM9jMZQcnuQfFQp/hwO8XbR5AQkl4VUrT7CR7huueal2Us9+yiJRsc9qv7flo9RibGLhvY1UtQpkedWJBQtt9DvDJboTyaohRMNvoqeQy7KuITKuLdS4D2QDmoz61ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jATIxGrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jATIxGrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C63C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775735133;
	bh=mBqz1RcWwkZ6sNJZyc1hXxUol01JdlIYFk3Xli/XOlo=;
	h=To:Subject:From:Date:From;
	b=jATIxGrlLKqCbKkcTbE6KGi8vCk1RuAukmb3QXefzY346T4gdHDnATXwQhvjw1Nkf
	 tXaCxV2JtCy3mmyV1+rnhacVfd5GfLMCGe+y3xvpWMueaUHEAbZITJwB176xX2W10b
	 cJ1zk7ye5vbX2q9vuqW/A451o8YGqt9uM2U6Vug4gspHclyNXRgEtLarPlEpTEgi2E
	 LOgiLEVO7qMUJOmJnp/bQiOG+mOWnxvdoiVea2s409DV42xTXGOzGLLddI40/BQzQy
	 zaDqzRk7ngEKp15Znh8Dj0j5+gO3ucd1Zk+YjhPIkkatm9LmvYisJe5Xy2gvOhNkzv
	 rt4uHAqoHpr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFB6EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573513370.14082.4038995494312355673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89edf4c22977981743462ca3dab32728f9934e803490180ade3feda41ccab842
Date: Thu, 09 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775735133
