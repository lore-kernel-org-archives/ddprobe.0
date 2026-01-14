Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A862ED860
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768416834; cv=none; b=hj5PwwK7WhLNBZZS6hTkhLJw0JzcvDbHcuNRTVZcpxZ7Ius7pZEFZCFaPnCxCcnvofw4jhAxWw20A994UOZKQIwABLpcQaEPwQKgN2j1B21lcQMFexHFaXhgMjz03xioElgY4gzN3Jga4DZ1Zu4NXB+8CRF7wVzPy3higgkwgBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768416834; c=relaxed/simple;
	bh=3iN0/R/5DZ3VDCrTgU3PAOewOONVHVJBT+keOGeaChA=;
	h=To:Subject:From:Message-Id:Date; b=QlkEW949mPpizuqqUOas55QvadA259EZIt9cX0czAU022AgzJ2PRoLrWhu/n9yPSNCaP9Wiffn6KluDyOYEKsFkVeb+aark4LxUvNMTcWPcLHqY4dmlEevM/I5nHPxhazMuA8mPmrMj9yY+jxPvFcOX6RdWLakCZgY5wpe8Afd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtMuQ9I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtMuQ9I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA26CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768416833;
	bh=3iN0/R/5DZ3VDCrTgU3PAOewOONVHVJBT+keOGeaChA=;
	h=To:Subject:From:Date:From;
	b=rtMuQ9I6hliIjJxR0ReUbvok3cFq1XWD3aQ41Ugf1tszxImIxkTpQQZdHEyGQ1ph8
	 D5SQ6XcEM0PjUv1s9yzC9jvbksA8Ul6JfxYHDk2cN37l/BVeZ9+Hn0O6G2+krGImKL
	 w54/WINTWn7gyUzRy13w1hpjOabdSwMTszMI05VGIsMiNIGHRR+wobjWFev9Hy+DVs
	 XA3W78VaGjmxKfWv4nzBcXgQbiUbA5uGPTcVuRtEhLibxzRyaIlWxcMGZfGkwgXEDb
	 rV1DXW8wpqGZmePiUPEibRMPABATDKK3ZNb/qZGYTCgku7DfzgR0B3n50fWXe90qyb
	 M3W1ojetRU+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC1D39007
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841683359.17316.5100948396827361310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6abc0725ad8ebb4a3d53758cd6b55d9ecd096bc9a2783fd9f9e26ff1f2d937
Date: Wed, 14 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768416833
