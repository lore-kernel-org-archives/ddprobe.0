Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23672136E3F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728257154; cv=none; b=Tth/Rsc51jfAkyepWBp4ZWVvS6pOCWFqixKdVOTumdyCTI2i9+VjMdh5xetc6Mvw5MVJXAVj7nZB0/s6u3bRJdYcLqQNq45HwXFnv2VO6eJKrp/ePJ8vfkevaKFYFrR9cAL+hx7omdkFBOgpTlb9jlX8qIZpDeS1nq7aOzNxY+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728257154; c=relaxed/simple;
	bh=IjnYc1NZbvB3shOLPp+0vZfFH/gWyfVX0G0zKTLm6NE=;
	h=To:Subject:From:Message-Id:Date; b=pvoIR60J/Zw/LqtQJhPuNypHJePYNrdi8XgPczOhQyVYhWEIm6cg1h6yL0f/p5t+2gpk67MuGfWz6eTJ+9hBLVHJKfdzdK0jr8utHqpLFoy8jjXCTvdY65YF0Z9zxFiRCyeBO8xF/rw4PqcuWbWz3u9PjD1UEdhpu6WbIVxnjII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/Z8eSpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/Z8eSpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD014C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728257153;
	bh=IjnYc1NZbvB3shOLPp+0vZfFH/gWyfVX0G0zKTLm6NE=;
	h=To:Subject:From:Date:From;
	b=O/Z8eSpzdWZlrMRcMTGKOVc4C/EDVVCnOLDki/sLy9ZkmvNHjtu71QvQQhwq/IpBW
	 Hc1BZtIKBdSLx//jtBdTPC7UTjWD9bOcbIjIku1j5WD6nDfeiN3W7Vahe9o+Oy2VXq
	 CXEfVeNnUnecvXgtkHLzWo5Aj7iIbv7FVC3l9yIslj40CCj9j4OQGRZASkLCAiJEtj
	 SyA8h0YB1BGfYpyraPDSngktLEzuoYNNpkE5ks8oiqBdkDOGZRZFG2p5iDEsQ0H2GC
	 XkxiQ7ohOZPGCCrt9goH5V4Z0bjD8huIOpcwIgcj3qCMC64RT2usLJyZzRIJnkYkzB
	 wb/aViyLKQIoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1ECFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825715359.1492.2410095620302196617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f305413ae924aab7793a880db5430525fe634d6f1d75dfe58003e7e7c4f6726
Date: Sun, 06 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728257153
