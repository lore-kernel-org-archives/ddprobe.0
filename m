Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4216A770E2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738653954; cv=none; b=vCwPJa8oijk/FHbEluer1OQ0YKZJkGjh8q4Zy73BFFZA8outkMgxCrKkg0h00YunKMzzmIry3t9CrdXZH1nR3JS3mYQmEMztppD9f/q9Ys3pBtL2USBIOhbBLURFpaamoJtK0LbxVQZQJc3kw70KWgtJ3RlJu2m9SC9LFicihak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738653954; c=relaxed/simple;
	bh=5F0x0dp9vaU5G1HI8MEWwbv1ErR/6RbCeSNWkTA1Z+Y=;
	h=To:Subject:From:Message-Id:Date; b=Lj1m2AUDf2bY0184K4pyqbnMXyxYVdL+28y9iNj7MwQdSIEMwuZEe+gXjWAoZV83emH+697CgAOtR3Bg9DjVfcUsYa1i/OWCC0qjCrO3jI8l4EcZugeG9msfZdXY4jugCBdsNEXnG+vGjMG5/93W+9pEh0uoNJhUv6VAgeCpm3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C88t6hfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C88t6hfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4B2C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738653953;
	bh=5F0x0dp9vaU5G1HI8MEWwbv1ErR/6RbCeSNWkTA1Z+Y=;
	h=To:Subject:From:Date:From;
	b=C88t6hfFs84C3Ftna6PquflgARDuOUwSZk/DLuzk4KMaWH51F9sdeCF3NuM8ARCK5
	 H1n004UojGq4N5wWfrggIQsxuDRmq4P9H8d1lmcaP9FUGd/mC1g9jUm+yhOUPSIiZr
	 Pbw2TKUa3RASHwLJbU0R/+sRYrPZKBx9jJKdG8d0HlQMNONCaUWHpfKVn7svvWE5Ok
	 0gcDwNINyL3idC11FJ5GX+IXwB8qvQe7BiMrHQRplQT2c+E5yE5pp8oVYPSsJ/YsJQ
	 CjyVAMZWwKPPkLCb51hx9sG1MsP0oJAq0R5db/iBfm3mRr8kCEYEtXw+xIY48ZEMPm
	 TCjcW8El3NCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC27C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865395360.20700.52114435156123357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba27875f2ad610c4a21e43554f8bd243413aa6850cb3c4d231323ed4f9422d3
Date: Tue, 04 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738653953
