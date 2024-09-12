Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85022629D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726135553; cv=none; b=CYp2L1uWMp2/9uH5DbgTF6lXaIi1dBPjEHTHsROFnWHbDe36+NXcOK1RFTxgfExNVj/moCAEpLfS8SI6u/55N7cvgnEffRxo+8F2zDnT/weL/0Y/fEP0fUxQj7uxS9Rd8bXx4oD3oq1BOdPRjkTFC2ydokexmzIYEwDgFWfBM14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726135553; c=relaxed/simple;
	bh=KnVwkNJhoZa18gWkbSZErVXLXdptXmW3HL7wZZQ55kg=;
	h=To:Subject:From:Message-Id:Date; b=GPg9ftzyq33GOG5WkO/4ZspIpugkahFun4rcq1DAnNvO3chpMVwz528eMWcHAXpXu7RVB5an71CJ/NTmcmi0lHpDAIhYNk1o70SHzw9znrt+s1A/kGyU7SDhbHWmp5nhB7koWAkkwe7L20kdH8nunZ2I1KFBwD0vZcoXKEtw6Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWnbc4ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWnbc4ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6836C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726135553;
	bh=KnVwkNJhoZa18gWkbSZErVXLXdptXmW3HL7wZZQ55kg=;
	h=To:Subject:From:Date:From;
	b=XWnbc4ZY/xs2MeRQwGFAIENgkG7Aa/tBDHQTnWiHB3dm6P0DHiW+tfx+8kH1TD4hO
	 /bKHpbxFCW7rZtCCA9SQ192AZVb/5XbP99ngS7VFK1zq1ioMQXMo5qVddwunS+AexI
	 DzZQwwS7KbAY+HkqLf7j11cc+aQcfoB4TN2B8OaDMOSR75ELQvD+d732dLNtpTDByD
	 TIFQqjLN+aqZuJiyx37Ko1eJrIu68xVTLQltd372S+S9CJIvjmDUyYRATG0FMhqcCI
	 yV+oEwXFb/32Sb7KPOROy/M8iT7vIp0S/16gWUtTqyWCWGUnsf5CJlB6JBzhwHkbYl
	 UG7dc7EPZ2D7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95103EEB584
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172613555359.4378.7328135575241139547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a034f3e3936dc8d25ad8f9174518d08cf894bf1c19cef26a7793a858a900e467
Date: Thu, 12 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726135553
