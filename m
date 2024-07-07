Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4182D2BD1E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720370783; cv=none; b=oyK7x7WTDYoawRqmr/A+OGh1c5FWTiUwPN4UDwU5eqxQsNLlnnEdZEZlL5d6beAKDlbSz84D8k/k0gFlcLxFyGSrSw6Us1c7BqCfMViqE7LVEIu5lI4WQWAWxJTFx89K4rKr+sPa9DTtwz6OXFsHwZ6bBy9d5c3Zqpdcq+1wx/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720370783; c=relaxed/simple;
	bh=mmSkqcwh1FC1so+UXLEaCw6L+Quzx1bdqz0feHRpDPc=;
	h=To:Subject:From:Message-Id:Date; b=j3rj6nwBR1QWcYqW7VHzdiNSqHJJPmywBjIEqBvTY+W/3iWX5cMlsgXc8vqj+4qzziPHaHtQ7xlD179OVbkg6aAGxnY/LH8cqProJ+K0bBatg6pevgM8fFfBlmQRwNr8f8xrbFJIXr9o8GDukJeKrNNm2wuM6aQs//WwumgpZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6QKTZiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6QKTZiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE036C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720370782;
	bh=mmSkqcwh1FC1so+UXLEaCw6L+Quzx1bdqz0feHRpDPc=;
	h=To:Subject:From:Date:From;
	b=o6QKTZiFtknYsQ/612sSmoYkqbA5Fv+nN0vUOVz1hbOPQj7ocnZontm3aymbow2A5
	 /tTUla3Sc1UvOjsTCN8n7vn01l45iPtvRChWEw9VLb5xYQJilLV+7lPPhIggEPVGVf
	 ItdtzfYzmjODIfaoUbOO8jde1g02BxuAitVkv9u5vhiTH70VkG01nzdsqehXM29YzR
	 c5QjELLgzHiDgI2VEew1WcjLhW4jCVETM+Apoc3SWt2TX/H6Ojqut6oPyAe9vjOM5x
	 fmhahohdyI020JCE4eFhztLi2p1mbXdbMTF7fAWZkCdqgMplW9++J/JJMli4bZojEY
	 EX7ZX+e6jQWRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA4EC3814E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037078277.31638.1726086969579382014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0142e1c20b014ea1a1a46a47aab0ca3eb1e2ec837e1c929e1455bc498fd3ddf5
Date: Sun, 07 Jul 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720370782
