Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D872629
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760065794; cv=none; b=uDDFMIdhdRHTjCrSrClJ26RuqGyz0jMUlpfPN8ZfwgQg3QQOimkENtL2P3emEF4SMPLtF3U9LwbW7tgIUrjedUGJ/d+tserR2JO7cYrZL4TNpH3H/60qqp+sApLQEuXqAi/rsUJOt+dVxJ+RGvkOy6PhPOMRT9OMlqvHiX+5J9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760065794; c=relaxed/simple;
	bh=jPSNcz0JqfAJiMl6w8p8aGmFY685bKLDT9cZmrbj/9E=;
	h=To:Subject:From:Message-Id:Date; b=I/XXSGLbzvLyMcf0V4ojLylmnjot9ScTl1xpTjvGWF8zEVWFp5eOtHvsTUMKg0ZVP4WXpsk+nSOCqFa9Lp8O+gRap5eMXh52UTnjyRbaEchQhdd/UFC59XMyEab6CLozn6AGbr/j8Nuvmm/Pihmb1jkNK0tDKrkHqhcbH96pwf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dae8Alpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dae8Alpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760065793;
	bh=jPSNcz0JqfAJiMl6w8p8aGmFY685bKLDT9cZmrbj/9E=;
	h=To:Subject:From:Date:From;
	b=Dae8AlpcmeIXfafXWog4+tS5JIn9RVwZvMNdMXAt2XYUqVTG7RWW9lyhuWTwwZbW+
	 67dA/bUVRNkvmICoa+W7L+dBY9vJaMBeT+iStIh7eUkUqVUZHMGK8AERqNafITXdN6
	 oo4ao1WNhELvemD4IleKtpoAVYs/XtR2by2XeSHWKZtRQrnAXENAwVP65LtqcYBiru
	 OgbIu1+nv6xkBP7yqeVlPirj0N/X4rxLIiPYMlalPgMKZmrAB7M3sRgPC7nngTDZjU
	 zSX/b2dAiQtLaq56guC4Ei9u4ZDY/s9iboxRcB9eZ8r+liqCbUx5UlCK2K7PkWdZ/s
	 YYoUi6pSkWkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950AFCCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006579358.9150.5717622734888984454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738fdb1a5125c4ab8f14aa692e7b3e88f2e628332bb1c6c911eb90e23d54588a
Date: Fri, 10 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760065793
