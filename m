Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D09388E62
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791711634; cv=none; b=acUIDqTbXu1gPQUQiaJtOO+7dcL4E8cNwJFr/0mCc7xmoRdEhZJRw9mxc4gjkBe3WAed0p9P+x0rPWulSH6Oo+lGnD8e2CUD41zwcUUJCIjnsxBNVMflePRfhq5DagCABjvTdDMVXnIhQp6bL5vr3b/qxldOqEpXdpBqyKAfwfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791711634; c=relaxed/simple;
	bh=fXhMyRw1VhzDZPJBKEMmK1g9MDb8yUv79RlgVaZxVk0=;
	h=To:Subject:From:Message-Id:Date; b=OIkUS3AFnxqbl1Ldb31vkkNfdPVEy177MOCWY0TBQna+5anzPHRfBjR33K+eN36Q2w0bCVwoVntze4qOwMP2erRSO4zid6hjqv2j6g69WdLMmbE/h8rZbtwp5V7wg2tzBpeiFsBgwXwjKHw9Yjx7RdKRfDhpqS/H42U2Q37zAw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iplt4DAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iplt4DAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE99CC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791711633;
	bh=fXhMyRw1VhzDZPJBKEMmK1g9MDb8yUv79RlgVaZxVk0=;
	h=To:Subject:From:Date:From;
	b=Iplt4DATo+8+XA86JcVpmZGyyHQJFWzZAZp2x0EQu0Dcz34SPN9CmUQP84GmmUFlX
	 nPpm4LiEQ2dpbONTF4WNj7p38SnzfKHxC7NV0MIbw1WXBt5V2RQzWBcK57c/W85V3T
	 TKipEQ5Y1FktSy1X/2xYYMV1hcFpyQS4xw9a2c6uHqH52jCM4DuLT0CCDZpJKyuw8+
	 a93wf1ioB+lkcZ89ruAMlGZ5Mnqxz5/9bMhv0NZbfEkTBy35eoQAX4IrzB8RYBRhQq
	 /z8YoIWE1ORHBr9l8pdT3ugsdIfnoCJwphJPx8srQgn+poGmGqGeI1uXVNXMvOMga5
	 G91pOzvZ5O3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6126CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171163372.19536.2177869671705588591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab900e378cec07b0af3678f27ec0db258719f1a336b35253e81deac2a9d229d3
Date: Sun, 11 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791711633
