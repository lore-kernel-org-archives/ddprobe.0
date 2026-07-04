Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA7B1D130E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783136314; cv=none; b=NW+iPrfMtieJwhALQTXbEnGu6O8DCgRDHSXwAcKVLkQ+HKrVd0y/4hTjEzBLPWvaqSUPI1D73IzCduY+Qjm9EmHzf5nsD4MIim9j1lz4bYlAucEl7wybzOJo+GT7cdgmKlPJPmzkWJMCUBkMu9LJOXS5D02qGvSGfnF91+eAQL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783136314; c=relaxed/simple;
	bh=f409T+uzwlIKOm5hrbKyKOtd1Bhfky66SNe9IbOAqNE=;
	h=To:Subject:From:Message-Id:Date; b=ochM9L+suptQbHCoh6AmB8Dh2a0vuFP9wbzcZvEYMuhtmEWyRK9TUw4xQvrSRYJFRC1/m+yebyO+qJtoPjbHWWMRnSrm7vBqyvFK0eDcFDWGQBWtmkZU/5H0rCFsJjY3t1xKjzMpTcdJrUrvUUf8XvYeCpgZkmme6ID9cD2k3mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYK80zCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYK80zCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F4FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783136313;
	bh=f409T+uzwlIKOm5hrbKyKOtd1Bhfky66SNe9IbOAqNE=;
	h=To:Subject:From:Date:From;
	b=BYK80zCY7WmuJ6KyHL5Sp8iBnA8/0LLRYIbEACv+LGAGFGj+VDzn7fSQRKA23GkVW
	 7m8uhEEemDl4F/1XlNQk/tuQB1IhEc+tXWXbKevdl3iE31wLm895ljPqdhAyLauJw/
	 kYp8dvTa0oClw+lh3pO+dBTfAsiPaIpwbzoPxfPg1B7cp9GqfBdcT/dXhTEnPQCOi2
	 XYpguUEO/zjjA1HNzOtK9Y5S4ty6dAQfJtK6UmL4w6XDx41eJBfdsx0tYDrFgYePPM
	 Cbo4TYHXVZZQMgCNB4PtAcOK5hk74xw0QUA5xQNthlCntgkjFMfl/js0s9cgrhyecP
	 q1/LiRP9egz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D9C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313631368.2204.4155771902536705065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da57d995e13a283ec0dc77ff77e1f820c2fd1bd8c57e8c6ecb4d1c24492500b
Date: Sat, 04 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783136313
