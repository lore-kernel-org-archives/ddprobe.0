Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D024AC148
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757569193; cv=none; b=L2NUlbVOAcUXP+ZVQr/nsAQf5rV6ZMjorvUZMOyA4Zcs572wNI+ML7yQzDMBHVR0aX6aZDW1TBFbpdO4DwU0LhyKjVj4u5C8dzPzbSSasSDqA3oDTq8zAZ0eZatInXanHUeji7TSARmyjRDnbRQWO6oHFRNkEthp0oWPldyNAoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757569193; c=relaxed/simple;
	bh=EeSdoxZWFRP8dpPrjhcQ1c4xS4hFQYwiNtzdgGYdolw=;
	h=To:Subject:From:Message-Id:Date; b=MKPXWC1tFHabXFD9AOyQOL3hYxbCaVsjX7RaWwnLDyfbyFnq43OTJq3ZZw5xDENBQeSyMXGLfh+jA8kA0AHO3XMR4iXT0UaXnXdNDQ6CSZmkaSQ72a/07wLyEw8WL3t1zQlJHf4KsGa54wrd6SPnhqq2gUmycwxLrBc4qylDd6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9b1svR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9b1svR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3887C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757569193;
	bh=EeSdoxZWFRP8dpPrjhcQ1c4xS4hFQYwiNtzdgGYdolw=;
	h=To:Subject:From:Date:From;
	b=g9b1svR2RXUr5IYEye9xPlH33qp9Vbl2ICpJb/TLiMsYCOy0GiqvXi5M7Q9kbkf3w
	 L8bweneQE6j4P8K9J+eOAfEHFU1lhcRKs/2oZtpAu3aoLjzK94Ztip0oHSA2Usf5o4
	 NS17HDZuXeKCIJd//ntK8xzDgchNIqH7DMvnf9TFwmfzmMVLbRNsgmq4TAjrQ6ew2+
	 pHKpNas/ntgxR36gFaj5+cX/pztYX3LByQJf872aHx8BDweLyHzm9bwWhUh9fGzXWf
	 nkUt7fHA+VETJ2W4gTjLN6BmKWn/jVd4w6W0hnV6hPelM4X7UelczunwvSa8r/fboV
	 aKLEJDRiegLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F4CAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756919357.17828.2954385184217391452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626a1c8a380af996bb44776a2c90d194ce4e0676ae6389e8f7e5ef5cd08ac2a2
Date: Thu, 11 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757569193
