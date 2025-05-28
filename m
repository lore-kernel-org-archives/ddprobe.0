Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3860A19D8A3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748458194; cv=none; b=UHD0gYvj7FggTAWuCKRXmU39GJHNjKcv20C1nhhjcZRTJauOUldw8Jh5Ea4xDfw9XmgkCm67gz72/+HcW7QTw4TZcxdTZujRk0Ielicvrva6qL/7tZzhSo8rqey7K/3HLoXcPUzg5LWmpF/F+SsDs6cpmCo7mVFMMqmBc+3eNWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748458194; c=relaxed/simple;
	bh=gD8vQ7st73jVDOZXhOjlh+mLxMKosxhBCPYqcFL9a6E=;
	h=To:Subject:From:Message-Id:Date; b=hD/DDlCxgs4rKIwnV2Jx4Ygjj/6X8a58dK7DhUT64Y/nVsLyg4pa+J7T1lIrsFL86Ajq/b2h9ge7rNX2CrfVHXEF+CUAddS3U9aqun8o0R01cFdfp3N0ntHK1ddr9WRpUo742LVlrR7yHzQ9jH174ORyoj7UOE2i09UgVY4W6Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul7z4F6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul7z4F6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748458193;
	bh=gD8vQ7st73jVDOZXhOjlh+mLxMKosxhBCPYqcFL9a6E=;
	h=To:Subject:From:Date:From;
	b=ul7z4F6L/wUkg8Irj2MP27cHK7AptbcluFbuRAVM7YXN4fyYXh70HPK0T9+XIKHGb
	 Jr1bQ1o+AFYZrlbPyf7m2WiDWNVwdqyrvPEsqnsESfpO2PRqn3smpx8oJks83fW7xO
	 37DVqhAvUjhHHOay8MjISD/e5c2+0akJJ2L2antjKMFzRvwg8TRZL+9cKGVBGPBExQ
	 ZVQQjl7eR5raaHES/pEb3oOPzQ937SJVf2RYdWond8rU+S5hLvD/8ZaU+V81hgS3qj
	 ujZI58GQgUeLLCNSjK3fHMefb15vH6uLypnZf4gmxK229jHKNNVK1tKu7quQ0HZVVb
	 w971Rv4X+NZjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0BC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845819357.11165.17738038181559979415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6e771ba96210db6dfc06d897283549939ed8a6c189ee96a11af6385df16b07
Date: Wed, 28 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748458193
