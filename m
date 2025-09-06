Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BBD274FE3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757150395; cv=none; b=HykuM2Q/KXtzB6sb+rj25jBxn9paf+vM7zoBrLRo94Q5eKdVx33VKuBYkSr275Y2+S2EufzQcp50GWe+DRLhJRQO0KIIymzdYcHMxB+RChtJB04Wu0yNbCbc1OqT0rsxG8BFw7OhgHNL5hcT1xYkLhFzRz/pTUy4hPEghtgnbF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757150395; c=relaxed/simple;
	bh=0c346eFj3QZNGH/S1M5aMnhidbVbFPuyNRTjDVlEaQc=;
	h=To:Subject:From:Message-Id:Date; b=ijhKVCrKz8+DwzAO7GKd/SqHBwjqt1xvKX49RTeIotl2lzc//0CX+tQeqNrOK985/q1Ybn4wkGDa/6LaSj0bx+hVbwMmsp5jX+aZw7PE7R/g1eK6g5X07i/rA74vvla/j+nLQig5lNlayGC4CjT7L5wbxwoBQPoVMwPWBEe39nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3+B7Ft4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3+B7Ft4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757150393;
	bh=0c346eFj3QZNGH/S1M5aMnhidbVbFPuyNRTjDVlEaQc=;
	h=To:Subject:From:Date:From;
	b=Q3+B7Ft4n+TBwLCeyhoYAq7Zgp78oX1pqGtUuUHuND5YMgYPPoeygfUh3qicO1sKX
	 4KN3kdeYgf8sm9A35aZUO7ph5OHocKQ5frz6PPZJOcr9Flm9gr90fEuKT279vsXeNH
	 mRsdLreIu+Z/a9mVCp7tDgDxEa43MzqZEIycXjzTjijaXJnEoqvQbwKMgXzQ8+vHFZ
	 1RbBE6JwZVptjeMXqC1soWfJCVTyPfJK4YOBT3nomE8Ps6NPfyd2J5vuWbQCOfkydV
	 wWP6RnQhk1iS06GLOitFeqPwz7gpYvc5rieFfcZbJjR7/Hbp9Z4h6zoeTLl0u5uAR0
	 PKvGXZZg8dyQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F859CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715039358.3114.9606489916217630116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b3e7797e9601b4f4edba52761c1d7b92cfdc1965eeb917a5c8966895029851
Date: Sat, 06 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757150393
