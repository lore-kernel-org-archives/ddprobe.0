Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D4A269B1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641694; cv=none; b=fv0JxzIe7qnQlbyvbKpua9tbeRwopCPVdBPb/51t2yHhP59jjyKXj26H94aDziTY3ADB3S5GKRbp2CYBc20vOwWOw53SJ5pOm0lhDYWSLDEAUkHfd5hdOYw4QqozTBddNYmz8ZVtvSVOcyDPRdhTSYE9akH5spIgRetytTzcCKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641694; c=relaxed/simple;
	bh=pfjvUNzcncHqx8Ld3bpQldmnr4GbMcC7DQKR8f1yhnE=;
	h=To:Subject:From:Message-Id:Date; b=ryMqbO5ThVTH+fsPtAZVAUGjfdvFANcRV96VC0SjJCvO8BsDXbnqrIqdP8aTMvX7ljSeHi3H2qy9b00mfe5Mfbd6o3J4ZlVaJzZTVEGYQAJMxvK0RS2jRCQL2ElRAxQcYDrSC0kra/r0bvdrZp8sjoE9JmtNv+JJGYEHOBRH6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNMhVMhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNMhVMhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BDC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773641693;
	bh=pfjvUNzcncHqx8Ld3bpQldmnr4GbMcC7DQKR8f1yhnE=;
	h=To:Subject:From:Date:From;
	b=KNMhVMhQG527w9tOdZYoXdIvETxYk8D37y+UG65pknbuKtyYgTeDYSroRffMJ8EXJ
	 jAPKcCOQDChmyBqiW6wolwqVulPEWUMwg1ZGDAfUrkyz9T6fIUBeqOHzgrMJd68udH
	 7geBEpfB1jjYpDK2HMB1ALCYZntgRZo/jtpl0gD2241+iq1W1AlSRCIAcT6KmE/OR0
	 BP5Lg6tx6npETbYHIb4cVS1olwZ2kIO8JhDHppweo4QYciFMuxl81vq74fWlvxLmV0
	 Jrrflsrp1TgpNjO46ulwFTO/fRz1qGNqM8xHDL6yd93D/Qti0GtipvxkKZl0H6OunS
	 NW1jUUZmFY8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9EEFCBBD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364169359.5868.7352339630020388568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae22fc94a634ee4341e3259bfcda542ea4696d681620f9aeb8c52a8fad7c3548
Date: Mon, 16 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773641693
