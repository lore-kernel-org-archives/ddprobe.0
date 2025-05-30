Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7FF2B9B9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748566194; cv=none; b=ZyjlVTj6SFsIS3vfVyHReVwcOxpeJ6Zxx65mYs9UIDkC5ARrIJuvQV2hAdPXihOgoWAG0K620SD/x0dniVPNmU8+IlcaY9+sd00GKmF6RrGlAsfceMuksdo0P3geWniaUJZuz8s236Zojef1kB3O29NWP+ewiJiAU9O4iB+AlKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748566194; c=relaxed/simple;
	bh=L7ZteccoMRG9eQHBKTu6IV8BBrULO2Qwc21Gx2GXDyI=;
	h=To:Subject:From:Message-Id:Date; b=cmMLUa+LGDDr04QW0gBQD77HkLsEsdFZzXtNOw9ZrfGpPgTogFqji7sdB7z9Z0QFvbcdz3aQkbFmfQFtTF2hmAOi0E3FnyiaKDFV8nWfSGuh8VaRE45kF2UwR8BkaJvXmAyeKT569mVb24E8jtXFm6IBcOo6ai3aOXoin7op5LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFPX0dED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFPX0dED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9C0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748566193;
	bh=L7ZteccoMRG9eQHBKTu6IV8BBrULO2Qwc21Gx2GXDyI=;
	h=To:Subject:From:Date:From;
	b=OFPX0dEDTiQAbGBfNv5D+48K8YNrE+YUtGNIMmgsZF10IdeetaNqwF+nFQ84Dh1Kk
	 SQ64N75dItV+A97NVZaPXoVxq593/EEbifamXx7eyX6/ST5nmJE/ohaLHONaWUbpzC
	 VUbqlYqrXu6AUU/5evr5P7Y3oLp1hoK8VNmBe1SWu/Yi93pnIPGeOtSHK/hauVoo9R
	 bGy8aFyvgKpGVFYrN4UGhF1Bu17vO7o7oksOe6Aace1qAnh9bPzCE1RRX09SHxA8nZ
	 dBn09NqZb2D5jJlm0+HXxACS5yUeNLjiOc6L7qqM46ajYGw6u6IXEdd4Mz9CNypvui
	 Opvjjl4PBRw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D2C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856619363.20759.3590215767486399586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77240604881469f0514cd86602f2979533fc57b2ca5cefa34dfa65d3ea666ae0
Date: Fri, 30 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748566193
