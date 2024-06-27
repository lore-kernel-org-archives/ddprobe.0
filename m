Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668EC19DFBF
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719522863; cv=none; b=UCu3qqhtbhPYga0Y2NjnKut0aPw8R7jiT6GWFiXP4Z0h31BUo9oR9ijeCrsMC0OpP8mA2e7AlzMABFnW9yEKnp7TCMQuAhwGE/T2Z627zOv3+LmmHrWkwU6jZkZEH6uR2pshHisvf3Dzvf5wWTuIix4RoD7tD6JK+PRteFpUIhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719522863; c=relaxed/simple;
	bh=z9+yJrwQBf6FBtXmCNtnWfWZNt8ZWq/poBp0T+cyqrE=;
	h=To:Subject:From:Message-Id:Date; b=ERWHB+ulfk5kCdfud7ECHhNX8qkB6rh31oMMgEWprOeD4P/Kb/Hz+qyXeV1et6H0zBDNVTneauYXrVY4vz40eQN0J6PgoFmvICFrqKtCf30rc+QdMAQdsi9UqhNohR/otIaCLwIompC1VHRgyKGeH7JCkZ+pQzs7O1YYlRGlLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyZLn5xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyZLn5xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F87C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719522862;
	bh=z9+yJrwQBf6FBtXmCNtnWfWZNt8ZWq/poBp0T+cyqrE=;
	h=To:Subject:From:Date:From;
	b=KyZLn5xi156+s+rTE0RduD3fm1rQYi4TDmy82G11DtXeoiDTeQ1mvWQ/DZvEXW9ri
	 HTKkrR3VFMGfqq8/yrBZl7bTsMom1UKWzeFtZWic9+50JSoaXgkAQ75kN6AvgMOw6B
	 RRqRHxwWnuPhG9LaYyKuwmrTkZlBdMd0UzY+6XgOf1u41iPPN4VSBEbN871go+g4B/
	 Wm8fQuEKDyH8154S+13Kwm6gSw2BlP2HM/4kDCzWljf9OvGStrB2dy6CSL33UabdJL
	 a20XyvWK2c3Rj7UJBrFA4bVx0hiM+vejv5H33jo6Mj02QodKdzNGbR75uuBelWCv0L
	 2gawZ1+0stLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7868C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952286280.1402.14050403347580436004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea72a8bee756887049d94f060c5cc623de750703b4c74633a17452803426a54
Date: Thu, 27 Jun 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719522862
