Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D9132AAC7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765398174; cv=none; b=rJy5yeCfY/a5jULDGkeLldzf8rM0+4FJqTrmKOPUV/QgTTQBqYZvVlHZtvKbsOd0M8F7QG/voxc2wOPM4g9dchHXLG6/vShI9ONDfJ1Hz3iwHL98U1ZvjnP5lw63G0gCZH+fEpC7ye1biynRm/feGoD0Y9rRpb64bLlhAqrVoVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765398174; c=relaxed/simple;
	bh=L0TIFfJLvJtG4b6S+OpCP4X9cGpaPmPmsjv+4iR1EcM=;
	h=To:Subject:From:Message-Id:Date; b=Ka4CmorkzpnnpPyxMLJETajpKjhSnAhTFdHdWvUtpZ+iJ9e6y+QZW+ORM59pSaPVV3eJRdb0WKJfFKLKx7MzfoGtX/zAnycbfRkEJ3a2du7IQoPs6B3G5znZgWmjoQCwGO2RGtpI+BrQEc/qhPe/niqd9ny1RHSBaBG6JyNOCCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB6OApBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB6OApBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED74C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765398173;
	bh=L0TIFfJLvJtG4b6S+OpCP4X9cGpaPmPmsjv+4iR1EcM=;
	h=To:Subject:From:Date:From;
	b=uB6OApBaw6fp8YstcCFM8TYTWZA/uylJ7mEbGu9alBTgfM6GZW25YKBfnUWT2ONMI
	 RPZQwNtoSMd5NfwmzKx4UTe4ho7EZBAmiHiM3t22aWvI8cC0SqfMG+741V561VcUgf
	 EAXUCJcz516XY8gOy7gKViDyh1F4thLg7Vk90Gssv72Mrbw9yAzyWNewaV8njK8eMt
	 8cy/SONp4xg7bXeCIhzlkvj6KV32fEboleNqmfYOPAEgw8oP+QfMhn+G1KXrHDHrxQ
	 6VK3Q7TYE1hQQzEw0Zu3g/438F0mnERRfhjfDeOrVBroakYmrmdM+cV5rrtj9xxICY
	 sDSM5OqSbehow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C1D3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539817360.21832.8366669617153576084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e64692b13fee1c258e382b1006a1c0536c26a0a78275cf459691732f7f2e7e8
Date: Wed, 10 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765398173
