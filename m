Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333FA328DB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724870154; cv=none; b=YwtRI18Vg7JqPz9mW5wvZ/Ry/0/fMis5VMyhSngMwTZnjst85tpkqQ+EtkUHwJY2D0PskLskBP4MPsLVD8xGRqM0YAxK+wL7nwYnBlLYWuwv91UQaubMpp7rsWJzwrfEcEjnLIOJiO5SWXtxTbWCJx91ppHJRJVvV/fF+gIsN7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724870154; c=relaxed/simple;
	bh=rgjluhBqrj5BWA5oTq1IXY7Eb5TZdjpGOuvH07VIy5U=;
	h=To:Subject:From:Message-Id:Date; b=gaKeN1BLbnwgecR4lvhg6JBhZF4TPNktTNp+CsUd+YRXbt9WZRXzvE60PxSDcI6+SNW+LvRiuqr3Pmgx+2NzgFz1Jd3aNzgzMbbhDu5jl1g8WJg26RmXaADGHIlYbuyfFUewzc2LHnowKcCkmXVct8gepA3kK5B7UtjAzFqvXIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGDp0xHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGDp0xHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1838C4CEC1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724870153;
	bh=rgjluhBqrj5BWA5oTq1IXY7Eb5TZdjpGOuvH07VIy5U=;
	h=To:Subject:From:Date:From;
	b=hGDp0xHqeQHawkjLd0RgsC0VmYD+5jnG+AuoNYeYgO5opTKvUzOKK6srPm83JOadU
	 CzRX1Ma2BzP+5jNvuwb4l48NV2517/adKefoX1DkplQPKavh+gpSSiEC+lemG2NAPi
	 XDq8BTgsFol1pSqw6DZfG+FO4drLAIepn4TwLFjXJQU5B7p89tJ1fORi4PrJIKKBa6
	 e+OTUmqMYQQ4zHNKunHcAiNBMMj+rBF5p72VEwlb27kHhnrWeLhe8MgVWviPANlvgY
	 fjRR7yvkGBxrld+TKYysX+UEpu3NWcyjnHfcmJWOgo8U6wYR6GpMSX7BfHz9PX2xge
	 iGw2PAAmviL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F7C636F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487015364.28440.15093529651113529980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535a9544720319fa29a385e48a1d1c5562e4f488e6c0dc5c9a6b67abd694022e
Date: Wed, 28 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724870153
