Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF95248886
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454834; cv=none; b=K1ghPytD5Psh3kzYMfZzQW7N4TjPeFZoxhhcu4+oJrF5iBFRkcCc5dbaVLaiAgnfIbHEGcUndH/zS4WwrpWFkhsbXgBK9oZjKY3cvBa13lghhZvMaskrWKOh1y1zX+lE9beuvU79TU9tQxNGH50GVbGlgkmZFSzC1zeEaXZ/6/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454834; c=relaxed/simple;
	bh=CKLe7aphy8Lmv7YcmVqo0lWGul71b9AtyVk0JtVLE1s=;
	h=To:Subject:From:Message-Id:Date; b=tNxTp1/L0SY+mTsEm7bfv07xougVwLmFpFGTHx6YK8TANJpeNO+uRDQwPxovlaPDNJ9TW9YkGdKBModt97NPpXgJWHUKqIFkgk+llQViwePLM6CX3nNRgJqaR+tYbm+3CDmsSX7uYxUunoNsska4bq6vlFGnKj4tENiMSFMuNnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkhnrY/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkhnrY/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D949C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769454833;
	bh=CKLe7aphy8Lmv7YcmVqo0lWGul71b9AtyVk0JtVLE1s=;
	h=To:Subject:From:Date:From;
	b=AkhnrY/4cG4ruSS8XcpOIV0rtsgw9C2wWyQrAZ2oKykwURbfiHSfjVkWpTBxuu008
	 VjGEEq8MXDSjYRQ9Uu5dqkPge3e/yYwn3e44XpTPst43aR7l81/uFa2ApBW+uyiAER
	 eGvpV8lo2dKKMDOvqqRvftVxiuYtx6U9isp84PZm+0VSns9oBebAsjNMdoXDmnz/fG
	 Ocn8WFchQDKoDiomnA0BsIuNcwnL2uzrdYOaK/iMgqZtwBnwKgA+5aTpP66R8OV52w
	 OYR4kHJjrI41mACsvaYQmNUkbm1qb23s+zhfm+bnPVmPJGoBGJSAIqNf8sMqdcbvjI
	 WtyM4873IU1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA0D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945483357.12746.7215532062454919923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abc4cb13361a1def2aa2ee735ce11ad457bf56e72495f868b078b946d124166
Date: Mon, 26 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769454833
