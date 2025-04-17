Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC84223D2BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744894793; cv=none; b=MeJxKCSbvExJDOr3G8mpz51/Ovqap8LHjAN+VoaYPRpoF5hVieFyPnNY+A3NBf2UCiijZE4QXRx4Yh8W/7rFqkUVMJjKppcMzb518/4gsJ8TYeiNAKPKDCWXBbKtAGY6b6Wbm8sTExavJUQAgcjVQrbqQITsqyt06Y/4IWtM24s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744894793; c=relaxed/simple;
	bh=hvtLJdRKfb0JH9+czh9d1PosXjEx957XMCSz7lu+IQM=;
	h=To:Subject:From:Message-Id:Date; b=ONsTDIEWm19xEWiE0UIisN6PSfZ2y5057GvY2n/k9Rdu5a434+UZK3x8J0x8R9XV+tg0PehOR0z0pBo9bKxgt4bTxQUinWehicAEe0ZXNg+9YrS81xIIqdeVZXrjJR+UTkObn00RWxQxjvCEKeQzxUVH2hr2ixvKbCm0GWKI5ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfQ95apn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfQ95apn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B125EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744894793;
	bh=hvtLJdRKfb0JH9+czh9d1PosXjEx957XMCSz7lu+IQM=;
	h=To:Subject:From:Date:From;
	b=FfQ95apnurtr7WmTHYSEZfCY1ZYh/Naa/5T8NNp3B/GSOypCjPqmqGy3wmjNsG4zC
	 /Qc+3hPcOxK4iLM7+4wh9ciZR6Jb6n0gEAi2TogHoZJlhf4WtbgVQQ4qLVLFieaodX
	 rVBlZVDSDpm8FPZRKWKhAFP76kWUUgzqlvdDyH1FGWLRFFiSmh6GfD8MbCsV9F6KE0
	 pE2AW4z9fzXXOgM81vidqy/bucbarC59bn1VrvhatGHl8qu8CgQlkBYMOmheZxZdNd
	 tQXy5ri4sERh0uKU9zK9AloLrMHcpMtCP0BDF4iWV+qWJxw2TGkzw3++cqmj+XKkJ9
	 Af7KUV4jWkD0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10E4C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489479363.24817.10153710873695693697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ecb99dd4fc756784ffa6b2e1517da164a1982225934dadd2f8d49e2494bf9d
Date: Thu, 17 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744894793
