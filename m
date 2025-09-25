Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25537248176
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758763794; cv=none; b=AXkQT2KqsZba3D2ohjR36xG9JfItTyQB3hT+2ecItuhUVnoRxUFdsudt1FQwec9F8WReXk7Flvzn2o7SdtftJ5ETT/ztBYRTiNb7zJ6wz8Axz4nlvrcl/GAt5Daia+yDiNfJIw5b6M330E4RuxjsUqMwQVmq9aSJyMMZBds5CdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758763794; c=relaxed/simple;
	bh=VKRkqf63/quuuD7+ntE3C9oASI/yuVXpey5lBCay1FQ=;
	h=To:Subject:From:Message-Id:Date; b=F89e6xelTergn04Edf8T/Y+OwLmvmd9hZDhCsACk3tvwxzXC9umsTR8llfxFBvldc0YTwtF+Ab7dT6ABJEyiWhbeckhx8oPCOj09JwjuTpHvREpGLhC/D9dlJ3lcxPDP4YovYDYzGdWo89rX4ULi/xAmcpcxw0s1AjuXL6fSTKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh/128Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh/128Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6C8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758763793;
	bh=VKRkqf63/quuuD7+ntE3C9oASI/yuVXpey5lBCay1FQ=;
	h=To:Subject:From:Date:From;
	b=eh/128Z2aiV+Hl54Eq8z4q5KbP8aw7+zk2Q1parQ5+eMtKqbOwjTZqe4wN9JGCnYb
	 19rbinQosRtd8NE0yBxB1o9QMohFeEsyveXkhnSqjwZWUE36vuRzus/FvUDLx/EgIh
	 qk3y2Ktb2OOA87XCDkFzPsW2VMRg173WmqT0fqsHH89a34lRTWQz39Ot+2RJani56F
	 Bigon0eL3GG/233DjG1A7HJJA7WzUS9RVQNf9bhYo8jrHl/WZvq+2+2wT0fUGtOwW+
	 IiVKDKUDsmXkRXWDdbpLBg0ipc54CLAW3kNERR9j+NK02yvYqBpnZa9qIg32HqupDx
	 GGBpV3z9GQ17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A40CAC5AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876379359.16197.14472721976765849556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7ec5eccba26ebddda99e606f00e2c6f775b738d4af8578effcf002d0784f04
Date: Thu, 25 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758763793
