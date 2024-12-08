Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2D22318
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733686554; cv=none; b=UvYGqErP1lInTJ6/kmVS+T3ABySCLslNxzWG4v6taYtxoRcIF2VshIs3LSZi3UyvLWSDdPvyRlcABO8GXQ2SnWIxeLksWyUI/jFaHx5rVWssQf7uuuYSFmLqYv4EE9YO0mRT8RE3/ImtpJKU7ENPXRrjFnONSVgOj1lC4/5gg8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733686554; c=relaxed/simple;
	bh=qllkiu01MwJTFFzSvNquziUS9iy7N07E/B9CQefoUXU=;
	h=To:Subject:From:Message-Id:Date; b=LUBFDsxJ0gLoDZmcrQWI1wVTD+EtVixJwLKsW7VXYCAv0HujArLMNpVJ981DmnlA54B6zkrMheqXs6HXqazGcXGqE48CDexO6OLlRICkgxn56ogpTvOgvOd1noVq6Sojy8gEgoohAzJrnUqqvmxOXdrxRvI3upfUwuVLRocG+W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBHMgXvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBHMgXvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EFDC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733686553;
	bh=qllkiu01MwJTFFzSvNquziUS9iy7N07E/B9CQefoUXU=;
	h=To:Subject:From:Date:From;
	b=SBHMgXvRav4BkdXjp6g6SpY8NviR5KMsXcPvE4kGrkgIFuuw3sBPU8kmFb4ECISgY
	 Dkql11ckVP+6ADj6xf+M0NBEJK0T9tyz65FP+VPTvPR4lAUICqb3HKhRbo+RlB7PsS
	 hOHKqQW+Q5k4QBYYRQ9ktSqloxkjhHOoJED4S1j7Kz+VXenOTrbbMexbifdLI8CUa9
	 uMujqKcHRzl9C7fnHtLx9YV+tlSoogb3plNs0nLZ6nnRMhDUGnU9Pl1cSJ1dlovdXA
	 lu73ZUBaii/nXKdwr8oWQm66udICuknxnvnB3l7+JEFbIc496F60QhDCE+XmWcRFdW
	 Uvz4ipES2Nsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12C3E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368655364.9853.17115513772504323748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d8bd4ddcb4481525355b296f5f47f85344c977df8877035121724637f29b9c
Date: Sun, 08 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733686553
