Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5244B3D47B3
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785963034; cv=none; b=lAQLOaWKmR/XmcrpOUzSkgbWYn+GIktqV0ADweY1EQdRWiHgyjwckQF+SRZwJmxnJzKLmZQIWB8IRcoZXc+C5eYSjDk6E37S8axqCghvDxcpnCAioy1J22p5KjfMNRJPyoevwqIYHeN0HkMnZAaShFa+NkzONQXhBzfLqNYu61c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785963034; c=relaxed/simple;
	bh=g0m+nWJ0YxqZ7Ojivolr1zUGYUtm8ksHDPL3P101Hto=;
	h=To:Subject:From:Message-Id:Date; b=Uo3vOiZbyU8NQlHNLLKMhJ7eJpFSeLvGRXcrP+7/BLOIuviAxiGSMBtzhnBlMgPzCphyG0AsiGfGCB5SByrTwbgkQRMd3UvVirmz5q5+PUgXoQF40FW16yuMdJzqOGmVuzKtXDn/J/wFUhsE/YvyZGRkpCNpPBIjeNudrrQ0iwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqTlNqIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqTlNqIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD00BC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785963033;
	bh=g0m+nWJ0YxqZ7Ojivolr1zUGYUtm8ksHDPL3P101Hto=;
	h=To:Subject:From:Date:From;
	b=HqTlNqIBvM5lkCuN6ds7RXzbqT1nLv/tibqUkzxMu2wl0hpFBoD5hl/+XT4yGqP1j
	 0NIa8ntKuvJUcaHMpFnevGhBG8VWhWDBgSPgIrE8U2p+tJN8nZZoy34lZgcEgDy4BA
	 5qKkSXNFyAwU8BMpZGFElVMHB/xCwhd4zYeBpTosxzn2REfsphJqW9eOCocjYSfVKr
	 p7TSDljGYGpEiWObMNgKL5rtv5vbhoO588mg/gWsdOMo8QItSIaYYQtEbeZ4WM4/5E
	 HTVzBzdD/4pG02BJQPZMYJbCfJZ+LLNcfetH+TWCKygpxyXYPsq/j+tE5JlBwTHpzs
	 dF45A1J5EyqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA015C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596303368.5959.5511386424238990828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee9368d08433b0ad997fe6a83642effeea8adb9a7a1465fe8f9cb86bc9e8b1a
Date: Wed, 05 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785963033
