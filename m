Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF11367
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782691714; cv=none; b=fo1H7tJMPc4vej/TcLnS0+cHC4FUeYAbE0dc4z+W4S3eVmZNPxGKDINo6TazYhk+tqNndgvf646Xiv5x4WYulyKdTE9UtIrZJVfLnLZFLqueoH8gGGz19iNz9i03p5vKU18KKF2tKkFpOlcyZHjjMhJPJoHGOwqmKE4qELFD+rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782691714; c=relaxed/simple;
	bh=+7nYjw4hmXquSqQCOcASe3zOUG3/flNPD3jebT+hQY4=;
	h=To:Subject:From:Message-Id:Date; b=FiCV5Nejkt8t6l6HwI9gPtmVULGlmSrcQQZocqPJ/by3VsfTMfjDhOYonNklZuv12Mj/QLjK1nVrnZx6+mH9qpGyHuTzQXofCNR1DH8b88TTfhQwUurMOlbUxlXx5Chao9zkHhHGTTppRet7LbgCoXWMbp5UKtCjc4hBjdhkzDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLj/VXNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLj/VXNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F26C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782691713;
	bh=+7nYjw4hmXquSqQCOcASe3zOUG3/flNPD3jebT+hQY4=;
	h=To:Subject:From:Date:From;
	b=aLj/VXNxTO6moT0xrFggR17N9lk25zvoV3RxoUFz6pw8RnwCRah7d0qPgigVWR1hu
	 U9dxSo3QINv/bXMWAxicjtsBOSP0BaRhdhJZwnNIW3+JtCuOR1xTUkucQp7fz4s+Ke
	 v2GcIj/qUQVIHmJMPoSCpkWElVriPWZF/kvwmWMRWVHnqM/Mo9aNHIX3v6ui8Ilrfn
	 MSc6LhLZ3JQxz0Nys80ig61LRILUS04tnWhLRe45miY++NJrag8NfZ3RdmxQkfegXJ
	 Ge5Dk6lWvr02vxAqbKSY68nUK+99+1Ro8ERTU0TnaZCSj3NEh2HzJYE9NnYkgS1Q+s
	 TwqNVpVQsxAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B43C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269171372.22255.7977137022350396892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf630ecff2b553dadc30af551d2ee312a407944598d7aa756066510dd23b2c21
Date: Mon, 29 Jun 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782691713
