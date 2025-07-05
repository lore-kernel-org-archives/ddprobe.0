Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9FB1A5B84
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751690994; cv=none; b=awrfjeOs1lwQ8SL0t2Wk0a2HhCe9P9URLDQ4wbylxn71mCJ3JU19k8c52VRKR5EqQ/eCoJxkZweKLOR6PAHwFCwetBaOF2CvXaAiIXAWQr3v8KiR5M+qMh4Rj9Uu7XKklGb3gJ/gFlcd6skBpUehCGo7ZLXk6TKUbjLKpGfKKrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751690994; c=relaxed/simple;
	bh=/q8WguNlxCjp1ASRzMhXipTvUUaYZSA2HD5am+okNNM=;
	h=To:Subject:From:Message-Id:Date; b=d3smqJVbSbfsVtrCHeUzc03AuJWXMNrYVnvC08wMXfZ5aYH5hgWXjoAT2YqehNL3hmijgXZ7Zm4tfoVOxH3GGHqdAijuxRQzxQQjbNH18xhSCT1nRpEoJ3CpkNXRYWEtsbtxZ1XpV1+vVi8b6c9TGbfxoZEGEeP0bfD5xTE5SnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnhESXvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnhESXvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751690993;
	bh=/q8WguNlxCjp1ASRzMhXipTvUUaYZSA2HD5am+okNNM=;
	h=To:Subject:From:Date:From;
	b=YnhESXvChlfpCZKDLhKFO3wWKrmsblOK8qB/Q96ufMSLbMhnas6rj8AndWpFNZvvY
	 g0x/514AysK+JIgDaVkAMTKagdiLckXW+wy7YpvdZKDaS+FgjjFkZcvoWzZWUdfDnY
	 sQuiN3UHA85SqKSSDAq8091f/CSduIaBmVvptETNE4rtyxqGMZeYPqEThlwxHu/d94
	 HE3BnL2AAH5bFifYGYmMJpzk3RWoT36LXDt6aeeBUbxjDOisPbxhrQU6fqKN8ESh6E
	 5Wg9BEpovszO9UO8zVlUAx4DZZNOXXO7os/3IJHXjthWsIJPRaa0bWHHginLUAggud
	 8RlJI6QD2CzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5FC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169099357.9957.1530256852377584781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db5310f54f836eda091a288da05ffa37ffed53b575a6b53a19b3a19db97fa80
Date: Sat, 05 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751690993
