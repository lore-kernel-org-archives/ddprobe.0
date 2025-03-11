Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A93263F23
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741718335; cv=none; b=McFiTm4GThQQkiKHsG/U2VtCwXHOgZjEmdTUNlVCl9pgpQWTsE1IBzln614iPuSaKrpEEuEvNk/rtEg9BxmEoO6qMIlUpniMxxR2LrIFTClQeOp2UbcYTG7JUxJh1f7CKuXk6RQqpvGen7ai4YlkV8NcaT7+ZO7W2rwvB7hg88U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741718335; c=relaxed/simple;
	bh=4Y5Jj/V7DRItDhyaPZjLvbuJlJHQcU6QkObLSWHQkCw=;
	h=To:Subject:From:Message-Id:Date; b=n66SWYGQjdUpsPQ/LP9Yzvkjmv2aGseVH9f9C+tpz/tD5YwODRTbjtICRMJEtb5dDOXXDIEHBZZrRYEYytTr3/YQJ3nfhUS6g7qhRtn8XF9lLQQVAEc7mCuaTCCWkaKmOTMmXZYXC9WAkzoZUGd2W5pTiNO2+IeQ2oOxhb2qSN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnU8Xj2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnU8Xj2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8753C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741718333;
	bh=4Y5Jj/V7DRItDhyaPZjLvbuJlJHQcU6QkObLSWHQkCw=;
	h=To:Subject:From:Date:From;
	b=VnU8Xj2jke1zcDv1XmM2Sl2MAi4pXukpmP+CLKr5yWDx4ktnPPow2FCxOyNJYgNg+
	 WXvsUiEoPsP3EHl86HDnEdCO2c9U/31f91yFfJxv/IPipxHlWLnmKc+zH7n9LLxubq
	 BQR+2BuF/pY6AwPin0dGFxrcHRmbiJBN0WgrSR2wz/F/XmDUS9e+cypPNS2WRKXEur
	 lNzcuY7l73VspEMzEja0BOKBwL6SALspBPD/rhAO4VyutcQBBvPRGe+hsqcrOe4yL8
	 7AekFeJAB+Qa+/hPvr8aATG/9LlHEbfTXOXVOtUzb1AuEInLcm/oLlJKn9QGTrkBtJ
	 UKfPn5QDiGsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B97DC28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171833362.20073.8745288322424550220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc2407f0ec1111d3759c43d1b471cec26b9edda57192b82b902ed7e49fede5d
Date: Tue, 11 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741718333
