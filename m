Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F3F3A8F7
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777864054; cv=none; b=uzu1kvG0ohHwze5vXT3SIyvsqwrYGqrukp830hloM2TVKUVSf4BhbCKhgOqdshfqzUc5Z6n0EF1q0S8Tq+Us7wWpDV/NThBXWDzZW+Rs2z4XaH/UOmSgBb9rF9qZ6nEH2ywjwJiNi6rLqEVZpGLeeDAJiNnySDiHxvf8aErfBI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777864054; c=relaxed/simple;
	bh=Ec76ujy1KzGYxsV5yfY6ivAq07W3gd7XXhaJqGsW1N4=;
	h=To:Subject:From:Message-Id:Date; b=Z2YtNzvQsT+FaJGoycWeA3Sbzkq+fL3wJpXrnjHXEwlGUZJPnA0MfUEf6BhNcmHnMASlhHlKAAL61bPjDUOiKkkd/fY55JyYJAxcZsuTjZTXjCyzxj4SYiGocsltBdyK1y5DvMjerUPNAruTYEuRaH/tqzGY2bbJs7UsjB1551M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I39tT7Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I39tT7Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1370C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777864053;
	bh=Ec76ujy1KzGYxsV5yfY6ivAq07W3gd7XXhaJqGsW1N4=;
	h=To:Subject:From:Date:From;
	b=I39tT7Jbj+r0edpxIb6mZTajCrsXCwjwqLQFTqV2SbQhr4MbhylGVWbR3l60MLhr2
	 Tz/WKGX0t8OJB05sP2WIxuxXtGs3kSIVBJliAcTfen3CWUTJLcJO7KrwH8nBO1rA3W
	 q55kNotj35fDRGWtBSPJ7D/u6w1vzrGTzsEPGQGS5KWUNo+30zXzXC/LRMtIeonPv7
	 I2psEinbb4ZJogyeuwE63lRcst8mgRRV+dU2hJ3MAqziFh9GU9D1GiAsONluoPL73j
	 JcxlSljC+GUHWHFmzzbBlGf0WG9LMWpBokUPtcZV6VhK6tC0YD9lMOnVMgIidgf711
	 8nNu8BdGooBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB02FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786405368.5292.12463950171673867738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a2121d5e318aeba7f53f0e3e5d3cc1d8f640ac1eed01a2333bfb4fa7ebd6b4
Date: Mon, 04 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777864053
