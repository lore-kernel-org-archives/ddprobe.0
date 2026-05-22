Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DC337266C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779463354; cv=none; b=EJcD8XIMgYPxqX4QdKK6y3bNvIbWaN2ZhJFacSksbOfS7Psk2A82RR0ZqWZTI/LAucSvi/JIexK3jcAPs89VHdq3vRpfe+fghLTkSmeBKUevMs7UIulRmFy5dSIBgWBW4NGx7EDVbcVOetBjmK2W08i7zJooLDrw2vszbWV90LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779463354; c=relaxed/simple;
	bh=qiH5KFJ2RhaVuYTAJlxHzbRHwWToW48/cw1dWjO+VPo=;
	h=To:Subject:From:Message-Id:Date; b=qlxgTNr7QDXAotWZF8jW6+B++sNuCwWHB4YZ1ebbAIJE6uXi5p1OkfWA4Q8FWx/aRjD+vqxNgA2j5rtcCAUSeleNngphXZAWCL68jqEoQ7y68SbbvD2GfAzEMxXvDZxDS2sYL5X+CoGvKJkiuizVlIRj32qf3fjuimadxp6QcWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4A4P9tX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4A4P9tX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4079C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779463353;
	bh=qiH5KFJ2RhaVuYTAJlxHzbRHwWToW48/cw1dWjO+VPo=;
	h=To:Subject:From:Date:From;
	b=g4A4P9tXD5RXlRJUaxf4wtXlqg3zO6IiX2bpifRBdYaYQFgsd16Uq23Jc64SdDLqq
	 UXqrYB+8yxhtcJt9Nb0rbuc5OHj5Gj4T2YtxkhpNi7kl6ypUeYs37I3NAT0YPkEDEY
	 v4sEa5JHVaqwLh3I/+sD3KkBompnfzVsZYIY/Dzbk92Tw/Q5fD5sv4d3io/NohVUZi
	 5M7dtOB1YRbRSeXcAacXv8SFEm7yA/6VuWGiizwz2+wvNE7ObcFoPtnf67Sn9m3T2i
	 TMjkUmwRthb8rlVD+bMFs6N9v3GNaJI8PeCn72UxqrRV68ARYJdk8FR37h0uX79ZTm
	 h6JPW3OZfmcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9074CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946335368.29519.4551777449682141883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99c77576130b2d66c4d9bcb44d8d3c3c9b9c4753c26c292fec509995dd8c6f5
Date: Fri, 22 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779463353
