Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBF31BBBFC
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781979994; cv=none; b=jikddLTjAjOTg+RE0sNECtxHVzrWp7N3GFm2BUXC3GtoOE2gicDxyD1foDLE1JeAjP7LJKwJqEbxiOr7sA1s5KVzYbqNoH8v2NufdrbpIhZaX4m0/ePA4Ka+lStE0//UlOP5yLa0PYD8OqnjSlqto95W7BI1ksD2oAQGNg273Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781979994; c=relaxed/simple;
	bh=Yvk76iNVbq5VCpb+O9OMAz2usT5xFwgbIaAHXzcOloA=;
	h=To:Subject:From:Message-Id:Date; b=j4ObcafJGGY6pVPd5IEoAa+E5a2ARQ7ahK+FoABfdB0fkh+dz4AkA+osFbH5B55ZUifTEQA/4AQBRPBEqyPp3p5P96fTIE4Wb6t/nxYb0gJYyn6gFFxRvBj5VXbV3+fB8ltPHIAR3R6sKzC1Y+AQF1AtEF4PzgWbkLtF3MnoxIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg1GCfqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg1GCfqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2C3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781979993;
	bh=Yvk76iNVbq5VCpb+O9OMAz2usT5xFwgbIaAHXzcOloA=;
	h=To:Subject:From:Date:From;
	b=eg1GCfqnOssE/A8UJQeNm4ImD1M01h1dzNZDVaNGxIJMyaAGeiRcGKkk5MsNQ22A7
	 Lwpa4v2k9/FnknMdLT8y21195rI2TdNqm8l4KWVCfvgbZaTTgA07m25a4BoBaXH3jH
	 oMZE/7sj/a1i0oNCLbPo6IQvENCaJ+FXfXEqytpXhf0EmiVhC/xEDAJMgd7QI6AfBB
	 IYVny2BVDw7lYFg1jOTqupCnERKr4Cg79cXtF1f7qEVxWqbjMivFQGmBXitoc0Iy+z
	 G2d4vRc6RzR+H+V06S335Fg1vpIGXv6iktRTOpxMB+WsTOEzjVA9uTNEzAqDCKIGQC
	 ZBboh/Mq/6X6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00A4CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197999369.25141.6587711970336577889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2e7a355a537b6be7964f685f0a07e9da0be4fa7a88be377db78ed080b5f2a4
Date: Sat, 20 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781979993
