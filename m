Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFBA38E113
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780031554; cv=none; b=N2b21LGcfVl6DX+6cfOk/e8W1Qk3CxxXIdzw1J4DMunMRq+0K0BejOXzG/+DLbuwKy4/7T9gg1Y6LLwnI7SoapimX8HmK+FdR8U57abwvvWi1DM964Vm7c6AJ78u4CXPpEGMzXCWCaskzOt2GFzaggzMqk3FZgwSgOhElJIZl3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780031554; c=relaxed/simple;
	bh=ojO8+igaZ/7GHf6otKfHLhf9bD3Lpf6Y6eviGacNGeE=;
	h=To:Subject:From:Message-Id:Date; b=sK8PH3NZj2tb0a2gRkcFnA/LAhDxjFjx/yLcF0wvUuJwaXrlgnSpH7W9deeT8LQ2DGd0fWkH998CPpAQdi1mCMjgUnzjEx0m6gjYZAD5gxZgm20SBTn9glFoHZmhqnXlu58ZobfPO2uXVq8TG9PcsFw+aZPJY5Bj2WJpCkZQMC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3KeJmzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3KeJmzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF9CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780031553;
	bh=ojO8+igaZ/7GHf6otKfHLhf9bD3Lpf6Y6eviGacNGeE=;
	h=To:Subject:From:Date:From;
	b=r3KeJmzNZEv/AFBKGbTnzbGPGyV5VHLx7CcI8V616XrQNpXfAOfLBF62cGLcBLlVb
	 dDMFBvUv7qzHefbUN9pPIGdtv+Xs7I91CLEVGzeLu7synpMc202/RoQBqIdDKrf6FE
	 PMkcygLx9gglBWdUkibvI3x6EzedzO76XNnAu7l30+nNviVVg5dit8MTi1itsxeWIc
	 nSt5ZBKB5gLFfpHrvEhfAQ+AbQk5oNaL9ApxbSZKdShEnWYTdNFvOiM89PmRj3/IgX
	 XCcCkvSOmvZTgCt3YBl+nhHo9Aw+AuoBkedCha0UkF3wnrbK46zjIY3ih8TRchD7lH
	 u0/FkPsaC/SGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB2BCD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003155368.4537.9046353264618280041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cabee911bb8eed8291cf7bec82efc3ba48d6691294c1abe80866a122868c890
Date: Fri, 29 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780031553
