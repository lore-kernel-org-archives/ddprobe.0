Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A88921364
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743173395; cv=none; b=HSfQ6cuyta4FvAHXEzDKZ6FQqTX+j4jDrSDhLw6nTkN5HTNVOZ30diBuqLMdnPs4cBD8jnK0U5DXCx58mD/6JXyc3hKgkbBFl5QxIp11BQGmqEiJDRcuUzWGamH8nvqI+abkMIUZ//0xOFjOkhLk5bkP8+i5W+anOWHYZ3Ihn7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743173395; c=relaxed/simple;
	bh=kPVuqKvatx9dfuh8TolDUs4k6/bJYvx9jEq+rYrw7BM=;
	h=To:Subject:From:Message-Id:Date; b=bYXMPGYEm6WLGMxUesXb37gD0XZ19URee/0tmClUD2S7h9k9spY4h8NKdvDLDQZfSRv/8pgur03dpyujPf6xKqZfMoixI7AprKpw4Az4a/8DR0ZirIN1/KZvBZTOFL+lvQZn8Ff2o6akSkNCvXttq3GomRnI8CwVEwMGuvpoFBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1IKqpDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1IKqpDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD649C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743173393;
	bh=kPVuqKvatx9dfuh8TolDUs4k6/bJYvx9jEq+rYrw7BM=;
	h=To:Subject:From:Date:From;
	b=u1IKqpDoFFBH0h0lAmB2c7hb6WPBvexMlNde3EoxwWP+LndOEAXW7adgEnlBCFP9G
	 VwM8D1OzGoj6xLtdbXV87pINMe8TzNfqsvp+5v/ssLU3L36Hl4HiOd6ABzglnX3z53
	 kD3StSJzy0jbTXgiIMja1obnUAC9FkMNz7Qoobzk6tDCC1lkv+n02vDnVA9o704++V
	 goFEQp+BeuyswcPORXUp3WI9nlvytlw2c4yh+vOwuVKYowXPZvTe+GenX7BmIaoGwC
	 qtNYISRSWodoKmL1HQEp43f94QoN3I7SpLKp74jLTbPSnM3CApoOd/VKECRxhFzWU2
	 L5lZwWighIkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B345C36011
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317339361.11042.6310005466137267118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ebdb175f3a2817b0680dbebb4ec6105682a201a619f6e5fb52c8cc8a688e5e
Date: Fri, 28 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743173393
