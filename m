Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F51145A18
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742352595; cv=none; b=sc4Ui2w6ewuh1UTUPLPTCDq+GQTZ2JphPUPWGU2LXWsPi1/JuqJGFsdhCm0eDWaLuOYUZDixEqkOYRtBqZPhcIDrcOWfoo0/WibjayzvITQ+tMQ8H19EzixjaKgg8/P+MKOPR4uKxdHvjtMMtZ+FyLtkKHBY6R343lcGohNlIJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742352595; c=relaxed/simple;
	bh=uXTMPUVHBPZPqdGdCZqxhNqO4Z0QyOS+nKoZnVpNZoE=;
	h=To:Subject:From:Message-Id:Date; b=uEw16F3jMfjCWEDFkVrAS0w+GOGQBlEZRN/88bP4bQmZ3/lc4KODspw8wmH/CBZTc9ZbT4UNq0qxRw3mFhg2yF+Lu+gW+FZH4oZiKgwvo57igmyuC/EGhmQKNH35JFJLKs2TGr1jiVWmsOYyRHNQUXy5lM92e4jut6xiqUTyDEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdC9l6zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdC9l6zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DE9C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742352593;
	bh=uXTMPUVHBPZPqdGdCZqxhNqO4Z0QyOS+nKoZnVpNZoE=;
	h=To:Subject:From:Date:From;
	b=tdC9l6zVhRfy0BttliiBqgTwoKDf3Fd0ILBj+VuBMfW5H9ZhxknP6HzC5qtDhWCgz
	 D4sSGtzZ07k0ghRmZ/NM4h2/EKpK5PD3aUHzITYdVRFXNF9OLNiioH2MMzrGtvrcZF
	 oex9mmF9acwVSGZD++pyLM1IW6tLLX6PClAtjsR2WNolaokweGWu7foJOh8WnPjcwZ
	 cOqJaI8Fe4gY2dPGL0BVx1OAQTdtF5rSPNZJZEl60mpQpPqaHEjJkJsxlvlqTuZzgO
	 4ciJ6OQ0D5zs3YoOzVUWEFOh109wGxgStazR1N8iZdtuuWPimRekqtDZd5PmBq8tBU
	 DVJ2piSGddX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF8FC28B2F
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235259361.11449.8898634660360155601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb1850e0c099900e43295cbc2df4cede5a6f995a918b68854baf0e5a8c1c8ec
Date: Wed, 19 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742352593
