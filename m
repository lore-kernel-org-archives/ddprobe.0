Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456CC1D95A3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787089234; cv=none; b=bulYVd6WINl0v07SEJEyVecqpeSx38hHdoimJ/DG0IcZCt8lX3zjf7K+rt5JAeTQKVYLVYaviU0dUFPhQtzjRyAYeXeJ90hUE98r2WOAKFZzvznh8fAG/SLsb5368X2Qw9bbeY7p0hcFcZ3Uhs538mDxEJYTCv3q2nxfjTxQnKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787089234; c=relaxed/simple;
	bh=AlC4M4eK7DMCw5BtZMx0M01Od4u+H0nnpAA62VcY1+E=;
	h=To:Subject:From:Message-Id:Date; b=I2ylp9O6SSUqSzEe1NlVhDBFUCW/MP+tYrnX7p7l6eWJ7GxqTwOfDYh1I6W7jA/nomGpRs/AY8hilaV2MUbnRArTz47tkIA9vKsYc/h8w4rnisLF/kcsDgM7P1Y5/r/xGKaQmU1BEQnTlx0b3ub3ryBZzS3gxPh+saNQzbpog+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soShx3L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soShx3L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BF4C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787089233;
	bh=AlC4M4eK7DMCw5BtZMx0M01Od4u+H0nnpAA62VcY1+E=;
	h=To:Subject:From:Date:From;
	b=soShx3L90bhDv9oDMD/wGbIjBUjQWHFfmhaUF7KK1fGxASOojl8az/T8d4QkGoBfr
	 WbcHgC+ZFp6UZAUGV/rKI8dPCijb6G2d297pX5vHsMOp4VmMNHvAiJSsCAzII0sOYC
	 RzmCxKZ9dO11p1irS2axnhTLNaqHmIBbd6ws+it2AOmAU6bgv/o0q36d8ufi0qK0Od
	 3cENuYP7mKo1uyiqrTfqfW7FNBwVGSrTzuzz25l1pE1jF6xAJ5N4JmtpT+rghVaHUu
	 8Cuc2v8lQQsp5orLE+acYLOyfPhChkkA6gxsuPo1cYxPskvLZy+GMInSQUBb/LrDp/
	 riwA6fWgfPTww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08FBC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708923368.32641.16744651017945107949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b82e095f21c58217e13e7167481816211e7d8e9e43b873d7bb308baa8b00341
Date: Tue, 18 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787089233
