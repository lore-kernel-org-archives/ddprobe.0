Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256D472625
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759191594; cv=none; b=hYIlwFMdPFjZbepdGM0SO3901YEhYqodLNxSoq3vNDnygdf0J8udOtFwDcTZyNv1dI2D3HllWoZifEWSOZGYfo88Ve3Pwk2Q6GJvVeuozJU42/suATYeKRkFyF7p71ZEfZzZYDRb3XRq7EfJ33MhECTMwpp3KIJY+g34i4owb3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759191594; c=relaxed/simple;
	bh=+kWi3Dgu68skTpJ7zy0EtjkiKMxm7kWr1GVyWJDPd7A=;
	h=To:Subject:From:Message-Id:Date; b=elUEpg+Vde1Ig97eTfyDSN7vPBowdnYgSb5+1lsc7pW79lEbq1C4f57ru5amjTdt5dtUP6FmaZEWPYSVSFW4cX8FT3FIeeQHXWqn4vcdc+EGFmxL1IwElZwbTGu/jm2FP6gtJtjOvb8xoyM8CWslmuXeZZkiceQ0UG490MbXQVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9DmrXXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9DmrXXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7060C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759191593;
	bh=+kWi3Dgu68skTpJ7zy0EtjkiKMxm7kWr1GVyWJDPd7A=;
	h=To:Subject:From:Date:From;
	b=J9DmrXXykLjS9rH3aHGmHmshogIhSYmA7ejaiw6kd6lWdhOdMspZsREZW0NNcoPrX
	 vijyHHLjo6Ym2riGLxDXuF7n4kVdd+AJ553yHKXRNfs2S+wtY4K+3sufSHu+ARy2Cy
	 vDhpFHA3DBB46ROva+nkDMLzFZ1ol8sZfIodjEO69jExeLd1WdmZcISDt9aigvBFB3
	 0ZJJKs4hPLN0+zthWeNDWJ6Giuqi5r0QGp6+OXKaqI2tB0Pkqjd+W324ofvWrg+nzx
	 9Wo8RV7kYZgHoCk1VZSRZze8qrPiUrzNld/1KaUJ8X65h8qeqwQPfe8ro34580avIG
	 r7lUXPD1rS+bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F8CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919159359.26030.15289375884264043527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3fbde6a74a1c780f3b9443642dea245d0b9e66c4654625f2de71cbfe0a3232
Date: Tue, 30 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759191593
