Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180B2405F7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757725194; cv=none; b=fqLvZ3EhozwNGPvgd8LWPNARw5nBBQBK+8PGeQVm+N3R02Xjo/D0lDZ89bzj9LAPr49/Xf7D0reka5dewxDpTTDAVi/8GxwoZGSL1ucdhugpTxNBBJneXVDL7Lk4mUuZDNAyDh4WqAIvpZScHOVfCzUMyGm9pqNp4eCu28AanyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757725194; c=relaxed/simple;
	bh=azuNw+zOdBw6+Y8aROB7EMru8wARt2mGASdEWMAmDK0=;
	h=To:Subject:From:Message-Id:Date; b=QOwqAy9a2GXf3w8jHrTVM1EWzBwsDbTB7K5Q5bdMwFJ/RWvZLukijs/dCu477Y/LpWG7+RAVz5eV2oTKZc8SLoGTaBVyQuMdsceObm6E7DN0keJFF/+Ks5O+P9yvGGfewQHsK+JvAZTj1b0L6LcxkmUz57IMdiDHzGO+0Ya+wNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMm+Ln8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMm+Ln8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757725193;
	bh=azuNw+zOdBw6+Y8aROB7EMru8wARt2mGASdEWMAmDK0=;
	h=To:Subject:From:Date:From;
	b=vMm+Ln8Eg9VjGfq0oxAYSRY8Go5xU/u+zbIkFL+EgmZJi0JcIqwLzXbWR+haUUr99
	 Ku4Vkgd4LtDv0J47vEmOSoHg0o70j/+TwgSmLVJ6S7aQFSL/Ktuw9jdapv5OPd4A+z
	 5Sj24aOEHVCUAJ5D1M47d3ef8NqthYvM0L8juXfdGAORwm5WrZ6g+ww8XH/O4b3EQD
	 9s/Ku5R9KcSvPbXnWFYqc/PI2cY2jyWPta6hOpEN0hQNcpo/VS01zJ4YfixlYbIg1q
	 02mkoWpmEH3/ODwVjEiV5+RMjsxnV0MWGsb5rnPc4rUBMc+F26/GNkt16Diyc+I02Q
	 G5Doo3mfktA/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A8CAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772519358.8476.1534378449764423430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253034d4cb46fd553159122eb2a34984b38c3009846e93de351612324283dd6f
Date: Sat, 13 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757725193
