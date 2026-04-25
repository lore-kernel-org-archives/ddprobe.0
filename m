Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D40D11CAF
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777079254; cv=none; b=cstVIW7Qke33gr7R/bS1aHld/ykl3YgWDA2CWQSzLvE615f7nD6PhwzjZ3Dt+OUH5rX17wGEcrJAjRACytf/9tuXto636cBDHcuq3/v1goIxODz6lpRtDLXjlWpGlqYyw30FCPnNodjZxb6lOk8XFoI9K+ktz3/j9TvdkZwbltw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777079254; c=relaxed/simple;
	bh=z1DKVGh84hPlSCLUinkU54ZPi+xx68Kq5M2QLssjKZ0=;
	h=To:Subject:From:Message-Id:Date; b=hkZGr2vivgkbdPo3UlffO/ccVxb4UTW9AC5EdLMsnBpR/2Cy5ZhjK2WIq6QmA+8vZzSQNmtisG982QBZpcl0k4s4qzKa4AD9aOSFNEafmAoStZSd4n5leEf0JWy1OeiZGWMsqAd/pirT8x9bJ5t2uTtPEJWnJKawPHXfmJ3vqgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMz1a7ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMz1a7ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B646BC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777079253;
	bh=z1DKVGh84hPlSCLUinkU54ZPi+xx68Kq5M2QLssjKZ0=;
	h=To:Subject:From:Date:From;
	b=oMz1a7ZYSXBwXvD691Crx3cFaISXaAXuzu+SVs/A+G73+xEX86J3jGscNgkyIC/x4
	 GypNu8KPdoM7G2FgPC5uwJm1qDJNgbNUWYvvv0dumtoaVgSEhE/Wwp67ZCzcrqcmSo
	 G0Ts/dBtO+TefeIEw+NVxXvodNWjllQvzrXq9ynDPBSqrBQpFSJh6cP38mYiQIsYFw
	 nyk7dS5+D14n6+Dz/JlBzJUpelSoPUi2sKUDW8fICLLk78t/jxVmCehYJForICWwcG
	 p0R+ZoPMISxKPzQ1e3TlQO1qH0iWbCKse16h0S7hfqmYk6g9feX005MHGAK1O0adh/
	 8sKBq3QBNGetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2CDFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707925368.20009.2998617440320000138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e964ec65f88d6b63e1fac49f3d4c546fff01aa1a1c2c00b0ad9c0d5d4f671c07
Date: Sat, 25 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777079253
