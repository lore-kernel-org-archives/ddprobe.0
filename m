Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD7E2940D
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716939263; cv=none; b=e9oiUIk3Pd8MqCsDBJzAhBbfZaKvUEJTRjSr23yvkyKjQLrfgkiOi59zkiPKqA6eQIQHzqP8e7KPxfL/oa9/HBqFYoe/jC8vB1WDGzQifYD5hyJRPLg89Dl/nyLyRLSbrHePjoRyOM6gHS0TqS9B8fDUu14C9JmjXDra/SweuPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716939263; c=relaxed/simple;
	bh=FK1cq6b1OIq06RxodXU0SRl5gX4y6EyTE4rzDEqGlqQ=;
	h=To:Subject:From:Message-Id:Date; b=Y+yh3UUplwW12IIhmHsgejrJ1cC0euBl8ORBHBi0RTgSOX7j4W+RR0a9zeY9fMCCQiXyvx37r4CWQYwIzy3JLSXfTSn7lxQvPpbiSbeyLpbT5pJJPH7svayahB69L4jIleeQFc/hrGW0FygFyvnVlN1gc39VHFCisinAxnRSFIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwQy6VLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwQy6VLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D341BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716939262;
	bh=FK1cq6b1OIq06RxodXU0SRl5gX4y6EyTE4rzDEqGlqQ=;
	h=To:Subject:From:Date:From;
	b=PwQy6VLFbC5Ldbz9TM7GD2wyo4ofx5DwNrenyVxk3/q6Rnf9fHuQjqCloDkKJEGVc
	 11Do8Sv/r3+YUgFlgvuZYHsBGlZABcsMxJHiWJ618S+YEfABcLWFKViGYguI0lwWY0
	 dIBYo5gGFJa7ARJ8LkShcoJgLlvPuRupSohJYrBKgUy9AqK2kwrbAIIskMeSFR8qu+
	 PUKnoSvmTgxJrZ+mJyl0wAVHOvV/60TUVOEPxmBUWdZZDQe2Acv0EtAfFO+cM5TWpu
	 j+JLiNsmD/IF/U6xr1L4f+9zeKf651h9S5GRZJ86lRZZOC9uuk9NfbZ1+qt37CHE/2
	 C50kzZzX2JCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2006C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693926275.23856.18275809728492805762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157121ccedcff51365f81a738965793543816dad5ad4ccc82331d0f781ac65e3
Date: Tue, 28 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716939262
