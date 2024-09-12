Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB361A265D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726143354; cv=none; b=rC0MzAA9YcD+TjVqZxCuCcn7iFGmrtaE2zQQDMYNimqRV4zaJFKtbvFV2VzIePIIeq4Wjl2lWp7Q69E0ZQmbZebifqCn6rtFwYa2U/MKaEqPyYrzkytKv+T0NuXvdnKfq/hp/vpHSo8B4qU27rMw34fu1oj4VldT8c75BepJuFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726143354; c=relaxed/simple;
	bh=4WmG0vjbdHJtM5ThwxZIYrG3Fu1tJT8G3P9WHOAe5hU=;
	h=To:Subject:From:Message-Id:Date; b=Rap/APG39iW1H7rRmsCTQc2KGhwaFHgVuyQHk0LgesDcWSUWuGibmPUoK7tyY7joIFBCnZSYPP1ecxPvvMlXjzcqxBkL9q6kGBlWaZLUtXC8pSfoJ7pGOcIXQYXg59DzFFmWsKDVKqFHtGLj5YmNMKMl1njQ8duC1FALv3XaQis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9NWIF/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9NWIF/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2549C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726143353;
	bh=4WmG0vjbdHJtM5ThwxZIYrG3Fu1tJT8G3P9WHOAe5hU=;
	h=To:Subject:From:Date:From;
	b=D9NWIF/80QoHIJv45USYqyUb2AvgFa2ne8gt5jYRscjLpKPufYFfHnppqsFJuGO33
	 24IuZQ7S1B6h2+t+Z8PGYrbSLLK8A/xqE0BgWqb+WhWOXAcZ6c0b0hLeqCKuQ8YhAf
	 SSH0heFa3jGjSsRfq2QiIYShK09Q+GNf/KzGlzMaCKg5ylmbyh5PcEs68Sg9zYmL6+
	 cTsboQfXisumfnfHYWD4s430G8IWeFddCTJeIzH26lja/J2H00BhhFq5TJ3sNKXnaV
	 45dtBRxsh22ynQv/LNEwN4umagqCOwChmBkimW1kMIxSM9QCODdg8d4zM9qC+cy2zC
	 EaT2CRiN+hl6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7ECEEB59D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614335362.9691.2700035545244526044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7001802cd16cec1c31760b4b4a0303470a50b229ebe5427bb553944d5ae6a065
Date: Thu, 12 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726143353
