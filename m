Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CD73A16A0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779264034; cv=none; b=AlGdz+4REGPRS+qo4voYmL/iNyAHvs/+5WmQ35mSGb+IiPiSnL8LK7Cw/ajEi9bAdKGQN6cu66UR2yfJOtW1nWqwW4Garmq6LGJY98CC/pmcQXoSLYvJxYIDtNFB7gavnIbhTz3Ry8wh/IFRG/Mf8gWxr9IRtiznwdTgGyrtdbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779264034; c=relaxed/simple;
	bh=WpVyMfiTtUwYX74wdEBQ8798USoF/gjUcxTdDW6RTls=;
	h=To:Subject:From:Message-Id:Date; b=gYaMw9Qqtj1mLRLN6DaC6nsGT0udDw/uYbXAnCeE0cpZxmiuC5U50var35WXWvuA/QHoow5XJyA52eTuAG/mlj6jARRXuFUts8r1NifiS70D6tYzoZjqtiEX3BEOeAuVkbjn//xT7cJ3w5tZ37aS2n9kZI7UsvpIiNvqM2q8PEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KppLvc2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KppLvc2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8C1C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779264033;
	bh=WpVyMfiTtUwYX74wdEBQ8798USoF/gjUcxTdDW6RTls=;
	h=To:Subject:From:Date:From;
	b=KppLvc2I0ddIVd6O3ArXc0ynD/xq6MCP9U6Aqd3t15mPr09q7SBxqcZW2kgDX312H
	 76vdrUz79oYWw63ve+hFdX2HPFNPoQOL40drr+LJ3P2R4SDm0mkRN4so5BNNZxfx9s
	 EXL2jOstVmUgUXs+iup1UV3c0TmOzZ2qZ8J0PuGJE171kCHF+KsMC/wtbl8/KYdN9r
	 DYShzvV6oqt6xaHsq1DJA05p0svRb/9JzFlA0ORlWiAiR1DRj9y6HvwOWsiKmNBzAO
	 8lSyApopM8mGntPuChksW3jj/rMBZa7yM8OQa2XNRmMjujNKS3x8UADfPMQIx8ufAF
	 h8WDPQ3JPfeEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF623CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926403370.2900.3384284917313783865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec3f1e57c6411dc9fc7307ccca21885196f398b471ed11bf399ac05b449c066
Date: Wed, 20 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779264033
