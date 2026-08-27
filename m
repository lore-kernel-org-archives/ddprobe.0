Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6938847AF5F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787841034; cv=none; b=O2nvFrrf2o9sAPFv7IeliTESM/JWCeFBpJ9RfRE6WxzqiRXsOqKhKRGomSJcC8NxQ/iwcIBCwDDlXbU3iGYTKE/qCASaXe2qqG/MPLM6Pxwg0OQbXngeGQDQSs/ubL3FwZxLd6g4iaSSuYtH/vYRx0CyT5I1MvE1XjmIxsHz7rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787841034; c=relaxed/simple;
	bh=wGOX6NtBtBx1OJNINnPc4qNyaRqGb4+3AqEHvjGhQOc=;
	h=To:Subject:From:Message-Id:Date; b=tAm4HUgHoU8IG0OaDpTFMJ9l3KOmEshKqilXYZzm2L2TRAkTU9u1/FpAclYn7Jc0ByA6GVdh2+bsXSBHgAUXNJ6iPyCrPnXIuR9Q7pbs8/H/ulc1vt3692+ZRc5MVxQ/9LrKFrkVOAvo5zSZlmWUX2f48Jmj8E7utT1Sj3iXUsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6HR4xgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6HR4xgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEA9C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787841033;
	bh=wGOX6NtBtBx1OJNINnPc4qNyaRqGb4+3AqEHvjGhQOc=;
	h=To:Subject:From:Date:From;
	b=F6HR4xgzgMWHZVcU/MxFWQHNahutImNyb8K4a4Nn5SWUKVgV+jUtW8Sspf65t1aaB
	 +Of52WLYGTWLFSSuypfN7WogfvkbUIyKwe7WxKX2PcaVHiMGQZsGM5teU40L/mseuR
	 gQT9PL01Di//s0JGPocQV5wICoSVYSc+ohVYXbyQgxH/mWdO8kI/rhX6ZvPePLK7CP
	 FiRD0p6TJZllisEzGoK8gHoBMCWUDzUSs6BXobqqq8dv+oOTerjRpGnfYL1Y45IxrQ
	 HAAMwfbsxBebtBLem7MTwC/aWFBFTf5eWrDardjvTvATDEYI6tKGVmUkCoig++hcYT
	 exXhz4ecrDDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA903C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784103368.19641.6375036552294179374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c4bd35039d95b0ca76142b9e2a3a0d5a6dab170772e7f9e435ff7e25783fe3
Date: Thu, 27 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787841033
