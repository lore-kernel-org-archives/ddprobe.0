Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9B41A2396
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750993194; cv=none; b=Vmds+vQ1th8vLjr2YNBdtDQuUx1Qzb7AxPHhcdMaLK/Rhlwc9pmc8oHTwH7j7hQpNBCPHiIW+pRwanYr4O9+ylIBQ+R2coP+O3j8mVjFKa9CWPH5gDGsE8M+/6TZ//LTsWBuIlCMroNkUKfcvoh6KACUrQw2Zi7jBH/l1JIxLdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750993194; c=relaxed/simple;
	bh=JlHg0MXMOEaubzBE+bG/Azji8/cMwArV9bvV2Bf0vyA=;
	h=To:Subject:From:Message-Id:Date; b=kshD3+mVfrUcK3zuGNIKYIAENM6K6SGcECE+C8kZN+Jj2p0LRc+O6fQf5r04ahT4ymZBOSn4RrRqyTxq0ndPE9zqcW7Dk/l8L4YVOp7z+xPkRIT/uTzp3Vg1aWa/Mx9NEvoccjzKWgRlbXcbfZpm2moUCXiISSwKSbo9vToXZzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aeenv02z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aeenv02z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86CEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750993193;
	bh=JlHg0MXMOEaubzBE+bG/Azji8/cMwArV9bvV2Bf0vyA=;
	h=To:Subject:From:Date:From;
	b=Aeenv02z8dTNJhyJbaIFIM953KWnE/GlFKOfooq3O4tUs70jpRdx5r9+l71iU4xpp
	 mB1GOZuG8ZjiJhqI/MhAO39HsyJQrkqwEtgY7fsrVWBrH8a6AEhl8sN7LVsKvqGO2v
	 xkTXV4izHEPF021KzAP7z+M2WBxpkYMeFvWuwOizkUu5eOKFl5aOaCAJDPItxPQgH7
	 TTcZNl83kcMAseH2tGnwSJk9gmPHA5h9GTwPJoohG3EJcuGlaRRNU3AuRssVq7YXIx
	 HQg1t9jm+IZ6TeQ1mX7P1s1QXL7dSgOqHE7czYrEGvkZS1G1UTsTkKLV6bryAyuIUc
	 jKw0SdDJtFhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F40C7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099319361.29821.1858839500955310983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f78ec70e362c951fb031a4254179cc22fbcb7ab693000147cc63fdc7807d798
Date: Fri, 27 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750993193
