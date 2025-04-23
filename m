Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31568264A84
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745374194; cv=none; b=TqIx0wRWqYma1rXIQ4F+E8cZfsfi9XIvpvJoznc+9yuIlrcDz7VNsvt0tIag6rbLz0ey1iFj43MQ/Ffl77wF3FMPY0S5gLc78h+B8FlzK5jvUYM4h+5MZMaUWssiqOMh8xdnNxxofIV0NxUdkhVoqA3RC6cir7djICI8nP9TX2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745374194; c=relaxed/simple;
	bh=zDzdb3a/zXIYIssb7gSJyixz1BQkBNaMXhXMuzVsSvk=;
	h=To:Subject:From:Message-Id:Date; b=IkLhf9rlYvxLUxq6qP44OeGhfMutnlDPhIYSy+KPoC6KXne3XKyLVp79kAJbdwSlpyOg6Tw7uYkdT1PMpO42QSGe1a5jCj1xZ2thmZFSCwwTnst4f/y9w3w3oJiFeR+fep3zcVm6b8ndrQloHa+OGOdebaB7sjCDuIqEYX469co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fjbn8P7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fjbn8P7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036EC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745374193;
	bh=zDzdb3a/zXIYIssb7gSJyixz1BQkBNaMXhXMuzVsSvk=;
	h=To:Subject:From:Date:From;
	b=Fjbn8P7GCsf9MeR4H7XfmBFMNDKWzr1Oz50kYCAXCFAZRHSiDYE94qnurD8ocCpRz
	 fTNg33nsjNYe1zgmAGkpWu479J6UwYeyzd7X4KbPcYB5wg9mIRFnzc3+xz4Um89UYl
	 XOY/Qp+p+fxoimyzr/9JtcTY1T2wb7zW2Isc87n1hLAWpFKbyIw9lZ0ZGspyATF+RN
	 DbgAWrBmNs86t5SI64SQu18wJDHe57fx7Pe4ZobTzE39Qc8mrgoRg309ahRt2Q5P89
	 H4tkdaVcbpiLJxeXLyT6RqX6RAsW5IQMEEe7vEaZHjlZhmahzyqUWL8AuckgM5zyYr
	 VVcxJiNXJSfWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2BC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537419357.27559.5623622069334677565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a331b1cd0e457452b67772939db34e3bb513b71edadeb659491a99967abecaa
Date: Wed, 23 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745374193
