Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B5915EA2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712365097; cv=none; b=Up9PzzwQW6jPsAm7Yc8Pujxd6mxYLgvHgwzBOzNuBfGGZOA8OvFITfnpLYFLoO3WMb2qrrtVQMaQD50znkhP53dSxSazqScmGptPE5I0qJkqrGXnXO4LUjbR3uVYrDcwlx/7JE1di58acg5yGOQgcd4Coi+EP6c2r4YcmmC8aLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712365097; c=relaxed/simple;
	bh=sHJVXqlmdBQ2VXRa/2L+nXUvUODw95rV9hFBIl9jJf0=;
	h=To:Subject:From:Message-Id:Date; b=ZlGVXU9w/lIalEO8B42EjEerxw+SCWDb1dAAw6qO+Jac5+3eaoDpCiQp0n3mPfzmP6HKQq7V8FR0cI5tzmZDCv0NRvzU1agCZVgluUK9VCtMAztGgVHMy4uGu15CX3Wo/hTMdSIJ9X4DRYG9BwryID0Y2Y5u9gCdH38TZEV/FqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oa2DQ3rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oa2DQ3rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D92FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712365096;
	bh=sHJVXqlmdBQ2VXRa/2L+nXUvUODw95rV9hFBIl9jJf0=;
	h=To:Subject:From:Date:From;
	b=Oa2DQ3rfVH0z/788yAVXANhupCEiGC44j6NEvir02CdFGWJLF+XS9Dqprbs4mqi8N
	 oM3cWMVsZ6Y8YKgWaf0Hyypt4sK0kMF7gpkxmmO2kBBpjXnt+UUfQrtO+MHr8l11ES
	 p5aCm697V/IlMiGqK0oK9RYlhU5MuKlW2QhbxWmmdV6v5F2AWBYytOrk46gRLFZtHB
	 jPr3l1J/HvxIP6kFnkIOl0olt0PahkxoBylo8RgbnOl8LVmAHknH2VFUairspP69jJ
	 hyiwyVRS2jeJ5xpe5CAP/GLX7r84/tC9A5btFLKP1t+YslvBHL2LqJp5ckEvDoSkYU
	 oVnqYqaueIYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697BBC3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236509639.10195.5525567031401113961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd46f59683d76c86d4d2e25fea439992b400c40cdbd75f4dc5fc6f4c8a9ce3e2
Date: Sat, 06 Apr 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712365096
