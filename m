Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEA32F22
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752515394; cv=none; b=fT9WAJO4lpFSD8jMts27bvxx0PrIaMjA3Jx9ZWVpbYRfWytbbXc8va4KraQAO6gFGyKjO6EQouAJ1KIXvsM1RrKlvryaT4HYebczG0vOC9arcuQd4YRP3TdKjhkTxODBWE0RgTYZH04NM853bNfOcgusnQxXrI2RVd4Kjo+WDUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752515394; c=relaxed/simple;
	bh=RjY+aiyTRPAVmvhmAtqUOWc06oj7UabXb+IZmXLlSto=;
	h=To:Subject:From:Message-Id:Date; b=NB2fhqDN8xcPZrsUbgbzVb1ATi18cKb/RlgifhO7vl4bohDVhy8Ipnrrcp8LI+paa1dt9yPe358ZoDfLxOiT0PRkJZv+qxHAZApzxGliaWyXk9LDbxduH6+POPUlqe7IYBFKR5h+6yaSGMX2rfJ9okSxPmli28EunkFsYnFOSD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9XD9Dt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9XD9Dt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE7CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752515393;
	bh=RjY+aiyTRPAVmvhmAtqUOWc06oj7UabXb+IZmXLlSto=;
	h=To:Subject:From:Date:From;
	b=n9XD9Dt9yHMXhg9C0YRhE+Qu70TiJvzRBMxvPRadg11XVoSQTpTzuAiR1NMW8b66O
	 rKHb5Xbo6oio/GMIO0TSp2EqyWKhuC/87nu7iEmcCSc0K1lfZhRHtoDHk9N0Nfidn9
	 pB6CB62kgh0GpC+LMrmd00iKArX/J58+x6MsEikHmJRFvBom7Ii8uEkgHrg7OJ3uC1
	 lQP5zQHNsWmTqCfahLj/M39D5uZVFNGzPXnlD8TquFhq89mGSNY94g7gppFtHZzpCU
	 Gl9rxwwhJ3Gt8CFVIBw4Ok4E6Ee0cjUjnIY+QBflnM8dbSGzdoXvkvpZUi8Kc3JhuM
	 Z110Zt3TYZHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DED3C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251539361.30450.9126911450365938157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1907b77b9e1274ff9df66055343f20dc5c9ac7462e523477a0649880b9bac187
Date: Mon, 14 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752515393
