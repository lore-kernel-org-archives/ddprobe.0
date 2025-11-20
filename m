Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D5436D4E7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763664114; cv=none; b=XcQ2N0QOxavSMivncFWLR6lGUt5vVpeMviWc3gwjxnyEFjVQXpOhocInmYb++Jbfwcm8yBTjzYNWZfRg8dGl5aLv9plT+iR1NRz/rqN7EzaMNOE1v8aVDQqyOS5R8Nd+sp4GpTp3QR2OO4EeSS+mXY8ULp8TSDuQrDKR6Kn65zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763664114; c=relaxed/simple;
	bh=MvV/rgj05muvmqlgqnA57MYzVQo9274wIybRCAMY8p8=;
	h=To:Subject:From:Message-Id:Date; b=fxtrdT9bA0noFVLDOs/xiDMvfp8Zt/alGp6MjcwG02iOnQvXZA60ZHI4BwTrMjodbHCvVpi6x9ot2kyhr/LfOzp/oo5Zz+ebx3WKzpVYXwRBTLytUUMxBzEEndJaT2RBTH1r31/oanQeTc3VOBJnpvNpPYqru+pCBK6EFjwfoo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S13YRj8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S13YRj8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A548EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763664113;
	bh=MvV/rgj05muvmqlgqnA57MYzVQo9274wIybRCAMY8p8=;
	h=To:Subject:From:Date:From;
	b=S13YRj8ZCpxbOQGBUkXhW//P/oG1OirlGOoMvUO1sqiHxO2cy/cZ9mk2QLumn1D10
	 CvkZ8+cf4J8ymszQmtZ1jqxnpJd0nvDOr0uY4I8wqI2/ZB629LFbGxBldWQlpmLwXZ
	 SP+Xs+qUrlbTpkTt/hwmOkpYxrIiLgaVhXa38utwUzmcD6AhwRhPbXdltFQ+xwMpRt
	 zEqY4A+faC4tj34BP5SufrdcbQyIPgUYqxh2+3R110DjF5yebXLtMG+ynRolNktd0u
	 S5BKiYE314dcIedCFgvUIrVJNTIT2Q0ehJNvacx/qeP8nnNEl0bloNLrp/i7Q0jahY
	 sXgdCEuHKKnFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358CCF9C7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366411359.26967.6018890905272126989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29bac2500be8c1f1eb583fcdc3a181f3a41931ad27bba3b29bc810bcd19fb03
Date: Thu, 20 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763664113
