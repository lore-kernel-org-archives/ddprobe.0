Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E422D4E9
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767437634; cv=none; b=KW1uUINYwwVurnrf/6zCBLbIydz2ATYchGurPcMtUzlDk0nzCIntDrddEdhwxtoB+tQXQel7qMMkB8d/2skA2RwUA8VOk7JAbCPqaqO+BnrI9ErQQbvD0CDQyUuhvc8JXYEwdzOXTFSwQN2hO+Ws3l7t8Bc01egrdu0/g16mPSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767437634; c=relaxed/simple;
	bh=OyULnP5pW1JRTl0cH8lppjPUYvI/KtZiyUlxzI5tJsQ=;
	h=To:Subject:From:Message-Id:Date; b=aT0FWcLdozjk1dV1Bxtq6sMw7LKSCWmahiIVwGwp33ZQNVSdYYt6gXtDty7heSYtyBlJ2OeqR0XyfpyPn70bzq0Xry4JFnb1Mkrdm4S5J0cuVSG8XnyKY4xosJ2gFOUYL5rvkJYArtQSZz/ofN+nu392KiM6rQ7jZMFi2rFha2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubawk8Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubawk8Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A0FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767437633;
	bh=OyULnP5pW1JRTl0cH8lppjPUYvI/KtZiyUlxzI5tJsQ=;
	h=To:Subject:From:Date:From;
	b=ubawk8Scc4TT86qFjtmQ488U2YTJmpbWguZyrj2nhkx4WKvDGOXXL8HyXqbxnWKMy
	 WzTP8JhjNAUYdMYMu6DTUtN022zfvQAGR1zazsadMQhDRe0eHkmLib76rKGxAiT6Yf
	 AlNQ+0PwW4WoZen8PBgclXlaRsuoscNJRO2nEIOoYNZI2+IXd+L1Ug9uz8GxfRLEb5
	 6ld9kbeHUvJ3rbHaNNBnLEZ5j5EXsBvkOux3sWhiuOiS3x6zIFkplQPeQ/USAfqutl
	 c2p7gS/kB0PRmfeAbcVHVORbucjGW7B+qqdXZ7kamagSYMs+vLbh+z2bODpx1U60rd
	 /S19LdkixtvtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B99FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743763358.19149.5409311503411093064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7294ccc605405620ca873436ebe7833a3d69bedd5f4df4ba431052a4c555a79b
Date: Sat, 03 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767437633
