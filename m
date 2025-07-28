Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F57224D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753663795; cv=none; b=e1kGWwYhWOgFMrgGguForPiBnZaU97Bw21JZ4CIJRWDg0i0xwVl6FBEf+mTT1MG/LgZPjCE7K2KhRIklqAquKVkYTO80/aN5AEOCh/8nZAQSnkVeoql8yIjXWvj92G84SB3WMaUpugoSHuXJiFJm4lD0OOaGyGeY0FP+ytQ/GSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753663795; c=relaxed/simple;
	bh=RB6Wg2un7cX/hGZu/dainBtuc8ZhuSXywNkeNXngWXY=;
	h=To:Subject:From:Message-Id:Date; b=DPKRRlYqnASJ8MwdnUGwZn7nSAjoLj24aqH5Q/iTOokNtpYx+YtBijH94Hb+oSbnDZ6KbgSXfFGZZUd/7GBCKEEzc8yzDRUsGn2nWk0usRQjEyX5oDY+Q298LUaqwmPrFdMxVpPDk19O8dm7ktJB3a9Gn5mBfXZITjKecVMcEiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQbuAm2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQbuAm2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753663793;
	bh=RB6Wg2un7cX/hGZu/dainBtuc8ZhuSXywNkeNXngWXY=;
	h=To:Subject:From:Date:From;
	b=nQbuAm2iLq2W5GvF8xH1nOoSezefQmk28+tiQxYTkUUtBPmF92O+yn/VoSiiwMLZ+
	 KDZxiRHsen+2B3AbBBIcHOF5gwhONwOQcZwIB2fOfug/k96f+LFLK1gq3m65D0JhS4
	 yeLf2G6lNDvikWygbBwRuDbW8nOk9KEwQsuheP3fLt8zdzg0h5qy7DWtmlSL/hcDCX
	 MfK59zlVlzmJGPgv9Il+fUtZHsGOeFSU3WWGLSbrxrgWfJEEWJsB/E22aiOQ88Uy5e
	 NcU/b9mtylyBlLHbJhZGX4jSeFPQezaExjFKWxzMdwXF8qo8+/hNrvzGGBFYKyFSvO
	 FnavWJDvmJXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C89C87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366379358.28085.1195580325872662302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d87d9a821ae8ec1045b77573903953432caadbf6841215c2cade51955c3cf4
Date: Mon, 28 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753663793
