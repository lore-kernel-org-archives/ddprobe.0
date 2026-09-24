Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDAD2E5429
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790277034; cv=none; b=KVUhwrT/qxjPSnGx5/kqt5Rl30hC/tQn4dVwKnosXTnBe60v5B3nvSclCbLfWlbpM2FJY8pk/sXHuB+/r3D+3ayZ5zucTW1ykULW1iWDAdHWRMiY5R4njRXZe95jTfise+ebYsqj9kbs/Y3pSvmTRDHvomkrdYR9cdgxUqyOnbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790277034; c=relaxed/simple;
	bh=V2MTl4VZC3HswYl0AGBlUFsBTZCfh4RmBN1Ny9fDurs=;
	h=To:Subject:From:Message-Id:Date; b=crEsKGUcvnaJbgDj3ZSa29lQUSBaACa0n7rGcOn75N4679gZMQbktzndGiiy2uip3n52hhde4ofKXayrmd0gvr/mbyn1Sn9rKZLe7ZcbubQMT+pHcrVEkkdvSsm5JfeAzsTw8Q6GuPEiVZgoYaJI8k7Loay3F7fAHV3EhRVijQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mijcGImF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mijcGImF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790277033;
	bh=V2MTl4VZC3HswYl0AGBlUFsBTZCfh4RmBN1Ny9fDurs=;
	h=To:Subject:From:Date:From;
	b=mijcGImF963OTxINzaPWiyAvrFhd3ZUqdK26pSHioqfwLAww+PSDIqXAbTB/CptJd
	 WxCORBRiQ9Em0xiSSkK6wd64CvbLOe/2CGhLqxqk8jSrqn51Q/mANwboAm8r0LRrH0
	 ure1BZj2OmxcJyD4yQKjQ0mubGaZW3uZWYjfOLQV9SP6vf1smwNYXk1LKphc0laUds
	 nVhWoG64y8ym1V02euOoIFVf45khYiTiZzQ4GgubbnUUrNGKccOtIIhrR9HnHJTZbi
	 pVJ6xnIQrkvUzrcl9A3zxIYjuz1wCDT81kTYR9BTxnL+xUM0gRjC6n0tH5qw93DJR6
	 JsaKKcy6nKtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34F1C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027703372.18001.2277916251980486712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5926282909c4283e622a0a4743d26dc3c3478b7ee0863bfa9dd9fbb4a5b94f34
Date: Thu, 24 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790277033
