Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D041184540
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762486194; cv=none; b=mUaK3KMxKfzx3b99xJu158u1NxJc8ir1y32GS7Zsg78msz0ZTRpZZqgWGZW3PSwF9CnQXMNgN6eVXH8sIsFdcdkqS1I2ZN990pm5JRkKI/aXoWcu4A/ecAqLr2R+iD8TrRb7MsCe9IKRl92e+vTrZOeRyDZzr2I8dpBzOGf8Ph8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762486194; c=relaxed/simple;
	bh=B+/TxxnhXxZJ4XML6gbCNpqrPkTSUiQMQX6OzzOdSzs=;
	h=To:Subject:From:Message-Id:Date; b=SD6thlAR7HEukJbEhTlqs2zBMnngF63N4c2RbEodGNWnr95QM+bvTBtQ20/l7x5KA5BRfuM0ZC0V6sJN6jnQxHeRuB/azhsfIN6wrOLZC67hIX0PbY2/SzjDfuStgsNjZyyY3GhNBH6ZCHbooE6zZh/sT6Oht1QqXnISqpEsd/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieOazTM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieOazTM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0CC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762486193;
	bh=B+/TxxnhXxZJ4XML6gbCNpqrPkTSUiQMQX6OzzOdSzs=;
	h=To:Subject:From:Date:From;
	b=ieOazTM1AkLWsMI1P9rC2tsqrcr1yeecLg9FDGZK1J6OCOqXapRtHHpfE/E7/RJMA
	 MwAVr1NtOHiy50aeqK54i++gfIbjP6c0NVhcMDn7E4FpjUb/c3FhfaSCKGRm2GCIPW
	 NUV0CDk1JM9TmBoSuos6RVkbeeGzyXi2us0CkjFJa39kT1pxv5nrl/UbNMOYrsoYPz
	 R/qFh0I738VaZTV7gj9iOP/5avpvNoOj++0k0qodcndBijsp9kg1D5bYOTLge6E0tn
	 kwUzrq33Jrjl+dHDLKTOnmKgttxSjQhvYDycUrFS+ZAOSeCSHNm31UtUiQFWyUX7zy
	 XzrPeqAbmtWNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89DCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248619357.14721.6009136357626722168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcea47ba99db11fde5481bea06c7700d171cdb1d059a47d74756e5aee5bb7e6
Date: Fri, 07 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762486193
