Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43923380
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737695154; cv=none; b=O6ii+1D16gpY8Y3gkHbzFqHfD6pTMN0u/ujL/M9pT9/5PVcvTh4F6KYuiXNpNr+mnQb7VMHgX9ApN5SihIlgxGXXUOtNz07fsxCHFMt3WFEhSPIF86UEYBUCLmHJM3s0G3ibvi+O8yGQaysUB5VRdKxVHRmLY8Zpe15ZnTCuQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737695154; c=relaxed/simple;
	bh=o8tbCEDLguixUZSAT64Kr2o7rtc1iGWUdfHRYEhA7ww=;
	h=To:Subject:From:Message-Id:Date; b=L58dLZuo2TD5U7XnO9OoU3k6eHgnN0cEDA/OblpbDegYo4eVoU6NujdBx0ph2TqJBzyciztAQ4SPL8OHxESEua43utKSYYgLjufuSryvkG/6jbKI/yvJyA0JcIsMBtyXG+MNisbQLC9V0Xj6IVUM3Rt5YuGLE6S3Dn5A0A1gkYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7l8Qdcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7l8Qdcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38FEC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737695153;
	bh=o8tbCEDLguixUZSAT64Kr2o7rtc1iGWUdfHRYEhA7ww=;
	h=To:Subject:From:Date:From;
	b=K7l8Qdcu8k/gK7cUPCOoJ73YzN1j77qSFhVi4dkvANhYQ3cSzOytT/Y0Ndf7sZkB4
	 i7E8Qj3V0/2n6JetO8V7M9k30jx7tDrpJyGD6FNEV6tYp9OJFVitnHzGzcuuXMPuaR
	 vq/hboTytK1aPyLSLP10qDYRCwnH2MmidOoY1NvJK3Gqle6wLzrO7syE64utROWV4O
	 OsJLsxw7YGOfCfiYyD6hHrA/glf7ZaA8DIRkQMn4TkqgXgDO+vdcbdcwNTEJg0yKaz
	 57c+/v0uuzvHshkUz+wXBn/Wlwo6llo8bj7C2pcTFt6efPZ8/wZGC1o6V+rbEy1uf0
	 4raiImAFlMkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A185C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769515361.10848.15116364240119069643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e187d887bb26fcaf5978d8857dec72f6b0499a88be4e1ff4caf373560e833b
Date: Fri, 24 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737695153
