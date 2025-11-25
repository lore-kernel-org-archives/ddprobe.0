Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F23E49659
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764037374; cv=none; b=WNqUSb1WmlkCbNqPqDa8ilTnmkxcnoy48tjZupZJYXIhDerCybTgBNBsF3JeyKh9XGuXM3FfCuts8V77OqYqgdIKb4NU/v7p+u5+/em0U8A/RCbZpONtq6d2txUPFkHyJk47Y6Jm+I24u/Am5WBu0k9obTmN6SjKe0MNl5CWVq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764037374; c=relaxed/simple;
	bh=a+rhjkv81cAIldmxTQDS/1M+v3nqOipUR9yfwQjXVbg=;
	h=To:Subject:From:Message-Id:Date; b=e5BEez9vCUdXcNlXtakEPWUku+MZPAUb/jqgePz73zyXYtM0SdtI8EaATnTQ5P8hRvToUDJ2kWdLvhQ181T5oJK3Vn6yEZKmpq/IE6D0Y/BBndQ5+6ujYiWiO34QcAH/xjZTObHu5utbVXMK5ltLnFmFY8XX7ZRx/JpkYa83slU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l83SUSh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l83SUSh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B25C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764037373;
	bh=a+rhjkv81cAIldmxTQDS/1M+v3nqOipUR9yfwQjXVbg=;
	h=To:Subject:From:Date:From;
	b=l83SUSh+JK3fIvDr6WSDfOXiNt3eIq6dhisOcwZPp6btphynyFkPc78vYhmEWGMYL
	 8rxv9m1i0eq5sTQm33wWL4ywqK3L85GvFH6/0/g0FROg77SRdma7tkw4U7dhiAHDUD
	 /yGKt5c/tCoJrgHTe7SyXggwV+eXrYcbqhNeGTW7LxygvbmfpDWTTs61oYNFb4t9yw
	 MNt0RtJUqdsvF6kXft9udAjnjKUwe45fhWRHb6LVGlrj9M5um9q0lYCSeTtFNljnn5
	 6jXWq64XFbr/XmbnJfRs3/qULoz5fbWBn8bU7a//IMrZSFJuUkzLNtGB9zM/Hljm/c
	 y0veSJHuE5/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE4CFD36B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403737358.4724.5775089596065260533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c436686df2c768e8f3d00bdd9d5cc7046e0b5a05dce080bf2850c8d149020e8
Date: Tue, 25 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764037373
