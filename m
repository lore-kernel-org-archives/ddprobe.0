Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280E8629
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735956354; cv=none; b=oxWx/VmJbXHzg3RFoOfBIfktFMrtXihTqu0qDA7C3173dK/lAg4zseLTTARvltDBzdqPriVunYoVW1AElLMAjxJMJpKQ/C0PNS+72pM2d0y+xr43bkwkWa5eIJOiUbdRuaYpIzjQmpAw5lDSVmp3cWI16SUtke1Rw+LEo12o3bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735956354; c=relaxed/simple;
	bh=iF8S8wF6rHxcCSfYM1+b0Fs9Ot9cKjRX49fCcYmvWis=;
	h=To:Subject:From:Message-Id:Date; b=HjzuwE6SeMdmHiFR5IJmlLcNdkxqnRAgD5OKadikv7Y4C/UMC3JgxSUHe4mBxsrhvN6Gzu9oTAgIR9zqFIq3RyXh7QckLuRnht80+KNJqIj4OaqcWqvEJhorOdOTqM72F/KupzjsCbm5zBo5mKhkkDxH9h5uLJTudr0aFTeQiXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUNZKNNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUNZKNNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ABC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735956353;
	bh=iF8S8wF6rHxcCSfYM1+b0Fs9Ot9cKjRX49fCcYmvWis=;
	h=To:Subject:From:Date:From;
	b=HUNZKNNUuDuyPN8YhaHDVMT1EnzDsRUEh0MJWcyfCH9ZoDGIz33UwMVD7AT+ewJpH
	 YOjZVu28CrcX7LzVpgCsyeEHZXa5/acfxwSz7tSOSp6xSs7X8U/EijnnGoXqZlhszT
	 zqknrFcgsu89zvSaOstTwEVKFhz8aJX1jMbyFIiYX/lEbjKpMai9ghHtCRoefx2KoP
	 v59EwKKC7ztEJZn/S4i68DmSIln+U+rMN/+Frk1dgte74uVOlW2N+YFxWD5ZYcY9bB
	 mYvOPPU6OLwsy/Mjr6xrAJ9OOe+gy9At/6SvEFPndlT9rmdQzU4Fy1loXiECdQgrhg
	 qp7pBQ5dNLgXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B69E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595635358.19499.6855452271878620133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5260c6d78979c26dcbb046e31bea4a6a2448aab01983a53b81a23e2596263af5
Date: Sat, 04 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735956353
