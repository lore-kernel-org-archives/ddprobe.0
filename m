Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC65D8F0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748001594; cv=none; b=QS3Qa+l0LiyKOhzlwfRcUK4pUW10jV1y5tKK0Y3tuZPccc4O29x4SfHdykE1hTuxXeDRoqaefuFWplhiN3wNkajrMcKYr1nHZWxcmAzUCEqEb642z1VypSRD4zomx1mg1hzT8vkT827sAkUoD1Xq/e6KZ8RD2J3yP1Pxj86dMCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748001594; c=relaxed/simple;
	bh=+O2vE6qfKPjBjXlq5eRyLkh0vmWaUNvUVb+F/4fQCuQ=;
	h=To:Subject:From:Message-Id:Date; b=SNNZeoPnFQfTTM6EVYDUjmbq/Z+PpewB5ekBYyBxI2pE5UFxRu3yiLKZVYZQAKbbIWkDYj66DGZBB9t98jEqc48OHr6YpMgka7FSZmf8fEJtbiaagJWFejwu+dxRt+bu1TseYWIIkXQTsQc6AvL9dp6OogJ5NCX1vfhzGbyaqgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1nHJ2S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1nHJ2S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A759C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748001593;
	bh=+O2vE6qfKPjBjXlq5eRyLkh0vmWaUNvUVb+F/4fQCuQ=;
	h=To:Subject:From:Date:From;
	b=J1nHJ2S7bieg6YOv2EbnTbNU7sdxfkTG7hgxbAw+sGqZj+NtTse7NFY3HWgzpev4+
	 q2s/ReJ/W9KKI6ftTkMPtGEU1ZeUl7hvB5/l03u4jow5gWj7nn34Sxh7ip/z8AOOEz
	 ZW5VopIZnFTP8ZQ2Db965+UM2GSkA+VMVXvoJpJcaXyQ16cRl6LRC4T7zTkA2zaC4R
	 gKSRj38O7eBSTcYFyV94qKG6VCLIU9T3r4yUrVyz+8fx3zD1GV+o9sDV/lGssssXuk
	 AroGLWt5GKVHLbxrX0hWs12OJLTO88Mt06b9uPYtFc9NZNGahQKi3gq57H/h6PE7KE
	 BnP7WyYA6zSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7AC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800159358.25506.10095487530875524650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dee9adf34bc07f876cecf35ff96c32f8d5b00614956a21330e92d406ed1b96e
Date: Fri, 23 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748001593
