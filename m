Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117112F363B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774008894; cv=none; b=Plr2qAXoj6A/KjRBVsElTsMwIAl9tE8BorkAc4WGR2n+JrCietcKK6Eq8OhgC9YV8/Gk9mKL4KlTsz4En/utHxsh+/MWj5NI1t8MBi9bdwdTOzCMTmOqXCouadYv/bhqWtX1KbW2KFgHa2AcZblYjfJMYmsPWA+bvDBj2LbbNzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774008894; c=relaxed/simple;
	bh=5QiIraDxmKG4x4fRBHaDC+P1l4RjkTcW7gqCX91b++8=;
	h=To:Subject:From:Message-Id:Date; b=Xjoh5P3rDdZRZNre3TdAnuzQarfILGrC6tVAhaGwb1O4BuqV1NV2/TQxDsC6aTWH+spl8obcSiu9TDgD3BI4vICtmcedYVSytqcIz4YZPTv1BYD9ENl/AFJnwP0CFwT/LXg6qLYMkMxvkEH4cbHE9ABBsYmVLToR8ftsO26psUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqRztUYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqRztUYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F55C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774008893;
	bh=5QiIraDxmKG4x4fRBHaDC+P1l4RjkTcW7gqCX91b++8=;
	h=To:Subject:From:Date:From;
	b=gqRztUYmKTerXgBXm5503xa9PvpsbQNLgw17ESSlf/NqfX3dgfF+qSe5poDnsfzzE
	 03pS2tc6ABVpPrzAiYre52SPUBS25mpMDWL9bfUoOJyRGR5BIQpwTwWAgCw9VEdsxV
	 pi6oVcsAEEvl+b0fwGeQN/JSgmHva434524wDybSxHg0WoWXpg1RiDeC0z8oTK+HJb
	 96zUAd4kMkPfLG5T3jU7oCacoCUHNRtCAY8nD8ufq1giIcGblatuqwI/vwRlTf6RQL
	 5gsNNQM9vgzMpdqrPPVa2L+Zj3v470aoU4ir90YSJ1A5j4JEh3kdIMvyqV4a2ZXycq
	 alGwmApPQkzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074E108B912
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400889358.13229.4248103216916761888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28156e78b71be2558623b5b64437342c1fbc49edccca08827cb5314412055749
Date: Fri, 20 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774008893
