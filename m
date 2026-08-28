Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1163DDAFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787904634; cv=none; b=p9KzuMh9RikqlPuqcoxinIxLYXGxOqLpAhcgG9nDWHOqxH9XgtlkuthR+YplaD4BKY09o04UxCs6GFGIU8DteG+sTCl1g8YjzvjGK4Kq51xyBfPkBLDs2OPnKywiusbpAJJNRrO2N8NJ6jjvSXfTy0tLTO1p+eDWtx24RoOtAvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787904634; c=relaxed/simple;
	bh=VFN+ntKMUxXwWBD4YNZqyVso0MUevSvOcZ8zCf43z9A=;
	h=To:Subject:From:Message-Id:Date; b=aC0vVSYMTdTVS2yq6mvVR7A2wWtKyMVYdSqrvGY6Apv0E/6f8XTocoZkqHVATtXMDkdoZBKe7TcfR3J+uFDxY3fWhdMWNTFqjEWR6OxHgnV4uiiMYHXcFuET2ZfyA2LvRTiewucpEYmJ5HoyThALXClue3ZJvwPkazzV/ubxfrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbH31DjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbH31DjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD02BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787904633;
	bh=VFN+ntKMUxXwWBD4YNZqyVso0MUevSvOcZ8zCf43z9A=;
	h=To:Subject:From:Date:From;
	b=VbH31DjI8AZ4Nq2INeUdfQtw+EbIB/unXr/G+A7CzcmrRzApeJXxBBwpcACWF4r0w
	 Zm0ctWJ7HYSecdirWYJ+2W3r1KTQsRiccHp6A3hd9nbsuJQNcKjajx5EuYfaoQnLsC
	 Wt/w0ca3UB6S4AXFUO9EXAhOtZoUAydVk5oViGO5zQH4hfzIbIf8ozWO7WNX4Ju7MU
	 DGITKjUZFJLyjWQw0a8pSS97cVpvRQud14CxgIezDecVXprAM7T3F4kM1SSUEAKbM2
	 OvtDVA3xX73QjEmD5RxuXCC9M5EOHAoZcVq6aoyuF/82ZRLE1Kg4xV0A7HG+dVUHMr
	 Hvk0s3Ne2estQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1EC61DC6
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790463368.14087.4616647108462192117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fd4a2d7a4bb6898c54395b52735b1774910c40a691caed1f516ee470da00e7
Date: Fri, 28 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787904633
