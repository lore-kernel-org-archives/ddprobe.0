Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79C728FD
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756214393; cv=none; b=aufeAGtRONaSSGtrFEGw8Cf0sGPIHhnAb5aj9r5NLgMY0c8q7WvxMJSHH05mS4pcPj6ZoraNmfB4jcBak+SKhwDePEd1++gz+3a4s3yRqpKTHWSLksZMDeGzD2m7D/YPodij1420cYBurq3Dm8nr8mgfyVGqhhGWUWhgH78rq3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756214393; c=relaxed/simple;
	bh=RAcAJSN8cpiOPQl1Oy92ZFsn/4BNwgAlZd4RxPAAOMM=;
	h=To:Subject:From:Message-Id:Date; b=qcwoUs/tdmV/Y3ApRJShTMY9+CmBN0TnDB5aQjG2z5OHFo0PSKR9zIw3esBn6CB5/1MipcPOSqOIi/YtZv3cp/HJcfxSmdcXrza/fc2p9HERoInsWuVDPPGNgyzZscRPIlu8mO2qU4jBw8SQ+FmqxXNHHwMz9X4irRIlgdX8vmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+Tdid+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+Tdid+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E561C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756214393;
	bh=RAcAJSN8cpiOPQl1Oy92ZFsn/4BNwgAlZd4RxPAAOMM=;
	h=To:Subject:From:Date:From;
	b=Z+Tdid+xcyIqivZ46RMzFjTcYAB18QdEcU6hxWVFNqCLk79KMqw9lAPDEDmnAQeEH
	 YPTtDM046LQsx1nh4jybf+RR10VBoTHq3R/ZOPtfKUUiANTusjKUhF22rJGf+Ttcla
	 +ncTGshL8EV3Qcj+kxUViMcmiYhvL52BJT2yoGmZK7BheuCk2I2MZoQmvLC5gn7PlL
	 c5bPzXzA8Tciz4fqRqAYFyjoaGLWzcaArB8uuskC+WwGrER6LAqDEo9ruhSygyTE4E
	 B9rp3NwVwMNuzi5F8mGxZU8Fx8I3VgeAwG1Hwod9dastdD6QXti+lapeTPCf5jwBvD
	 C3Oa2PWZqY1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC36CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621439357.13282.8300237517954959299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef60493555d7aaaf0b0fd5956012beeb97311c6c37e8806ecee6fa335a1c0415
Date: Tue, 26 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756214393
