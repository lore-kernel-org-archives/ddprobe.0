Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79496418342
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791869434; cv=none; b=ADj8vmiEAn6njQjJ7tddwEEPUE2U3Qbu+UHjTI0hFMS84aRhqe+yvOUvQAFazjNB1CeNWLowlZz3xNCaUv1B7TAJlCztCnyz9DjP36FYwvAaZ/YK8pKxPCvGtlPt16AmkBc8BsgfLa5fFe7T4dMhf7PWKRMWSPYbA+RRCl0DS44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791869434; c=relaxed/simple;
	bh=quHjMmKNkt678prlkvuSGji8GhlcDwT6IrEh4pKfT2Q=;
	h=To:Subject:From:Message-Id:Date; b=EkQWwa+0M6NeMggVXjVur8OgryKkGuvZfzD4YoEtORbkBn6x/pvyQVPpUjOxnyAkjiUr9ZLOGSjkACYsfoa2Mg9nEh6jXtWVeHv0RphVo+jY6Hh+/Zq97d7rLIRA8dx1M1JWakCT/T4i5tRP/f9glseLdZhaVnTrF4ZSHgDJwV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uutxuk01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uutxuk01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF43C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791869433;
	bh=quHjMmKNkt678prlkvuSGji8GhlcDwT6IrEh4pKfT2Q=;
	h=To:Subject:From:Date:From;
	b=uutxuk01Y7LxI9Wki4DeBNLYtzbhWHlwbK1ctLdFAM9+TGFGILmoOWumNJagwb4d+
	 7s5jju318fPn/67uGfLnG+EsBAGr0bDPrUGdB36tXM+on+hN0Jt2raIWx/u2vqIUha
	 SAXxmOoub1BZVse/K2JAZTGgfz0O8h3Ha4V/jQe5MkPKvW3VCLRjlQbdyuzMiOrPyJ
	 UvrxlFL9QkW9aft2dCtNwJIMCmPlZE/evc8Kj/I6fRfvfqu9AdUFoXf5NpCvjbdGcn
	 zBSzCy8S0UZqz7PwU4o5Hj4yigwvlFenx0kvLQd0AH3jJHRC7kowpng8rOw+72AI0p
	 fl/uDYlzfPdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90FFCC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186943370.27666.5627544263848979085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c226abb64152a8bdd6c6d459a2ccb1144a699e81d2784e8a4549c4b46537aed6
Date: Tue, 13 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791869433
