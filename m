Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA6125D53D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742803794; cv=none; b=PzhKzSA0sHxBEB9aaiitXL1AmOEWFxTfSHiaTnmtA9F0uRpQOmTQRzn4bkcOYUci/ow1kLbGWnVr62jVfBtFUlrYcIGajQXJ+DhYvRqP9PT3PnANBZG5rwlhPplt6zRdFgd6PX0XDwfVpDq93xqtji4Sk9EpsxwdGUngVp/BmX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742803794; c=relaxed/simple;
	bh=CQu4Zk9xZrA+x9sYem375fJ2iA5KaI/G82DoH6Gw1bY=;
	h=To:Subject:From:Message-Id:Date; b=cnR63xECLXZnXdTO5U5KbOh46l6B1sCJsGDEzIYNjwwnDJSKY0Od/zrPjs2uR3MfIN+mjAT9Lf7Uc4PVSV3sYnhzPvqZYSlQBOwv3luwzuEwEMh/o6ENtqwxPQ5+WUB0NRLoUeZVHPTfBSDnoQ3twsBHdAn+Csip2tFxBIbzeNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhprojPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhprojPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742803793;
	bh=CQu4Zk9xZrA+x9sYem375fJ2iA5KaI/G82DoH6Gw1bY=;
	h=To:Subject:From:Date:From;
	b=lhprojPWDiTGrxk6uB2KmgXYwW45dRDPqi+p0CbCTfZqahof8VDw8i/5LW/kf8fH7
	 +pY2NOyfZvYG9evuClKdnsoacZ/6KrP959ivHe+HE9nrwiyFeX2fNG2NCFxqsE0YGm
	 r1QlGc1pHYZHidYGWRBAKhfw+9dTTzA0upryrfxnh3spD9Oj4bqRNHRxjhwkDptnil
	 UK+hEdxaxBIIFO+SV+MJ+J0iETSQQY9BKjojaVjRiVfa4kHL/2f6aWrg1MJrSMN1K5
	 FfWwdh+It0ed3x0UMGFYhHKkY095pMY4vzqeZ2LmUOU+1htBeym1YdX0iaAhDhG4Dp
	 4jDe415TvZrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94295C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280379359.7459.18287279440075267188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83bd9d61e0792a6117b7bd94b47147476b4b4c9f861095d922ec51f92801f67
Date: Mon, 24 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742803793
