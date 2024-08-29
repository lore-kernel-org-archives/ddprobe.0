Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C681018E044
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724926553; cv=none; b=uAMWvwJSdV+XwizVXctOb1+nCHfqIVfNc89k48XS7qkMDl2xY+leHRw1eBJGZmF6ref74V2PvOPQouCCHDDmso1qYNnWV9ZckbbEsNHlZsAlTqTHKY/pk06Sr/8JhhBoJOKfEfSMOA+B8g70g+n+08yBYXAvC3m8Pp+/SHwWxPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724926553; c=relaxed/simple;
	bh=v9tRlPSIagHMFvrFfKwIHj+aV1Poc8SUcVksew2V6fs=;
	h=To:Subject:From:Message-Id:Date; b=WBvwMVVMdUlh1lDg+VEZs+bvQ0dbMtYg36FjeUbN/vIeUDUIh5C2wnhamY9sbQZXz4HjtcBoTsmXsv0E0bn7PgiBff5p8hT+2eLJcQ28qm2BE8RPhZ4q/9Rk+8sFgonMLtrfrGGnLI0arN6hbb12zu73Kp28Hm2NoyY39yF3uYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvlPjwZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvlPjwZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7729C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724926553;
	bh=v9tRlPSIagHMFvrFfKwIHj+aV1Poc8SUcVksew2V6fs=;
	h=To:Subject:From:Date:From;
	b=TvlPjwZZsDbfmJe4Tb6Vw8/++yT3BxaspKVVQyApqzN53IE0PwvpV37cJwYnGy4Xv
	 bMYD8CXvMlxhL7RrTqKyrJfK34aNfTTVxjGJmVzwMwHIlP4Km2QjJNyFU39LexJKKY
	 +SXNVWvisddLTlZ4JjByjfjUL69rrA65dYGCRgGvk6ikswAneJ6RsYKpu13Ra7n6/v
	 AZ/uJ1Z4+WBFcAb/vC1hOXNCfZfmZDjjut4X5BMNARmt9QhQjD41AR95E/OFMTMFWG
	 Idu9kEO9+ctFNL5F6bA2+hziapuv6B362WmltC3x/vF6swEN+8IHvjR1/MmK6qT9uf
	 HMp8nIn2c7YPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2DC8302C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492655359.2183.16624337376484091652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d493915987ab38c7427d6384a6c240068ef468d82af9d41d2710838455341b1a
Date: Thu, 29 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724926553
