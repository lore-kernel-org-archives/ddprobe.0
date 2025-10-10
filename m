Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166D636124
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760104794; cv=none; b=p+qinWbCGqrXJhAjwArC7gozi7bg+vrNNWNXgQlS3QQuaBzH4J3zaxqagCMmY6nnBFfvVh8QjVNJfY2rKNY9BbQ85iPJwBz6P6HfX0izrShedONTJrUyGlj9o5nQgq6FNiLRByKocQypmYIOFguJ8IpoNy0TrO9yGTkugCUgc1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760104794; c=relaxed/simple;
	bh=TogZdFKJxA1bmki2SiOWZYBP27meVKsE+5anziSpbNA=;
	h=To:Subject:From:Message-Id:Date; b=uVgB2M+2ID2BhU6EETyObYVGUVVwAsmYr86XeoMGcfcUX8llvyOdnlyGpboltvo2gtoLJZ6OOZBXwkq3Kdhmm1EL3AoN0jRKvQatvZeIhexYIcEbsbZdkH91PIZwDmiJ5JOMYube2sLrjnb27pMfrxGX/DCu0oVCrS2i3VQaKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNX9GBhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNX9GBhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F85BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760104793;
	bh=TogZdFKJxA1bmki2SiOWZYBP27meVKsE+5anziSpbNA=;
	h=To:Subject:From:Date:From;
	b=qNX9GBhPIh0kXgPAWqFdWeH1DPifAgdCBgyJIZkezfB7qW3AgA18XNIoGmVZwoSSD
	 E0MnFevTokzf4XTF8xhAQRTB2SU+vlcxBPBPpIuOvA3HqPGN4BOBfb6NhaNE7QzJgP
	 qVVi7b0Yaqa5APg5NdR9fHi+9pLTTaNCuGW8izWjLN37E4dolS/4XJ6cjVbREKvHTC
	 6VyPOeQM5TjJrcTqInMWK4Lo96HM1Hh3aV3Rpd1Dr4X8DduB6985YSjLkEJznXT+Ux
	 e6xigfRVGT1d+aDySckm+49ZSxTW2p8Y1nPzanv457sLo8c6fArF/hY1yxTLJbFN5J
	 csXPSKldFECMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A6CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010479357.2662.12506112445289168361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027753a5fb4d92011156ecad9d93cadb5eadc72b0a2a3e246fd7a2dbf0eb2306
Date: Fri, 10 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760104793
