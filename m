Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D51D2C86D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768611234; cv=none; b=faW6+oA5b0ynGa5YGX2IMDt+LpuiU+1aktY086kWxsR4zeD/6XKbsLk1NTjvERA0b0tN1COU82i/0ZrHSHzGqRiyG6Nm6FPjgwmes/aIzON/cvjA61X1g+dRuKr5iCgm9fritpKeEXeA372c20TKkZwzGXqdILaXSbfKVAMDsU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768611234; c=relaxed/simple;
	bh=P5m3m7DN9cI97kB0m46UYrQNVp0DmGr6Zi+rttCLjrw=;
	h=To:Subject:From:Message-Id:Date; b=kxEuL1k/fgzTYegaxmmsojRwSQSHEe1Y5zuXz+1t6mHbi86yuR9xILY5xEGvPJDmHC4qo7Gkk9z71l76+mMdiLx1DGBaI7QnrtK/PdgRla/yOCddmjEDkiaQ/GjEhUAnoanIVaaKA3ec2mPUBWO35mnkv+PWZsrDXqKnK0KFdJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEVPx1Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEVPx1Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0278C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768611233;
	bh=P5m3m7DN9cI97kB0m46UYrQNVp0DmGr6Zi+rttCLjrw=;
	h=To:Subject:From:Date:From;
	b=XEVPx1Xc8POUxUJw0wWIrKXhwoAV2L0YxHKEC6uRJerxAtgNewnl2Gsd7nBTZN3MZ
	 t2s2OnWJh/QE5EM1It+vgS6brNgYqMEcZJ7AJcCFtTO6uDlDvBHKr4KEd+xSUlcImt
	 PYnRomnGAu5KQBPVdFxZzZWNXgci1fX+hXvIVq6qM1VJ+9wxxLY7vdq3+sAe99fiYh
	 SOweQVJxGh1bRwr6QfKUxyF9NsRPpMR+uY+SXzplxB4cqs5Cd692sMVz4eqL1RVuVH
	 a8eBstZg0gUMXkKsvPdTKi8zQbertBqr8kD84A9CghlsxW9uI8EMqb7k68CLafbaNZ
	 uHZS8S7JZpRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91885C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861123358.15623.8680731081173130290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499aa0d3d930c4b76f40d24ec5f08777b7acc490731700fa1e70457d09d0a1c0
Date: Sat, 17 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768611233
