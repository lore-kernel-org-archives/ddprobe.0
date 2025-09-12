Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9C94A23
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757672994; cv=none; b=Z7jY9k9pSCxrkVWQuovpc6wpMm+AAHrJ0rvRXlD7+0tIbisF6DDRRvnDS6JQgxRM0k6e7aU4GbqGgsJqfUezOaHViJ82SUOj2MQZBoXq1SsnyK63MBjuDT1gIg+081cfAatUDYO5xdDyaNi7IJPy1CLnXgm2Vivazs/+Be0Q6ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757672994; c=relaxed/simple;
	bh=ZyCtP8AQoHLkiA6q/munKGtN/jitD2NglFhg2TY6SOA=;
	h=To:Subject:From:Message-Id:Date; b=hX7BryKaBFM3IOwB10Qr7TJPBfPR/pRPwzHhyHiYMzRDy4YYKg293egwYuzgJVRSjaadVI2vwqhVXT+3aN4XasBiI4It/cL/tIOF2iNTgO8r4NDG6/Wb4hD0/SvzA9r3m222jZzeOFE+0+IU0ig9UVN1ihQc181WT1ONufdfCXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZzUqi4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZzUqi4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F502C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757672993;
	bh=ZyCtP8AQoHLkiA6q/munKGtN/jitD2NglFhg2TY6SOA=;
	h=To:Subject:From:Date:From;
	b=cZzUqi4ZO3HrAGOajfYQ8wFC8evOAJCVo8yoIZzqY43VUlnNDcwCAFbnn3ewWyv1l
	 dzeLf1fgrv5RFvRCYL34yGPrztu1HbnDU7PrxsOQKgqLSpOV0hCGh/7yEIJreIRnvR
	 Bb1BDouz3FE56Seex6XhdNOfrMHCftWcbaHI2MjmX4fja5qcvzgDbaqIc1sUGFMcDt
	 2rU5nsKaEyC8DiCAPqTybsS+WZf8vhEdpPdmRX5PC96Y0v3zTiH0uYe6n/nliwV4+S
	 k7JXrI+6wZqQB4dH+LLovUnSAgeb1HGclbivn/2AWO8FoZsXtQjhCYeweF5UQFiWE2
	 9fXPT2wviwKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED89CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767299357.27681.5300896134340971941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a7b88d4ea0a558279bbbf4994fd460530edb1675370593059bb3dbb5aa5c3d
Date: Fri, 12 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757672993
