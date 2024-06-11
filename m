Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B60376E9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718129903; cv=none; b=nAvsiyZlp8KjR6wSdVHYxZRIhPoZWpFYB2su+EObE4C6LNVvBL3K3cR34L+bpSEAfi7aULkhY6/pTCvW222SZWSyK+aAk0u/vwlGgXk+lg19coFqkeG11nN6N8X3TrzP1xgMzbUQbOrZc4odlV1UBJ130umfNQ6hGO3Z/gfwh2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718129903; c=relaxed/simple;
	bh=bvYKlrNgqYeXso3TdRUN+CTtF82pI8DHGqhkwRoU2tA=;
	h=To:Subject:From:Message-Id:Date; b=Fx7gGvb3GqVo4LhwhMaUFuutPF5AakMH/FlpUeWAlkRQ6ceLBi57OH1k9BZfz0T81iZwGSQMNAiyQ3ru4DV5/z59wvptQS2Qxw7ZK4/LgCglp4CQghaOi6JwR4dKYt8FysJ6HArYEZtdxXdWKCS0CJN0WfipkU5ugEEl5nlEiXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvw2+Un4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvw2+Un4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D092AC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718129902;
	bh=bvYKlrNgqYeXso3TdRUN+CTtF82pI8DHGqhkwRoU2tA=;
	h=To:Subject:From:Date:From;
	b=Qvw2+Un4m5nw+eaeOxH+BzyruUNsuFHSZpZn7puyt/VhVdKVP8JcAQaHkTwqOgw3N
	 Kve+7PSfUogy9r66n/jAN1ovAliSAEVyYvXjr/ZoP3HgXL2+GuZge40px8slN4uX57
	 JH17pkw+6EmScy63jJcOnj+fgsnMu4v57sbudak0RuDZHic8KQvNSeTkz80o3Q9Hov
	 jf8KU4AmcHXeymfUP9C6fMQgp+e93sRUwAWGHnZ/s2pX/q0UoH89WIWuHUsZ+OPGnB
	 B80SxGlTrgWpTobh4+11ZiFojM/EForBmyLqaSsbId2sQXzJg4TwCYKWEPopd3jtgu
	 FCBM8rH+DedVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0598C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812990278.21205.9890282211681290464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c095fe56bcd1e798680b2aa01ece6486f93369de093df59c01013206621c51d
Date: Tue, 11 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718129902
