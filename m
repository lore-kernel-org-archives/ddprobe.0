Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C515680
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749095994; cv=none; b=s+DXZXqbWD4u7CtVN1Wsj8dG4p1z9wFe8OTLn/X/yxQqq+1+xml7T1ELOLZq76WtMG6eeTm5GZ1cLSUJRxLFoe2WkWvoJCA3zvOAV70GU2pA0CM4ZzxNuJgOoKNeafRsHXkD+sQF8hL2XK8C+l5BCkIa43KfxPTxWLe/0qRiGA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749095994; c=relaxed/simple;
	bh=M1Z710X48VO/iGw/YYiG3szdEDuompKUEEvKK4vYuTw=;
	h=To:Subject:From:Message-Id:Date; b=ih6qche7r7S0V2d7iVR4KSroeM1zKgyUnKjWrx64UYfZAJrrEIiSCk+i1oWHe8QCrhkMZXXiQ3hrNHiF8YrKVDCmFRnixz4cTXKkMSyH03fqtDPPAhoQ5fI9nXj8ep1fNRq4OBvCZ6Ks7KalusRx21OVPxnvAon3QGkqdjoM8TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asf+DJtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asf+DJtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749095993;
	bh=M1Z710X48VO/iGw/YYiG3szdEDuompKUEEvKK4vYuTw=;
	h=To:Subject:From:Date:From;
	b=Asf+DJtf2E0dX95YUUZbBLGHo9gST6lfb1L0e1ilBQLNYC4MccftoCOvEjC98lSri
	 PSPCClMUSFuC1S1wUOdN5Yz5N4MjdOU1qEk/GyJl9mneHGuxJiPOkEMIMfOxMqgIGM
	 Qvb7c4WMNmFSwW7UYOOrAx5+WBa7CLIf5JinTl6+WE0ksjhyGo12E3teA3fBXvJHxE
	 3cJQS0YvpZphEmkePBCTHtWscJlVHwdFqlV0+hKIbI7lqR3SDUy3H5dwY54Jb8TggA
	 5SsEcSI2UKAElMY3faMoo84kFPUOLAh/eSbF2lNbJRO3rMZ5gsxaYTqrz2piSJAtAy
	 7QhA1W8+6u82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A1C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909599358.18555.10995796424730097706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9743fe6a63111a8bf7ec145bf5c45fd2e570de63ddd3366025d5c9cd85b1e7ab
Date: Thu, 05 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749095993
