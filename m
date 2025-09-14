Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF21246BC7
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757872194; cv=none; b=OwwS43DjKixQKOBKvNqCV+IhYqAkjCgEb8+dXbZhGDuBodZGPJOL/49LK+wWG+5JpSgEIpVwJMjfxkVyam2Jg2+VlYHRpliZUNobIXk7iGJ23XY4lY9llJNPE2nUKm7Xr9vvZ86VqnYpuwazJbg74vlppK+c4J/AKT/CNmbuV5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757872194; c=relaxed/simple;
	bh=KQrw8lskKkBhm6xQvPT0LXO/a6R0QICwgFJ7zI5Whcc=;
	h=To:Subject:From:Message-Id:Date; b=R/1p6NI2m4ci2QIuONOkSNF2Wz+8iM0i+OE2Q5CoOGjPLskvmSnT2QErgrzHlF1oJy7lzZM9bd9Yg55m4GFyKXyAAkA0CgSSNE+w2yRlqKdGDhUUpnNo2G5UirHtPxF/zBO4K5uqlAI5WafG3Qy5jw3yufbsc172GFeuxqKkBI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj6w4iFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj6w4iFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3110C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757872193;
	bh=KQrw8lskKkBhm6xQvPT0LXO/a6R0QICwgFJ7zI5Whcc=;
	h=To:Subject:From:Date:From;
	b=Xj6w4iFn/8Sxp7K3IY9IS2ex5EHM+i6zgpm9nNcC9qlf+MGPCW6Oje9PwDGFAypPC
	 3Wyib8Alt5ZGv/YWENEK/fM2sMKtGpP04dAa7J1Ivl++nwQp2FnOeGuo89nN2zF4S5
	 eqVwmBRJCLDOrh6OZpwrviCBCCwNASvcOjcuVhNHay8CO3TPYFjT73lgSlBAAOGS+K
	 awEpodky7XkCEWixxL7nZK+YFnnjd8X5NZCrcQhjmUqr+cWe3YYIXNAeMStzeOQ8ce
	 xU4OCFxWK3yOOrPiitSIg36m5webwlI5EvNhr91jFOmv3kpkFfhZQfUlUm/mVg2Vav
	 E38OAPDBBIfXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90638CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787219358.30784.2195453445498078655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b52712c70b9263bcbf661f8160dcff127afa36712e71c2020ec19a9d883a5e
Date: Sun, 14 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757872193
