Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA361BAEF8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727758554; cv=none; b=W9mbrY+gFX27FQpkVVhHTBfyOVc8Qho9gTuoHW3lb/m9wdZUazxqdGvieZ2SpqdUOiCemzQzXlTChAIFtUYyH9vZFCSfd9o27lPtbGPAElPHvOIGSD5YQ2i9b09av7mPkKpzTJM3gI+ikud9CwRA5uW4M36G64PGInc9YspEPaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727758554; c=relaxed/simple;
	bh=N5DkciCIedExDCxJhZFBW6gUaMzi91BqcHmr2VMVUW4=;
	h=To:Subject:From:Message-Id:Date; b=eOPHYf8mlgfKtrHRtv9smh0bfDan0ilARaErPfANe/A3yzxMVa94dbOw3c2CDMMVfPDVSZPXNwfTi2gwcxSo7TZn74IQgaN0ycVkC7ZYLOdVhXO66/oDmAV68feiY9RxDsP0hVhWbP4o1IEuPDKvcGC/tCy/IJUErNRiVUXRAEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2RBf99g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2RBf99g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA74BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727758553;
	bh=N5DkciCIedExDCxJhZFBW6gUaMzi91BqcHmr2VMVUW4=;
	h=To:Subject:From:Date:From;
	b=Q2RBf99g18YaCQPKpXQsu/o/nduDojNsISsq3G06AtBMEkvAjj9sddiGq0Kj/36vv
	 Z2Z4SMd9SO7sXJ2/SLr81vXOeY8tDZM9aE5Jr0BK2Km6r/TghIcfmPFCukpH0mjn5R
	 3MjYBwiKKDVcYtLtt+2oaPKdIw1P0Hw26bApufx0s/cRuOOnIuxpGKFqcnIomqqpmZ
	 xKijaTqV7+RYYXHmYbKw0hgzj5OU3zxc3OFn3rMWeqrVVw67LL2eWudbkO2C2ssOSk
	 MbRwDQbzYcc2+CEZj0UIyH6gE6f2tQ8Rb0fvAyTCTfByyi0lHpH7/dfNzQDZjvUAfx
	 qL4LnMEpsC0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52A3CEB2F8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775855363.26673.7207344804517921122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09381abb8c8cd557f23097317fc46d89a0de07f01a268ff9737cb1819533316
Date: Tue, 01 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727758553
