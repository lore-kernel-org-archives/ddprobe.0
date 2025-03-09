Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD9B18AE2
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741486134; cv=none; b=qreTHl8AWA+jkqQT4yOp4qECExUAT0IOa2DAUkesc9Q2o3GWVxo2528H22nsrh9/OoUH4DnvhCB36v5+u2LvfNBNxfy12PFSWyXV5lSX9mc7tV7MxPq4BZ4qiK/W86WoHFpz9Fx0Y4ztDWtyW4rbnNJS1DcW4KTEWcp8QeEoC5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741486134; c=relaxed/simple;
	bh=aHw3sFgw3VPRMSGzppEMdOYyvp3edu36TfCHhVoGsYk=;
	h=To:Subject:From:Message-Id:Date; b=V4Rrh5hoHEugVKVPg3+Sg0/SdFBxKBeIVj9mo8OalGG63tYQFKs1zp0il2I83cyZeDYHUQ7HYUDCRekvU+7hJLWTNiO7dUPTtUSFURXbLZ1n9oVSk8Zg8gozNUKJR2cjKOxwmKfp8ZZ5N34Ya+lf4PaiO6o5cbeoA+bbEsMVHEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaqAbPOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaqAbPOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF249C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741486133;
	bh=aHw3sFgw3VPRMSGzppEMdOYyvp3edu36TfCHhVoGsYk=;
	h=To:Subject:From:Date:From;
	b=KaqAbPOuFms2Dgzuv5uO6lq/ECBWQgYdA4PoH7Sfwo173VDHSF3bbBWjLPZ8TTNEE
	 i6iJp1gZ5GodO1kgGI2WrzR/epCfzE0QeH1UUSIBmn6YHqUAeHme1Fbb3K86TkF6Q6
	 K8ADrn4wTNjS7ISJzw27mUeP5ujj8UkQ05PNkC0E76eGpbYvZOhdXNXDAfm34o1ik3
	 tttrvjzpXP0TI/MMRuww2Mh1nP7QDfrDk6RJKaFPnMpkMDnv8ic/oDWiF5PfDNsP2n
	 TukFQMljFwf9/Dg29BD6I1mxK6r4md6+4GVnAOWA+EvtYSj4p75WaXUGbfQBq9JEIX
	 UaHuqnmLxRKSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C80CC282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148613360.24091.11394823435836065100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae73e2afccb0e7d02ad26942f88ebe8580992f3c3cc117024f203ce4820dcaf
Date: Sun, 09 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741486133
