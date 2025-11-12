Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A34338F20
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762966194; cv=none; b=R78Mi+kSJjCMkxAewpwB+zvHsww244w2frd+3q6EZlfG0ePSUa91/FlQB67lDdcunVzsAQ5gMLFY0IQR8srJBRSRsJlcMKxrjZqN3sGb1lcWWlKTAbmTIQ9Pzp4w/HJrDEUTzKKxfa2z8UVRC0T7njXWszMWPmHm653IIockBOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762966194; c=relaxed/simple;
	bh=xHwnJJ8N6qLlPbBtZqSi82ZU6YMNNjJ4JoTVU/xGMfg=;
	h=To:Subject:From:Message-Id:Date; b=JkCjITnWHfaMsGk0kNpDkVvJ6vd5Ezcd3K6OCjMP9rIiKJSvFPcgTbp7OFF5QMsAIqCpzUc20ZLxPYwPQrSMXOVvFvpFHpZriEuQETOYGukV5sD1m0qZuLY5+Qm+O+vWv20nBKXzRSHJSuoFwYyBb/hvHpLL3TqYzYHwWVQCRFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXLg/fP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXLg/fP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE5C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762966193;
	bh=xHwnJJ8N6qLlPbBtZqSi82ZU6YMNNjJ4JoTVU/xGMfg=;
	h=To:Subject:From:Date:From;
	b=gXLg/fP+o5S5q2BBaEX159KRmsPNYhTLMK8Ok8D9sUKbOLKXQI95uYy0KwtuI5DgY
	 r/GcHomXUeWXKyBSDNbX4lWvr9m/fUFpvvuUoKNcIdmMjwtvGEBMILjDttNvXq+uND
	 WXPSK+FupOM14wrp2h/0lKBGKRWEJfJj5Xvf7CjJhSHjfiaPCy/HKRaalCd+p48iuh
	 RIKTlyPPVp9Qig71o5x0wvgzyNAZu8fE1fL5W0E/LdL4d02hu1StrzbLZD5MvjPnOB
	 aZ8NkMm5NOyzJoVkLXJ03lYSqDDnPTrAU6jptdjUr404kEzFyB9hjzvEI+4GpJR0rl
	 KYP0R5t36zSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91771CD13DD
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296619358.4315.116268286316216431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbd75b01c931b8d503b872b65bce7c88a4b275fe8b7191932d0f583667a0b91
Date: Wed, 12 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762966193
