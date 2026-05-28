Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5027382394
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779957754; cv=none; b=P882/+YKeAUuIuCIB/HLkgrje/LCP5nA4zmh6WS1I080FLT6mbgJNH10QG5ksghjk60bC2+Kx+tLCvwOhR3OJMEREv4jAQiaJj0K0ce+LfYdKy7WjpvkF+B4Rz+v0qqIHHafSIosCSCpnUFfUigh2shTMywy7Y3RJG1dCnUo3v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779957754; c=relaxed/simple;
	bh=Iba5ouCpS0HUbOrBaxgMJsawkN3K7PLI8JPEB/CS2Pk=;
	h=To:Subject:From:Message-Id:Date; b=D8HDVSMkjrMWLaW2+2JY/RaP1vc8SIo53MJWl29NnuZ5aYN/aaL+YiFVnv+vTC56lATcGzEZwhWAfdX0ue21goA6B9CjW/5P7nms2BeQn5mqUP814qBbzczfXBUH3n3NVZkXOrXWDOaQ/Q/d/XmBxKqSMMqINIArS34WLmIAfBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPrLn4DG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPrLn4DG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D96C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779957753;
	bh=Iba5ouCpS0HUbOrBaxgMJsawkN3K7PLI8JPEB/CS2Pk=;
	h=To:Subject:From:Date:From;
	b=DPrLn4DGr1cm4kEaKMErkDzTQs7LiO57I1puhV+wHINQWBUXlBlGvF1kxExDEbhDv
	 bHynoyrvSk7B+/QCKJT5f0W5WpvsUh6BjB06NifTzsb1d4t+BYfJ71G7THvGuMJ1uH
	 2oDYwr/tCmPG12R+sbdiq+e/AjOPIV5uWWl5YvQQHvesp1by4u74030e9isMd/VRwB
	 yiUKARB64KSgIjJ8IbSrV/emlWBIZkcR9DuDw0teeshw8CurTiJGTuZ8hUoED0wWui
	 y8mosQc7W87PUGASCDNtRGIKcVsiWMfJHoBXWI6J7ZtJCaw3DEZ5/aIBssWzET7amB
	 jtybf5PIWS8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9106CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995775368.14452.9153335200071954592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dfdbeba9b3fca9989f20b2fbfea656a36c9f3d78989d79f424c4bfc69719dd
Date: Thu, 28 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779957753
