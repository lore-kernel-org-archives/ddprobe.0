Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0139718859B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769835834; cv=none; b=sdEI6iCv/PFeGkNXhLW3LLvOd7uoQ93r4yIlsfBY7HKBJcff1+dwARq1uoJRXspTOLgYisrxJ70Ulppn3xqZS1R1LQmSGfFXCk7g7/UhiBS5Dl9qNp+trTswaG3ToaF5VceRkNXozH2QW8FOjRCLAdB3L7pB+I2bctdrlHZe2GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769835834; c=relaxed/simple;
	bh=AIVmvnN501QCozaKaLRnj6J4UJ4fWQKMZi3XJSwq3jo=;
	h=To:Subject:From:Message-Id:Date; b=eWTe3bEJ50BKFtVBpcV6lk2y63JmYxAw/ZYdM+WzhbrQr3kLTUr+4HpNbuuhG2nWclgJPryEUqNyn0WeU5tWrfDAo9oNmW+qc4WV1+BZtOGfhoxq7PRe1MrCWjYaTPfZuaFjBdFd9Qd8LI5NDjjzMwyOBAjsmIXWeo56pigwWSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i13byP2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i13byP2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59D5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769835833;
	bh=AIVmvnN501QCozaKaLRnj6J4UJ4fWQKMZi3XJSwq3jo=;
	h=To:Subject:From:Date:From;
	b=i13byP2W7Z9V5GIV5tQTl9VgTkRqAPkhJNbX1X7KBhRUUOEG4P4CfQqusnCcwG5/k
	 gXYzfpYNp75WAWA6EdUpNEnGFNUo/jR9jWJFsKZHkIbS35ZkIHgjEc3J6Foxa2mTVc
	 1+eE6DeNvVv4Dd18uE3k7BSurpyOGVXbm0Cfy59N2Oaee/7Qw8k50iVHDrkDBch0HY
	 95B/tDdGw3E5orh/pzulhiqzPuxVORtXM0uMosRf4bhoO3Q/QIFyacarPbMsxVoqbU
	 5pkvudS3Tzzs5IF7CD3rz1wVWU4MNrzqGeJ39l11xGFh7d04ycK5HKlqVOq26ZIjep
	 Hd2uFAeniW0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A8D73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983583357.22597.8402178262274771667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2eb72e5d02ca962e1c6e098e3d3229025eb3729f4233e3d5d39e10bbc290fc
Date: Sat, 31 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769835833
