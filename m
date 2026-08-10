Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A0A7E0FF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786337434; cv=none; b=gfkrFbDjCdQAnYzDIbUREJ0xGSJTezwiN/anwOSQ31TWP0TS5g7kMcZMkuj6mPFHWmBaJD9hkwgYbvEk6ImMCyTsYH5bArorCQ1g6AFQFePt0HKhkqmzyyFvEA0BwbrzEidcSbyrhVKnWG/PZxcjiFLjCxw/pLygC103/2WqYzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786337434; c=relaxed/simple;
	bh=lZTn3IAx6AadkvuVEGHcm5qZ0k1jFeSTHEah9zzc1xQ=;
	h=To:Subject:From:Message-Id:Date; b=Oe0ToPoej/vYwZ0WSWTetBjFvlPCwQc+VHRs+zBLNb/SV6+EvV862gAY8GYYH8cVdxEJjPYrdgK3fCIsyzaK2xE8eA4aglKkFNGXaTKynJdzMbWGQnLjATBQEpp53xIGZEAjCMbIC/6xucNc2G6hUItCDZZO7o37tThPHqKtLuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk1S8G0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk1S8G0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4A5C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786337433;
	bh=lZTn3IAx6AadkvuVEGHcm5qZ0k1jFeSTHEah9zzc1xQ=;
	h=To:Subject:From:Date:From;
	b=gk1S8G0snYqPf5wBqpgXtsvJvmiHwezhneS7XHZD8rBE1qAj9kbQJTIUTSg9I2uhK
	 +RKf9aTvjPQJ7AN437bn74aVgWc2DUTRhhfGEO2fSgcIjt99cJVMEt6SkIqMmGDkbm
	 r6flr/4anZ7MSUZXyMo1FJMFlwcd+35mnzcQEYOPgzyQfI0I3TjVRgE8FreOfTZC0x
	 97RXnau1ejenMet0kMdOhNBPehyRQGiZe/SrMYeAhOHRq42uv8jqiY4ijm0gnBz6xm
	 s30YXZawLDICshrkKYDtrMmyvn7jtxA9BQTZRk/KmWdo83NuaXvbUUu0s2nLmoUK5M
	 1hwtmMHBhCw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49F9C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633743369.6991.1187402671845784590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44d510aee555c9452447c513d7c88fcd46e9c9e15dc2589b15f43331f5cf7b0
Date: Mon, 10 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786337433
