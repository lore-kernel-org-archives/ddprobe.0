Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496EC42FCBE
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788183034; cv=none; b=tPoUbvGV+vpz84LfiSSHb9WUw1pbBLgGLfm0bDBPBs3nW057xLNtHen6Bi8Qa8hXf2D0Kmy1acycRZK/sHNlA59tSeSfzefGi8SHs+iTVPSVyQwTg6GyhN5wKH4nnNkM3A69WwEHDU3yV8/NSgU7ZNGPFzzqJlXpRjz+HYRHBbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788183034; c=relaxed/simple;
	bh=0xRLR1F7QDFe4s0rkdFx5rUvRSIyxSYYHqxqTRDFwRY=;
	h=To:Subject:From:Message-Id:Date; b=BHsUto3iuLvJOG9O2tRIwvk0k6nTl69pN2BjR3cg0k9hk0IhaOJZ60lxXqfSIS/TfQUnw78d0h0O9hUUgm0kJPOoJlGXD4QlG544PWE7mexAgXKGhn2Mt0kUu+VGwVyU29l8ouedGcMlqQkTDvW+7Oa4EXxzIsQYYhVpSo6KZpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcxtjX2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcxtjX2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A6C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788183033;
	bh=0xRLR1F7QDFe4s0rkdFx5rUvRSIyxSYYHqxqTRDFwRY=;
	h=To:Subject:From:Date:From;
	b=BcxtjX2ypr8zdcwDEcivmSq00j2iQnx9aCrncUzblF/ahwnRcG/861jRA3Wax8ouq
	 2dSSpnxfvECUtwtTiL8sk7Cx92RbQq78k+jMFycOaOcq8rKjhLbVPBpdo6nBqrt9FF
	 sAWcc0t25jmVFftTxfWuShm+KYRmEUfmNAMyJAi+xqU5kY0/A3o0DBBMZzKWZyb2Ne
	 e1ZCKi9Iv55DMX8m8mvX0SQzaJfNzC/MMFLAOgquEI1bkL6BkL1A+7WUziKL5rMtSU
	 0M0vFcDP/s3fEJXyvVMQNsZmIl0yClok+kk7jcIfy7pyjIFGNYYGusnORPNuZx4K8G
	 m+RC2w2VTFX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A09C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818303368.26013.6871899243189388059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58466d082f7c4f1f3abc3cf13f67dbb7530b128656000582d5efa23e5daf582
Date: Mon, 31 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788183033
