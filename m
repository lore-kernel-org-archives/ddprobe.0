Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB63E1CE5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791109234; cv=none; b=l1jOWnIGzF5bfgle1IKg4RObNjIqePlS0WE8sz0+ZqD1EBCDIfeW7HU8j0SfMvbHQNH6fUC/UQYhK0WRg902K3fd3QSiwPSUvbJXSeIgqkF82vqu6Bjdg31c9mBDvCDFOb9O/EFeJ7NJbR9p60oOU9xcLYTTu7BgN3nWTTtvdWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791109234; c=relaxed/simple;
	bh=rPUR3drGKAB3SUapXYAi9w7AJY6MyvK6/ye+ezL6+u0=;
	h=To:Subject:From:Message-Id:Date; b=ntI1ouCYXz911h03k18bLp21zlRwmgBDXPw0QKsVuBt90EqmH5AqVJM/vysJZ/eT2W5FLhyX3Vzdm8HNgnyZuQOWwHCGX/J2zfMKF5Wn1/YDbyMXf3+B0Gh6ypetAJrMzE/eL4q81tHR7NjQWxiuEzFSv1KP14UWclf3MxD5YtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPkJQYjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPkJQYjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFE0C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791109233;
	bh=rPUR3drGKAB3SUapXYAi9w7AJY6MyvK6/ye+ezL6+u0=;
	h=To:Subject:From:Date:From;
	b=hPkJQYjgnysFOUkCyoGObEkO0PlGDHCNP4XBwBSMWu4R8vV6xfLAmGklUKQVSkCtc
	 SwRGzONaGobz4KXhFsVTGrEX+FgUEPeF6CMIMH7S8/K6PpuJ2+tdb4kJTL8+7u0KEI
	 idwHJCevgbWsCkVdwHWWCZOn+6AVuTu9rLfY9ZkmlleroM6+tiEsXDeyBtZ5p/B0d/
	 HCTcaPC/Unjv6pkI/W28pSqMJlsbueAeyDhCczmvfTtJUPgONmewFXAfjed/+u4Xcl
	 KdDfR3ueDjo4O8tQKhzk9FdPrBSKi1f2g0NyFvtHyf1CikEfebaZXLBIwLmDLfWYz6
	 +aNJcNArlmkTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9808CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110923368.22586.18055532360970669838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e95b7171a3436e7421b49736d23c76c274c6359548364bfcd6cc67bc48b4d2c
Date: Sun, 04 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791109233
