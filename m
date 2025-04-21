Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCAF179BD
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745198394; cv=none; b=bVxYoFryxbu5tyHLJt/SY3sM4dd9x188yDhkdOoNje60usdEI1ayiZffUEUqRNcpkDvjwK8OK/2hsP8alluIbL7Xcubnu7bM1w4FUjo7RY0OR3uwsJ/HtGDOEyiWFQaS++U6VIipj/ldHrLUl7bWKRSi1mBJgkryY042JYFy26U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745198394; c=relaxed/simple;
	bh=bwKKPxMKZhCz3z4yj1H1b+oRQWKrouJ7JXPF998GXxs=;
	h=To:Subject:From:Message-Id:Date; b=d03g5c6eTUoUMrKUCRHgl1FhLvjDHvl9TjfBP/hAwxAnvspQbwrWZaurkz+LjnVa273cxKOF7QjCGMW3Z+YORez4UqGc3WeKylcacKDD3WXEDUjz7deKJnPWHJLy/IhG34aLhtyQMm2AlMDRgzYsRLoKBGKgK+f6NF13VGSl+8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhzpWfDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhzpWfDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA940C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745198393;
	bh=bwKKPxMKZhCz3z4yj1H1b+oRQWKrouJ7JXPF998GXxs=;
	h=To:Subject:From:Date:From;
	b=GhzpWfDp4h171CuCsabky8fbRNPeJmWeqv3PSY12dVIdj7W6x8QJHdf7zq+ida4MT
	 QdGK0rbpZqwMo39amrLrW176sgQzDZuEd72LSHLCEU/O20GHTj3/TbhbOHvU8my0nx
	 yPGWLeVlF8fo4kDM9O5xgF4IGSc3bOjLy8zpegg5ZQPAMgkmEh4PgXvF8oFlIgzEZp
	 fd5Nqrvh5qFW//P7d36KIiTEKK8nIubDeQdxw8kgRAjU+mlmzlGypc7hAt3MjnGjCR
	 GqgtgDrHZOeg9XsAJskIBV1h1x2+FQ8SDkD29K/cwWI5MjwAzVpBaE0EQlW+zTSGAU
	 utqLnqXmt4wdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A5FC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519839362.21773.2341313822517422720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389861421ccbdac3fb9394cfed801e3f7374d4deedd6e195518ed44b7f6ab465
Date: Mon, 21 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745198393
