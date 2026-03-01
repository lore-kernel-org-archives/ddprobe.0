Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B77277035
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772343894; cv=none; b=CPu5c7N/phkTM9/XkqmSHIwCw4IldP0hUcjJfjIf0q+/Om51AC9f/dEtuJhg3ndgWIPnuMW/+o+NTI6EAOm34AJEGI6ktpT4j8UVFDvitCQPc3qS+l5c+vVdkQzVQUpVle/wtsZVWeDbs/FGc6TKkzyYwrcc4sWD6k/G8HfPYEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772343894; c=relaxed/simple;
	bh=Cx83eK4pLFzHFXC3sEZ/SPy9qN245s2+nBWtN/yhsRM=;
	h=To:Subject:From:Message-Id:Date; b=SgBf/p/AG3hHACJoTJfyJSIk4wGDdCwbD6Xh6CrB8Fp/6gdUv91+XOM56HMKDOcTROBT8POoGRmPRJZXG7Yg2J9HqFzKcrc4p1BJ5lwpynd2Mwr3+NkpHSUIMAipgT+idaegaJ3UwcbeoYAcf8qIoh8tm/8wOHzsGwMBzI32hSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1QRtBsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1QRtBsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B237CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772343893;
	bh=Cx83eK4pLFzHFXC3sEZ/SPy9qN245s2+nBWtN/yhsRM=;
	h=To:Subject:From:Date:From;
	b=B1QRtBsT4QIZmAEoBJCUgTcS0gOPd4vjEed+cgCIYgytVy2SZTeEF+L81qX7tahQ/
	 aryLk7HUrdrrZUDd/v/qIBlPxagQagWUMmagkgh4BHf8qAofWfxGTB9gRVCAboDDxO
	 flcqkek7z67sGE5I0NblvrrrlRjH2yoOmIdQ67D5ZR9uV8FgLKzW+vdpWGHxAtuBcq
	 SmP6vSsH8PVts7U8t2Cx/ObY88JDL655VHeUZo8gtPu0veYzSFQ7kZC638Z+N62kGo
	 zKHuBZAjaJF8qPaa9kWfqQVXHx9tlc5ePqTjDFvlpCpHX4KEVf1ddDQLIeGYnMcVeB
	 ZTRqh+XClXT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D551FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234389360.11542.7168347523364278593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9003fc8a6630233eda5d1a24fb679d0942609e068161036d3a83d615d06bb4
Date: Sun, 01 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772343893
