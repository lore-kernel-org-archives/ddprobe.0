Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5369140F753
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791633634; cv=none; b=LRyVZOzQfv2CxswSR+VkQRMKjODU9D3q7O3D6vqe12CxQi+w7kdtdxPEZsprx1k38z5zFTGR0BcRDZ8sFk4sNvveoOf4HlXJtu8Fh/fB29+5BmwWqleaAL5Z5tj5aKgtJSxRwtGQHQ3XxXRqZACGt4tVYbank3El8h3lmAw4p54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791633634; c=relaxed/simple;
	bh=J1Cchs7cRAhdAaRcfbcnsObhaeOjygZr/0pmUEybC1I=;
	h=To:Subject:From:Message-Id:Date; b=qVuqaQfjWZufXImVYBAXM9lrYbnZihv1IphqmLh8ubdfw7Z4RYmX8OXi4D1cOcsf3xR6iy+8ubwUr5DXzevSmc9F7N6K5wMN0RbY7fYIESJvV8svrVPQ0jGliYtJI0vy4GD7GMUs/kb7NxszCOIu/WSaNg1K3nrk4SsFYJik7uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhVgA7R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhVgA7R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B2DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791633633;
	bh=J1Cchs7cRAhdAaRcfbcnsObhaeOjygZr/0pmUEybC1I=;
	h=To:Subject:From:Date:From;
	b=HhVgA7R2GVzhauxBaw6ARpvxelihqRfjbfpUpnP1p41T0K34lGbBJhC/TVypHGAUr
	 8AHwz3ohoaBJcFXNFsH2Yh4phUgBQHiH9fPMH6Y1jaSLC/Kq5B/1mr2hUJSA4uC7f6
	 kptLVCTueg2orEwCcajmw1bRPRQesk3u6dInC0896mFHOn2h9Vs/1t01X5a55D85jw
	 tnnAVGx9maBsRC3j8DawLKbzjlocfr8Syz9EQffdCCbgdr6vZ7dPvek8EEyuywmdyK
	 oSsX5hIKMQCbe6Mw5pKDq7K9kh1qdrREgLaaoF0O8znA1S5U/PimYKL2RWagSYe8IU
	 DSS/+OmHZghtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B034ACA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163363368.23952.1933207880809013938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffbdd78044746a9db4c1b328e95b8677e9d20d05fe628d29e1728c0d83e7a2a
Date: Sat, 10 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791633633
