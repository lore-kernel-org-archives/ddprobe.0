Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4751CD2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725936954; cv=none; b=aoqyyo+as/IL2P8AnpUoLIIGPqWV5K59NCWxIlIi64EJuGxZPsfclkviFZ0Tv/gvRTiVHvLYaYF1d+pWDMVbTeMcUMtWcwCfIWwlpKEZk55MrvGPH64xGrasBe8ptiMY2xAviyhh4cQ0JTplniUcHO6qifGkbMopKI539uEsYeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725936954; c=relaxed/simple;
	bh=Kq5iDY5lUzx5wmkuMm2Xoq/ccg6wLtNv5c5DTrfCJYo=;
	h=To:Subject:From:Message-Id:Date; b=m5OZn63s5I/hJKT4y4WnIyAxfNso32Y8twgbMZ/5+2N3CEFjMd/vE3w1j/ax/1lmMTE3K6cfrsRgexPOa5aOzSuB3llNgyxmX14l1ycTI6e21d320dIjB1w2HR5vBexrrlvK9Zytnff/JbQSiXHfH+nE4y7t9WY0ZABj7h7lm2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXdqe71e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXdqe71e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F72FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725936953;
	bh=Kq5iDY5lUzx5wmkuMm2Xoq/ccg6wLtNv5c5DTrfCJYo=;
	h=To:Subject:From:Date:From;
	b=JXdqe71erxvGmChGO8fojm24rCCwPbWnuu11lw3zpzlFhbIHNROQNb1ZQqo7tqDzK
	 w9dnXuyTLxQgrUOSCz87Yq3uUHKCMwm3RpEHXnOi+YN3MEnXaUNVt2Jgd0udf/jivZ
	 gLxnz5jmHJaN5B0O2ixXSQzGzfEZihhfCGEa15C1NAoqx1xhfHvchrunNTvnnC2xAx
	 lx1Ch83Ql4IdCm6B4icyJieaWMGvkqzyJAtyotx6yjhJ8i8b9AGlPqDXHhEWYOZefs
	 jl+SISBFuj1VbBxzo72qPG6Zb9kb+l+eFldERc1wHbr/JUR80JRD6LeXX/ndkfox0l
	 CXWsi3CNr4vnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3EDE994
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172593695358.28721.1395787975818699359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0cc0e29a5c92567430e90d9d4bd7c100e915db37aac0f5e2013c13f2f98e6c
Date: Tue, 10 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725936953
