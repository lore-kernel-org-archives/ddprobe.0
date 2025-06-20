Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33735A930
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750444194; cv=none; b=oLUSnV0BOrsY/qaBf5Bh83lT+7VMqxaC3ZrpISE0fVXf/ukqke3vcLeEF0nlaoQxU8/9cEVNOdHjvhICs89J2Ge4NscNZpYgJIDcAmhALK9kO4kjo96PqmTP8PBFgqVlBLXDdAQIb60V07irFigmxiMfkqCa+NdDutE+r5ZjG+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750444194; c=relaxed/simple;
	bh=Aod7gzWvrLKG1K3JohDWbcfngSDvjyRFEYAnX1XP+08=;
	h=To:Subject:From:Message-Id:Date; b=cGko5Cj2tRvHPjZPnS0+j1ebpN2SbYHXefmzMkmQqiVc5oKz0WnNf+RWgUohATTIZiGzQVzoa5OfG63XoySboKyRsWKO8MlJmTlo0Em0sdAnCz1opEAPvPQ4WoqHCKq4AX9sN3gigmgDRtMQqVtQlhswytsbTf/BEUUKzm+XmV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOY/xinM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOY/xinM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750444193;
	bh=Aod7gzWvrLKG1K3JohDWbcfngSDvjyRFEYAnX1XP+08=;
	h=To:Subject:From:Date:From;
	b=NOY/xinMVYd8Wewo+XYmJEq7dEc4pHlnRMMxtWzLZn0A9J64nzu0fNBCzPrKntLqk
	 q/owfOd0I33EnKeBDAqmCpglXS88Bxa27dkj7v1oL7TjcHYfmXj+nI3hL2aVEjdXrz
	 C/kbDs6IDWuyAZWvcpC0nq4CrCHbrkoogQGyU+JXyk7s5WVVuS0VP4+A9vdtmIkBgP
	 4H63+4F83zTPP9mbqHakTJRAoUWjnvMIoGxhwCZJfm0oanMNZEt/7/V67aT3D2XRQv
	 5PZMB/+xcWqXRYuCY3Wj9F4TtkKkZn73N3swegZOYt8e35HuqtY+gyQQP138Sb2iWc
	 eeP5rUuuLpUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42CC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044419357.15478.13870304198652813245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5622bac84586467d41f2e41f9ca8fcee6bfdb9d88080ff12c412bc3d97640e6f
Date: Fri, 20 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750444193
