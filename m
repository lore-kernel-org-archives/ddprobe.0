Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440C8334C3D
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789316434; cv=none; b=loZkgDHZ045W7UGYY4YeMAk0elu5s8v3CzYDMcPKVCa1XAbB6TZRngIeDzn7gn7xk5T0EQhVfG7cKfYuAtDpGQlW8Rwl/Eu1Q9jKQVXpkAyeJxXaihUGvsqB1yPtMvfLx4nb9ZKCMvUMvENNEKTykEybhfgCj2/dPUqksO1DvT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789316434; c=relaxed/simple;
	bh=iNLujZcE92lqV32AyHydnEp3GtZ3T9vpU1NekHFnuqw=;
	h=To:Subject:From:Message-Id:Date; b=NTZHEsEqmrz2iPyLcUtayGUKT/LeNeOMHn2IZnnYTd1+K6z/mSgU8qZl5rsntq8+Kfn+XH63LQx01DbJa/AzkHQ73Aew4gbTdaTMRC6VcfGYVo2hDfMcM2KvYnDDmQR+L6wq+e/9i5Q0G3QODsTLmF4PAeQ0QDKAW7eWT4CKRio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTzfICA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTzfICA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A35C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789316433;
	bh=iNLujZcE92lqV32AyHydnEp3GtZ3T9vpU1NekHFnuqw=;
	h=To:Subject:From:Date:From;
	b=YTzfICA0toNuI0BYA7hEqoPKP+bkLFP1ZcAIS7LxZHqIKQndv7Nxe2dH3A3cbsNdq
	 tscTdpeFq3HtdIZudAAfqLW1DgWQ4rg2gFfJkSpmXK9gllV4kp5g7yQNf0DhwZmqqr
	 TQMgPXK6PVlMk3+KTzN2Yc3X1+N1r6TzTAFR3vZwMIDAMN0nWxDIW0ncHXrJErnnY4
	 fKS6pXMsSW+VBoPLxXFKmj8xlgGedYH9yen+bnUH/d+OtitUS9YiuUi6bJ7KKuGe3M
	 hk8EBODhaD1J0lKgjRwrUytIu5wbkpu7H3HiFATpAsoi+fOAQvs9xlcMBvmMixwhfo
	 YZVBtRDHT12iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D2C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931643368.19851.5960679618884252773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e7f8234901c28782570560d065231de2a32525acbba01b67c60dacc7e9d74f
Date: Sun, 13 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789316433
