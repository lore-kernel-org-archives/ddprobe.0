Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2304227C842
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757963994; cv=none; b=EwlTWFidVDPm1MVtyYQoCHukGJLtc5f1SITNjOV3MF2dc16et5xyJWmG1IHOfVgpxTeKARD/lhA598yRedvJDA7vM4stGRvUts+7FIZfnrLmPkQ69XSUdq3XsjJGxL6ibzYmK3bOHIPYVeh97ZGE8KMjzN/ZOXMlFMBpbaSPIa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757963994; c=relaxed/simple;
	bh=iX/ZgjJ68ro9DfU3CMQZbRlJkAyCHNz9olZpy26GGYA=;
	h=To:Subject:From:Message-Id:Date; b=ZN+oc2eLJyL+HEs/g/FDBD62AHsPPVliIzqiWOQoMMSRpBGz7hnG89veu5BFAdWNJVV324xiTaRZ7e+RbcDEpHy/e7u2uP8MLTDQiW0+/U9ZaSo4h5Bf5sNSdVPQIuoJGYFF+NOZuy+A8FvS+kunf9XDJwEfZ161VnqhifvKYy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2LLUY3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2LLUY3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757963993;
	bh=iX/ZgjJ68ro9DfU3CMQZbRlJkAyCHNz9olZpy26GGYA=;
	h=To:Subject:From:Date:From;
	b=Y2LLUY3FSKk3mndQTRIYeIDhAFws2+uh2DMTSD6Dcpy277/l2Kkss7QXbqKd85MiF
	 xVo31pSxH4ZUbZI9xJdefOQF3JwX5Zp7SjMB6vXTLGbLD1yxOmEd3MqhI4S1EBzaAX
	 CI7ncdcpZ4wePCJRbJUjap8NFiStGptTnEsBJH01gIHpXPQmg9onewUsHwL7YQC5SQ
	 44gSrSiyd1GepnOQGJkVxSWATXUsy0H53q4DWeiDieNrlr8IOD0mSrhBHTX1MJGlau
	 N+6QXcbnifVg3dJmq1CROi/q50MoEMFlZjCA3zNOkVDBv7gcphcPRPptWumUdUcarB
	 5kLW9kfmHti3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDECAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796399357.26641.3635781252772242202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f2bac0e4a1d797bea36360b172a78adf553c95608f143fad6f2937f46d40a5
Date: Mon, 15 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757963993
