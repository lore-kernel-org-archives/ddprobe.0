Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693CB238C36
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789233034; cv=none; b=YIu4vrW67+d76EG2Wqgqwbd/J+VZnQpH1XgJ1Vw6CykCrlsKWcbNe3azYbhCKo/6UvmJ6Bm1uIQPU4NWIEN9hBSXf6Rl0OMFg4C+SjCOpGam1T2Y+lIIVY1NeYNCtHapvzPjb5Zbez7MHC4Egid83bND9rUuwZLXP3Q2tD/S7+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789233034; c=relaxed/simple;
	bh=RZ4ekQsYriTfgGTvwcczAAY1FDK7iFduL3GPDG1co5A=;
	h=To:Subject:From:Message-Id:Date; b=JEIvX4COY5u1lF5JrTW8hx600RLjrj/WNxuQynHatIPC4plfX9uGPu2kKo/SgVyYSw+dp4rkjiOXd6nztkWaN80n0PbBPp8Nztyhz50FggB1H5ThaftuhFkC8etegwNvJjGoua0hg++Ho8gUYFohkG6GhgdWxSsa+SDrFYqhPHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSU0jR0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSU0jR0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA6FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789233034;
	bh=RZ4ekQsYriTfgGTvwcczAAY1FDK7iFduL3GPDG1co5A=;
	h=To:Subject:From:Date:From;
	b=cSU0jR0hP0nU1Nb06B0k+/OJ4ARvbo5nTGvsgl49M0B3VN4x3cDpDeI4Xq1QgPHjT
	 RBIZlf+kkGEwbC3H40yxIqU07s/YkdJuxsdj6Cs5xzOawYdyXbqk58SZv945eFbKop
	 4brpJf0MOQoJmWN4oaRe2KwSZE0oCQIZJAtGFkSfXYDj560lDGEfkzXntrdCxWC1S8
	 DdNBCowgi6RgVVD+4mmLh3rIVl6h2arcl2bdR2U9N9gT7e11wgfFQLF2WxzK2dEO/U
	 hyTZeLb96qqVtvUwJSDOGaEoUh07+ZT4a5oxOWkD5IQODr2ZPG2xGRct2ocL2Yujxa
	 zHbZ+uuGY2vKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F1C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923303368.21881.6517967173184671956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e546ced4dc5b50265f2a4b5371a203b260879bd920aff41ec533d0a9d51b5946
Date: Sat, 12 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789233033
