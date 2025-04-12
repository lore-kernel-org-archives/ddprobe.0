Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D4B17D2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744435194; cv=none; b=pJu6FW1liAW6Lb2+Gim2cVd06Tt6yQPp5N9/P5aoWWDmZ98Kt3vOyRVS/+8pN7wARA6oZK6gYC+9/InnK6lO67wGc5G1ThBSH5AzwKJWMKX8+8vc/QOAr9tuVo30djuD5HhFf4CWE55O6Wc/GgeUWx88CH1jeIr1/xSW1Lcg+TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744435194; c=relaxed/simple;
	bh=DsNZe0/TfsOj4wdL5gvaPuFvLn9Szvn/eKfe5Z+7O6c=;
	h=To:Subject:From:Message-Id:Date; b=ucw8KD4ukkmNPSOWTfvpaDTof9L8+pK1ep3aauJ5YgUSUKROrxHz7rrSufc/kuYCWBi4AxXkz09EQ0JE2Vr6J6FLwpm0F3QdXeQdzNQDFwxvhQekKvEmX1bVopCIi8n2DLzd/QDsiYpSsiQL6YOjoF5ER1XKc0qaqqbUxHzgzpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsJCJiJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsJCJiJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22CDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744435193;
	bh=DsNZe0/TfsOj4wdL5gvaPuFvLn9Szvn/eKfe5Z+7O6c=;
	h=To:Subject:From:Date:From;
	b=SsJCJiJe5jrNS2kS3Az5k67u7LwSSi737fwXC2yMGKr824G+J/kjCC6CWpesIGMZq
	 6CYUsx3bRs3x6iE9Q+r+KNgNewvIiAYUVWsxug6457gnoChIueBbDl7HsbqIv4VyWw
	 P6oVRy26wEQEiWcmBe3p1JeVW+Ej3YYAAq+tNN1VwOvEmZBs0YkCiD3OLmsU9HHNUp
	 LWOXLcl25JInAl181zvb9H9oxBnJJUpFzFN7XI+qmEj6zuuBkF9hE+M8mbQsb+Vx1w
	 xA+ysRYWg7C5mCmC2yt0CDdMMR92zFRyBuYPL/xRjCAzpLlyXvF8XzwNhhYbsrVkXx
	 gkfBIDPVLB1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58A1C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443519365.8040.10522207661344475668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab1bbdb9b78f9874dd057fe620c64c13ee81a79ba8c0216b92a374f6861d5ce
Date: Sat, 12 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744435193
