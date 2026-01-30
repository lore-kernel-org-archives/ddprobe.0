Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1604B1E505
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769756634; cv=none; b=pFlsgBGqLblraVFmg/GWHUP9q2UBBuLg/FJxJglor2swq/9xxRRRIzBFEzBhp5mkCylXiA23VOHxog5659KF8H2xTBPCd6jgqseJnrtkEwUZT1BDwReWiog1jq2TAyyY72fXiQ7KY/MA2dGwuUHqlP1G0DN+N+kBydLjddZz+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769756634; c=relaxed/simple;
	bh=zZhQztvYYo3Ud0AlyfiV4si5gclJkfg6rLMt/a73zNM=;
	h=To:Subject:From:Message-Id:Date; b=TTdQPHbMYy4a51rc9Ov1BnskbHAf+WRXZiqdQ+9kU7sGXT964XF1VAJUX2Z3i+Yvj0pZek7AFJ+xRn7kUGsBXoVNkXaMYshhg1k/On5ItdHmbeZqdtNIGFYKyggTwTK6PfLKB6JdJtYYWvdvrem6aPbeztaQ0IEp5Py1XLRIY4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+9AMul3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+9AMul3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99DC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769756633;
	bh=zZhQztvYYo3Ud0AlyfiV4si5gclJkfg6rLMt/a73zNM=;
	h=To:Subject:From:Date:From;
	b=Y+9AMul3/XqcHCcWwyy6CkbKiX3pVsvNzJbUY45CBJrsuLLrFRWM2p8tIL18SvJpc
	 jjASDW6I2okpwrGpc5GrUtXX2TTH6zw8VxWG0o8cqCtc2rrmwM2XRqQkoGC5k3wDfh
	 ouhV8x3kO4zpWXE3GpgEVU6sxrxGEGMuciAk4EbmUB2hPUqtHBKeMFP4OFv1SXo0P5
	 0adEHZKybenqO80YsdQ6ZAl5DGYnlmR6tUHxcZYsDK30Z0T2cSJOopWLAa/sIph7sx
	 o0JimGMSUZ4F0sHAmEBMem+ik6iMMEtClonqLFPYGF5gvsXWmDxBGoIhvr7fLRWyQ8
	 m5HhBcS9I3e0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91583D6B091
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975663358.29037.2942381030506511696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b10fc92070c6c2342716b6c2064c497eb6ccff2138721c5be2ef8f86da7ade
Date: Fri, 30 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769756633
