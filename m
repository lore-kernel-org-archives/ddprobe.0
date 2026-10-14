Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6B73A5E87
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791946834; cv=none; b=FyCLjRqNMLbNd6XHLwB79nIDrUSg5GvSnYBMjyFH9KCwe4+qH3f+T0PhbAyzVsXPzS2l1P2kw5PSmWnn/D2+zH3Jfy983GqoJ9kAPZyVqtHPz4f1l7W1/tcBY9xqEYX5hvzPBbe+kxSOpC8LVfc7n9CSRgySZWU8p+ZBKDSgbm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791946834; c=relaxed/simple;
	bh=1yehtXRB3Yl9Oh5N6Dksox72u739ZtpwjmWxOhVqrqE=;
	h=To:Subject:From:Message-Id:Date; b=N9NPxknbY1bQloB1uTc4bNx4wMDMb4NBZ+dgAATa8Mye907H7fdT6llonfIvEpAuAWYNbVE3car9w9aFrgc7QxL5Wc0yMM2YRxe8zW2Rx1Yh09ugzgZfcdmxTH36conCRA6Y+69l49kP6BGIENaW1HRgsCFnjaBiSIktyYhp3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GznyelrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GznyelrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1C4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791946833;
	bh=1yehtXRB3Yl9Oh5N6Dksox72u739ZtpwjmWxOhVqrqE=;
	h=To:Subject:From:Date:From;
	b=GznyelrEemLTLZ6bVCp1pWz3IEwY/vIzVM+lvJr9E3RYuXJZPtg7FOuCt1mOZvC4r
	 p/wqIg6RPQeiHM77u+cDQ4V2qhEUegYfI6Qou4233TokrxGGug0NuOdKhD7t6HdJpC
	 74qOwyCHlTDOYQK6DE9GhMrhgO3HgMJAow6+gq9iFgtN5sJHot9r/XrFCqgkkWz6Jb
	 6Buab+P0c58W9tVpk7pAs+1a28m9oDNJ5yhtTNiRgfRXTdoxYRwxUxxURLf6g21Qv3
	 RWz756sNmpM/e7wqPKs8pN+ULDLM7O+5+PSX3JmtgXcqgfg3aLd1bs53hMdbvTtd0o
	 fBwrbg26kcLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D51CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194683370.16097.14705001509136327374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27800e36b57eedfd92095295bbb67aa5875d13853c04b7200f760b26e7e9419
Date: Wed, 14 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791946833
