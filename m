Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A914D5BF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714599743; cv=none; b=M42z0Gr7nLjPDDy8+eALFVyVZvdNch0H3fZQch8ozypkqN74bJI9cDaJd7KSbtMC3d4hwMq/VmCtlR34Cu4Yn/M/VGljDBWAa9xL129qqRw3J5SwK7PXSrHQs0+fBll7hNifRCQIDARK6PzyOgsfH17jiVnp+fKRNqNh8L3Gc5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714599743; c=relaxed/simple;
	bh=h2FHsJrJRBnYoIWLcdeYwtueIuQcjX6AozLFHL1PDTo=;
	h=To:Subject:From:Message-Id:Date; b=L3AncO0v4JA9gDqDcowj3ONx/0dRguJnsez1w1rGEaN+BwQ4w4hr+9WleZDaDmDTfPQIk96dZWEZGVpv3qNtxjYKkdga4t9VuF9XCqUzcYMqWvA9yHX9Vc1mEkbIspGCF+t8tU8PQWoqzNSZFnxFRAzK46K/ckrGSelcgmKEexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j17GIYxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j17GIYxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4643C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714599742;
	bh=h2FHsJrJRBnYoIWLcdeYwtueIuQcjX6AozLFHL1PDTo=;
	h=To:Subject:From:Date:From;
	b=j17GIYxz//Q3sXfv7z9mMfzcKNYpsG9zh0wX8yY8FbSqgb7aaVo/s7t3rUapM+uCa
	 3KV33WvAZG9f+YoMh5GEndtuD0lcWI7yLkMNB76iP8y/0DPN/dMyaFWu5lSwWvpKTl
	 MFIhtxatue0qFVOLIrxlLnCXh17HrPkNqopq4IGYC7EE0Zz2DnICaTovTO1fvwBN1q
	 80oRokqRH2q4/uAnYjvaoZUIwoRn0FqU+eusRWXVzXtl3PVQchccpM9v99/a63ils5
	 RQFvJV/QLRcYfazztJc147ECEBI5XVij3fIb4On23kw1VTMoy5SkGuDJnd6L3p0NgH
	 vFv6Pc27Cy5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB55AC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459974280.6439.15622475284113278660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df299a2a67a7148eab9c40162613314ac4749d1fefc775b8484ababdb776b3e7
Date: Wed, 01 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714599742
