Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60193B583C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775649333; cv=none; b=uzPv/rn29AQCSjg3QCII+dHaZivwvWV01zSzpnRyV3iDNBes8mI2iBbHE9DY2AuOfFlIkUVhPl5me3NXCZP5Dt24rqQIpFmEiNOant6+xicSQoaJd1l3xlAuOlKEEp6UO/7yhszzz3FdeHHCENUKewtnkyRO1CrRWI3rrDi2ASE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775649333; c=relaxed/simple;
	bh=y/nUTCCd4uyCZOVBALcuYl1Q9bw7AGQeOzRzJHs1Kc8=;
	h=To:Subject:From:Message-Id:Date; b=D1T7s4wwIrHcfMT/shtps1/+a5e1a3hBYeBVTF7gF5GGe++do1xSOizbBuqOeBQi9rtpR9khcCBM8pE0CfOXWL+4vAK88sCQMFUpDPizOF5fvRrW7p60iMUiRB/3vIaQHv9b8+cihrWZtkpM2IDK5cAN0KsHSfwdDsyLf38s5sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQwLRS/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQwLRS/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3AFC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775649333;
	bh=y/nUTCCd4uyCZOVBALcuYl1Q9bw7AGQeOzRzJHs1Kc8=;
	h=To:Subject:From:Date:From;
	b=vQwLRS/BDtz9+6xcB+lNUyDOt7nFU0Kegxy+P8VX799WZbCzzl5cPbWlTNsmU+2ba
	 BniDA3zpv1JMYXz5Z74AOiv1lLSEW3ATT1BIasPh5IcdJNIpirbFdURcJ5SRlU+P4F
	 cdLF8bGs3slVP8imRl8XLbS0yTQ/Cssnz/bfvNCjcXx5cvQ56rusc2mkdICSLdAqji
	 lQUO9qjjp/i3AIabwlRf40SWFbFeHSZjGupG87m0Be6H6u9OEt2qUksoiz+X9USLMj
	 TSkE9OrxTgqk39rw2okZCexSB8c7sH22essTIKaCMqKA0uyOuDhRDPhsGVTNwUldGE
	 A9C3ad8yOnJXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD361073CA0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564933368.15415.4928163427350948356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc84eaafa7e2a1e33c5f3c034f17e2a8ee8e938c4470f5dfc23d80c9b3ccf28
Date: Wed, 08 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775649333
