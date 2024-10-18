Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583B17C22B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729286154; cv=none; b=Wkef3KAzsqxDWKxNxbt/bRf8EdjNdQb6F/3u1GJxhi8jxqGJ0r8GshtFNVoQC9v8qYkGU8/GEoEpLiyfYYsl1byjboCiTQe/EoIqvbQKufxQX4CAIfGkpEjNr4HVrUIe+OLTdSgVH490uQ7GiYSfvTtSHQ7YFHv7ZNTBAMlMDrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729286154; c=relaxed/simple;
	bh=iIrG31YRyga3ZZhuEvrbbCCB9VksXRIvCsI4/oJlEYE=;
	h=To:Subject:From:Message-Id:Date; b=dECqOhZ5x5cfdo7ZFil5wXwFzZJQ2biZqw2ZO69pXr+4R+1jdQfknJRbPPFkke8wvVLnmf9SCj+barvHT8LHcHLPxf9UqiHnXzHZtN4fm5Hm5lXtuHnuYG133+Ej/9UmnwY6ahJJReOdlOopEg2450telwF942q43kyBoz+tkK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPvujF6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPvujF6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D0BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729286153;
	bh=iIrG31YRyga3ZZhuEvrbbCCB9VksXRIvCsI4/oJlEYE=;
	h=To:Subject:From:Date:From;
	b=dPvujF6M3kHwzLBme7oZGZWZFdaZtTfhrqPFGev3Z0ATR+FHgiB9G/n9utqhG/gVh
	 Eb3/C4SepweQn+Lu2te+Vb+CyU7oY66nA/OIvi4sgxwMGhdDIQQF6hA1gg1wBqCIn8
	 LjPcrS5bssAoUCwyievK+fm/xXci8LcrLkgeIjcxiog4nyxS8o3d0E2lPHQBRR/7uQ
	 ZYyrCfaycnQo57efagZ+hZkoVHQU2k5bOeESAliyKYH6RVXuvU7XAuUKOiM1X+aogr
	 eTaqxk4DuB5lTqfUisUDWri8HCPwyO588qT6vp1KjB4OWF1KZQka4O6iW+PV9qhTca
	 GL87sjkXqUdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF0DD3F29E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928615362.6465.6207799040116789444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2734351b7e47c488d931122fe634d107ca368e0b1e328cb25bd197e603402e7a
Date: Fri, 18 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729286153
