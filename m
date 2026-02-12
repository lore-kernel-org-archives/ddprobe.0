Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100832D1936
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770902094; cv=none; b=FCxVaWLqa8VVP1znUarlyjaHuKDDexDv5Qa5MXJf1DJDfWerqaabacLdcnz1hOQAJtvHQlxu1N3yeTU3rjmeQtvTIYc+VHu2C4Qy8zqXS1rqBrBjDCOUOhKxcggoW+2EmNBUguakrTZ9QJu/n+f55JVeYJ3HKqPQV2eQFze8Zag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770902094; c=relaxed/simple;
	bh=7zAi4ca8uz7o83lT79YwQyGin2SrucnJ8Lgx9ij4IWQ=;
	h=To:Subject:From:Message-Id:Date; b=lB5ob0K+pq682H8GvWYhwv400mQmd0ws2aWMNeelW22jurtIqFLcVkB3Ir1MIXMsxBRZJMO5eJKsjTsM+3abre06tJO2pwGdYHMOHNhqqTsTQge8lFfmBVPRaQaCsTXuMWpGP6AX02gVCiUOvZhCLQMkUyZVJRNqlA1aKwlJVHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+CFtUfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+CFtUfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FDAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770902093;
	bh=7zAi4ca8uz7o83lT79YwQyGin2SrucnJ8Lgx9ij4IWQ=;
	h=To:Subject:From:Date:From;
	b=k+CFtUfeA/3EjGsfA8O/g4F8V5RWNYZBkHsZ5Ie6Qf9mHwPUVCDMxY6b7R+Sv3bun
	 HamzDwB0Qd/tV8dikgnNQUx9BXtxHG14yGr5GwP55FEKEBMufmpQJHn/7Wr/bz9UTM
	 gvlAAL9YngjCUOVbvRXDQaUuf15CeVcxmd13s9YOTfjr89/31Hd9vG9SNm3ciRDA/Y
	 eDVnxXpUVhZgEKALPE7JbgNnPfhG+oiNhejwOKm99Cy6f2wRLI7Ieq2hI2WOOgio8g
	 cswvwcHboPZH8mo/b7FHBUUuc1mbAnpiqFfMMo4W+pvHwgO/mMBwx8O3PvsPEUd+57
	 XdMTS7Lg/3OKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B49EE3683
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090209360.32167.3963066453024492950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a0de7e19d5a1708b6ae449ab300438b2c1146e4065fab250326ccc984f7bfa
Date: Thu, 12 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770902093
