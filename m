Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E162D3ED2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782635914; cv=none; b=r9FyWYlmf+GnLPeP/LXT9clT4pNVbJXBbDMpatxsJQppVB2c656KpN5VW2W9E/S8jJNQ6p9wl0/6r+lGaAT6rtro03BO1v8XqSDPk/HNh9FLv3eRvDAl+pPl1NYeqxgipC1iaVtK6TJVkv5Tf10a1LfYU3/AmJ+xDzFesq2xBHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782635914; c=relaxed/simple;
	bh=G6k3etyvIbRSUmt2szrgBJhWCd6cjUqPMVACHicE7Bk=;
	h=To:Subject:From:Message-Id:Date; b=k1DRCEbukLw+aw253N2xK1L2cSeu6ZuJH4FcBhzj1xlH+mroEuRd1/x6lgMOduLaBRIuIAxs0tUwzPO+TT20CjZ9PaxPm8Ntf7ky/qVjZBNolAo/r2mNz0TRXyLy9eMMXQQtDfkosZ6frVFTSl9ErmA7Mbe1XZJvAAXCE95vk2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGnHsaZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGnHsaZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93CFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782635913;
	bh=G6k3etyvIbRSUmt2szrgBJhWCd6cjUqPMVACHicE7Bk=;
	h=To:Subject:From:Date:From;
	b=SGnHsaZx2psDI4eZ+q8UEXLgPBqyH94/VCqEENKIfhovRclO6EKTCAzD2aYCq3XoN
	 m7tYDg1nN1axuLHeccf48OawPIhgR08naYSNF2yW29yE1Kgq7L2Yh46DbqtckjGd8b
	 vShwfAQsh7YMxdCr9nUyGqVdBRQxCLbZzcf2YOT2tKZ5mgiuJ3xwoKm4CXIAIyBVZU
	 V8kAtEqUA1EZOC6IovHRH/W/SVn36cG7BBHii67GcP/hXo1BeOrGdZILqdA+SIZ35z
	 ypBLGJXnglhnttSD9Z2OsTAxvBsYCW8WMiuHyYUpRxHmifWY6oPwinN2uLITW4F1hj
	 oHKVjNd+2fQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD841C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263591368.22546.14656391840361764820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affc3329883acf6c46f667e5cdff8ef40b4f57c590aa1673e31650e79e20c1f4
Date: Sun, 28 Jun 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782635913
