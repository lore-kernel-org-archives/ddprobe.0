Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B294306D36
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765309374; cv=none; b=T42snwA3vANhjFaaDOnYXwjzk1HUQgMglloz2rM6x59t6ywKO3br7gEesX9+EmN2V7U0LStuUSzghTz0CwHN0TWaKGnXCuJshcBx7ECRRhUbyr+EHpot+l7HnpQpoEE+81YUh1aPLh0u8O4vyD0lPlgo6RHQT1u34huWFbn+U78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765309374; c=relaxed/simple;
	bh=i5wWiFSIGoAbeiT9JCcxcZmas/wLU1RoNAi953KWp18=;
	h=To:Subject:From:Message-Id:Date; b=FDY1LSTZ7P5WL64ueGRUtEzMkclhvcne5zYVorII+ReaBdMTjkIvucnNoKFKTxQqOINMWhEDoQ3H3qI9OZF2OwfHjtM55a4Wpe37DJL818vz6g5mk98cc6wrBhuvzrQHqkV8xDIHMnInuSKbwkpGr4MiMITzyCMh1M1MZjh+4Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4HGTKgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4HGTKgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F36C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765309373;
	bh=i5wWiFSIGoAbeiT9JCcxcZmas/wLU1RoNAi953KWp18=;
	h=To:Subject:From:Date:From;
	b=E4HGTKgLqCxrkrTPDQU8Tv349F6yDxa8jPgZeUc6+CWNcHQXtoYRZRrw9pw89baoP
	 s4EX1Yy2VMrk0VLI1Hr3m2fTHQ6JYWG6wdke98RS5EMrjN9fV0EIBli9L/Hj4ajf5+
	 2873kGH2cGkg7AoFwBlTUCUqb85w947mRcCWO5gbbgSd0QLB/cqUvw7u6+vVDehjpC
	 Qiy0EF3mOKjjA/zVCS8fVBcJdu3dYppHwTylO19mKEGFGgb1SbSQT8Y0JEh8JnyG8r
	 v3BXTwBe1xy2wg5XdWXWfN7ulsL+TulGPAHhHtVHDA7Ck9EZdbDneozDAYfyOf20ng
	 EPMvRWsQdXwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CABD3B993
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530937359.1185.2304017835288459494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c2323b692c5b9a7a6662eb1a14340100d2d330acc07520b34b58eecd9b2cd0
Date: Tue, 09 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765309373
