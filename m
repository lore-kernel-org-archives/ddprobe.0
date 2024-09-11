Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F961AE852
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726076154; cv=none; b=bskciozs61BtdA4jHEQKbnuLH/kpbs1PQqAXmO81BbJAZ8VCsGtR0K6mRyMqn5FI5sEqw16bT66oF27UekfLsau/BcQMA1tcBYFzoTtGJKwkib/JGtQPN4ERZTjfRE+Emq03DN3sE0sVB4OpUFLfm5MQdFGYteXU1uMEDtCB/eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726076154; c=relaxed/simple;
	bh=+5cE05nS/qJ1E42kOOSmuGjYtafqAKCZpYCvFCwFuMM=;
	h=To:Subject:From:Message-Id:Date; b=TrNpJhVb7psrvcJ57MjL8+9yLQk3n7xMRf0LIukvynvmThx5i/8B/1C4KUcaP98aNeH8N7N15CpGCqmrxOn4T2bAkPUxvK21Lzbd5jN64sqKoPnbHxxVbbEjNWYF3lj2vG5fcm+STNvovHMo96fUt4pNjpe41wEWRYBh6Oc7vms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwdJhyzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwdJhyzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF0C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726076153;
	bh=+5cE05nS/qJ1E42kOOSmuGjYtafqAKCZpYCvFCwFuMM=;
	h=To:Subject:From:Date:From;
	b=fwdJhyzBAYtsxcht/xtW4rFeA2IFlUwsUVy/D3DJWEhLDodxACEXMwyaeGd9iixUz
	 GZeNH8D5XPDCA6PFU0ipGxH735MCiwhX+jicqOGHz2yRccpfbjL6yUosmQydM8iARJ
	 6AgaHMc3xlsLZemEdZ6tcXhgRSt7IydAWxpHsPo337BlDTXwx9PZZsSBLdn6YMZEra
	 lfMFVXWg0/q2k+5m0tKgfBVG/60MJTEJRl8SNW74EjjlP4+oPwB3cKbxEEHHvYgQoq
	 n5QO+h6yb3eWk4nYCUtWynGxjeSW/uCVsqUoyPZlSZzPNALAuvdxywJ+42UyfCWDgo
	 rTZ+U/c+cFEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991BBEE57CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607615361.22200.13723614345745808673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679abe2c4e098995c80aff81dd51888755b69f84eb3d9ba4bcd44a4ba0423154
Date: Wed, 11 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726076153
