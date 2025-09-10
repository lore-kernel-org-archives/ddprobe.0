Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019E3FE7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757545194; cv=none; b=L8R7UboBIQves7E7OWcLtfHhjljM2Gmj4RHBM6DglO3jSduQKzGFggSYdU/uiRDYj2u2cWD24C8K0wCvmupsLrWCXHPkNuFxOy8obV9cyBqE3+jlNgQAchItnSwZyb/2YKRGux5yLxqyvQ3k4kqKh2utEfNxrffLi78UmpFdTyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757545194; c=relaxed/simple;
	bh=MKDybfVNKVMLyhndeOosJm7BIbK8R9zNrdvgoGNFgdQ=;
	h=To:Subject:From:Message-Id:Date; b=nMUCufpc72Jt/FQV//+2jhTVv8YjcF6g8oMr7b6Pmk7FN1X5nz1kFsZBUytv8H/0FwOGDsD1pOqt2aBx+bl2Se1e9RlFHpMD6Gp5kAc6OBXMIO4hFlmrOVfURDB0qiCSBwnzDyxihi2mHolPeegHo+3JIpxeaUdqakVSEOsGC0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6i7CVJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6i7CVJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757545193;
	bh=MKDybfVNKVMLyhndeOosJm7BIbK8R9zNrdvgoGNFgdQ=;
	h=To:Subject:From:Date:From;
	b=T6i7CVJKMig8n8vMybYbApShbzKdUPggQzyDAELLkqn3IeUYe1+V9Y3aD+O/lDHbv
	 0LTszGSV7tFDZ4V1yxZnyUWqPc2vSd+IfmaqpmAdYi8RU/pEXWFG/A/U8G9FEnkQ+p
	 dkMF/5sOlgv10SYh1O2eh40C58LEuU11Wr5ls9lIB4qcPPyZ5NKDkP6LwjMm21QmrJ
	 9CZ6w4EhEr+3zoFpDTi4CTQb1yG/sVGKkA0pmPfznflsqvRczKUvt4DiAVZEILHYNM
	 juUh1JV9dtP0ZCuUPf+lVQLa5qsDaKSMiUXatuyy1LgB0a3E74PH3z0Ye3oSMQUM3S
	 jPkrCgQcp6aKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7BCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754519357.25411.17600777707656780906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cd15dda746b3244950635a7cdae47d8b4e6da34e461ee54413b02802da1ad1
Date: Wed, 10 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757545193
