Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406B3302779
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535094; cv=none; b=BWfH8dhSm+hR9w4UGTZszNI+UePxD8LnxUqNrArtfKSjjs/8bUMNfLQR0bUdj7Z2EF9K05d2gIZeCP9EuVhelXHiuwOyq2kmymqlxbyDmmh3NgXTCkit83H/TGow4t+WEaIdJavMve1bpN0NZNRgvBLi38w/DWgiECk0Ezho2/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535094; c=relaxed/simple;
	bh=vjhYN+tqQSgOZgFBxAXdd0kk1snTmiwPrI1l34hDX68=;
	h=To:Subject:From:Message-Id:Date; b=iEUjMrXIfbUWuReSkpsd0u2Cuum1U7gsyRn2uWnh5EGH9LsUoquxgsWLv3VQYpcAdSoY8iOzTMzS6isJSi7yeSWElQvQPP9t53VrGX8o8CGIrv6Y0bHXnNK5S5pyTQVGPpGh6kh6FwKFx8uY1aLfGl0/hLQWBY2IoMev0NKIZqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEmbFH2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEmbFH2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98A6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771535093;
	bh=vjhYN+tqQSgOZgFBxAXdd0kk1snTmiwPrI1l34hDX68=;
	h=To:Subject:From:Date:From;
	b=cEmbFH2R9CfBLDEu8znCT+LvSri4jGJNM+EjB91yGkXEfNTRQ5z53GbqDn8kbPjOi
	 gPbKEUHAPZIX3PyFEZpm3ZYArSyD9lR32g5Wa+Kx1oFJClz3fI82nTMFTnzLwPPtHA
	 Cxhg+8kp6fQa1+7K8Z0+qmVy315D5Lf4ExDNIIvEYxqYtVJpMlmvH6lZpOeqI5o3J3
	 fLok5PmqGuUhZ6bBf6+GA4tXnwliHk1x6TZg4ksNLJgbkUwuXBjOj8im1zYcY4d91S
	 o/VBZnRd3e2pTAifbT0hiPnf9fdnOUXJl8hYx0EzSgjKjIQh66dKDIrypVV8OZwZgv
	 ba/MKTbTEwCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F722C531CC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153509364.17120.732805052554294691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fb50be05d09baae7a77c96a2243622d7116762d9636ba83afb2fac842e0895
Date: Thu, 19 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771535093
