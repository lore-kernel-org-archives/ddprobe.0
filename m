Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265AF3F0744
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779195634; cv=none; b=DxtvOmAHmtsIIpazbquLEhmYlRQldBauSYq9bttXjZCC8+1jMmGAxf1zlFBiXUv0VRlXfZQH3igH5oZOEE9zI6MbxO26TA3mFZKw0SwOWpsUbc8k07Q2LdNItrKVu4F+hmI+4G8xENzDTqzNmHzq6h+1LyCcjy+SrzIqHZ2uN/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779195634; c=relaxed/simple;
	bh=TSEJ5hu3b1S49sRFb6kEDMQ1+UWovz5YKJ9/6ZyA/1w=;
	h=To:Subject:From:Message-Id:Date; b=loopAAYI6jMsNYbcV2AJVaqqz5RK8U75BG9FkKiKOyx8qfvMoN86UsCh5QXTw2cWtMOHAe6w4xFHwvyb54NVAbococvcpdHKktR31r0MIqQ6lhY71yr1a6a9XEe9dK7YPG5OrlDZz9NhJnd56A1vQBpqNsVAtygQ7deWJj/vrr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI65UMVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI65UMVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD322C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779195633;
	bh=TSEJ5hu3b1S49sRFb6kEDMQ1+UWovz5YKJ9/6ZyA/1w=;
	h=To:Subject:From:Date:From;
	b=DI65UMVEVxVcp9irNmstb1J7SqCg+dbclzF3Y3KtA00VelNgFOn7orNOToeXzTqGE
	 g5o0yskLhArWss2oBQEnWKEp8dHZD+m6YhgjPlBm/KhXaRbphRV7lsz5da902sNRrJ
	 A3YY5LxmYx6wpY+YQK+e4V9MWMkymGrSgl4eZz0LGBroJWdFRhgkcX8qS+cEkZTT3s
	 lI1yPmqqHpTFAE9pdVbISR5ISvjizja8JzUzmuagP3agRBblxw/zFDAeO2KKbVF9KR
	 FajRwdfZrYgOGGokauXIaSzJLWRtjNjtDJzXUxk8KbjSDeZ1z7hGy1iZwnumyj0fiM
	 gNMgm4kCnS/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF5CCD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919563369.28919.846319555491619598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89f8bea5369127646c195b47957e7f95d535bab8491d464559beb1db6fc2f30
Date: Tue, 19 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779195633
