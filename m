Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B072BA34
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777173454; cv=none; b=bPcKvdd6s+7KvikXnskIyqnHektrn1+pMWCRDmE+GSr6ldShB97G1antXmyKa62i9N5+1rChXocsC89ZM8e8vlnmT+w0+1E+yqRtYBkF4UxjrGdjJCJbGVALsFhxTLhLZLKB1be89fQw0Je0Yz3+3Dpj7S6dTafEHwHPWyVADGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777173454; c=relaxed/simple;
	bh=Ys7GfOrGMBjTwzCgRSdEv+ISrW83vBbfpxuIeP7/5jU=;
	h=To:Subject:From:Message-Id:Date; b=jymrXPVqNWJOtVn4SwKZMCekWZjOZJhE6yOw/h/QK9aL9QyZjtyrjYMQkV3jNK9g8dX8KgYw2z4nMXKh3wkusMJdDJST+vlAKCEXCyhxZQUg+bgWnH+0I782TE+MEzh1JvTetCiFOZ6GrbaHW+IbyFP7FrwjU0tys8YrgXAELBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyreBaI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyreBaI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1927C2BCB6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777173453;
	bh=Ys7GfOrGMBjTwzCgRSdEv+ISrW83vBbfpxuIeP7/5jU=;
	h=To:Subject:From:Date:From;
	b=HyreBaI2SI9A9qGhHd9jWxGh3OaxQRTYEjWqgNMRQhUCdIgoScOksjFn8m/AEAfB0
	 GE3ven4QQsKuRVGLZWVmMtuSG8QfNDit7+vx7pDd46kswppA5zKbY8Jv9pJW2D+Zwp
	 J9WwlTN3lrWZnakXFOIZ0ruKSSwmeK3BO6D6dd+tEcde/SuaaF1AZKKqzuYdmJstQ8
	 tInvKXGiqqcKpHkX2CgV/xHIIFD5NermCFKhLIGzbxsev3z8ZFaZ/xwaGwzq1T4TSa
	 FFpBLV8YBF3l5aeDtjYoYYPVB7rQbAMYXaFFUxj2CRILMBUTa3hrVGuGWpECYKkNjn
	 YvdQ5oHs8uZ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A6FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717345369.26086.4491262053910218133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a05214f8eaa5653c978029a1004f452aa81e3dce7fb8e74f44a2712c03215f
Date: Sun, 26 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777173453
