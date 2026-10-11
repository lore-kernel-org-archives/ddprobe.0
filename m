Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B892DE702
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791715834; cv=none; b=M/OoUt5fmr4r1MHGO402bwhGdzWwv5zuSEHB+VzTk24ksXASeWx8iI6+5C8Yyq91I3U15AKwUA+hoUHb0vTa9b2CN8SoXEHp0CprETxeqW1ZXC09OLrErb6gGjvuGCay3FdksgMYnvOolYMPlIYoRsGKP3rBwQ+OUfM36XmBo8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791715834; c=relaxed/simple;
	bh=8pD5lbWuKZqZ5+M4ng8u0bbLJfvIc/REdsma+849rE0=;
	h=To:Subject:From:Message-Id:Date; b=mHNCYRTgWrgOGYV4/16sFZBTE8GtTMNrKzOEbOlelcPoLFh0TiA36Ob9SZB+i09tzQJ4c4jWKnWLFubHc5NWKSQ9AhTBOBWF3bA2mIk26WfyLQk4eUIApC8Jl4AifEgQhJVr4/KG2Gu3drv8+iIIrFSdlKMWW8pJZWNsPUlGzW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP5cqtC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP5cqtC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6C8C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791715833;
	bh=8pD5lbWuKZqZ5+M4ng8u0bbLJfvIc/REdsma+849rE0=;
	h=To:Subject:From:Date:From;
	b=PP5cqtC2chqjEjZNW8h4A3aVnjcy36g/KtVybhzUzKDAFSSiOp2QIbHgykH9yWgvA
	 WzE7vmRy8kosoTQMZAG7fcuZ+hG/6JK4kBL3t6voRJ4u5eBztt9eUBKl08xXhFNl20
	 pbmaRwwiC9T/DCnoEp1iyrbWNb+7L+CxuBFCmd7LHc5Q9xLIeCJzNdag8cAqiKBD+X
	 KVfhnlGcmJS5KmZM82qXE6uFAUdZrw0E40Hu2vkMV4HlYPNEVGO2nrv6oaThyJ0N7f
	 4e1Rv5eZyXmhTDgJBMaUqROi8kW15MzoobRqxV9dOfmqaKzs1cZaP+POevX06nwMCK
	 aUabY61Q5D0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0767CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171583368.11454.13884785185344639175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c32a0dd1017253ffdfd8c68796e3a4b1ffd69bc95ae9b5e310188556a19df98
Date: Sun, 11 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791715833
