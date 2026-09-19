Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502FF28CF5F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789827034; cv=none; b=JwwJa1OMUlnxABvaLYPI9gUChBAsS3CfZhfTbTY+OTLJVdEYh9Ko68L9WLxTU++z4RiZAmVQBQOzT043E0p+A1JfTJSCnoKsLeoQz0Lv7aPHks2K2ELvSfmoYsMsBxdU2KMqLecRUwTCi96jd8XNQDkgFyCNxRwbLz+KTQKXDUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789827034; c=relaxed/simple;
	bh=jlQS7U7dj4J5jLrCoJsGgV9i7cj5whmPV63u5mpla+c=;
	h=To:Subject:From:Message-Id:Date; b=f+/PDcGYpK8ONESTlRvBz8rIYweQk1ivgaVS/qHoV62HyW3V5rGcl98eRA+TID1+NnE2Gw6VDfRl0y6i2vZYpeWfGW9LKXbr63koyBbxNFZL0err3rQOMpcGcdGHstvVE6UgIHPOFwQbnRZV3cvDRgc1RM61DKuWutUZ6HXMA/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQk09Mvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQk09Mvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE27C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789827033;
	bh=jlQS7U7dj4J5jLrCoJsGgV9i7cj5whmPV63u5mpla+c=;
	h=To:Subject:From:Date:From;
	b=RQk09Mvh7iaSbojuxuj1oLcysHFRAkEk57ORgglOJbM/IHegyBcB1UtF2GPnIdBIZ
	 reN9gYqGnjjyuDjRZsNzRWWhwwntwyseF/XQdyiD/eYgOreOBLR23p1jWldWJIp9/C
	 9UdNXLOfIzGqs4r7JS1DvPWHk6U47NpAvOaDfIgbZub8ou8QxIoYjzvMbkIbQwYVTL
	 atyOC+Jv6aM6M3/zLvRxBrGjoAItq92bsWxKvhOG8jRnctd/azX1yZXqxvATAh/0j6
	 frexdg4YcZovFHdAWMyQG7QZISB903bXIs3QfZCZ13b2LrpFJ77+FtDvK8+y+pfOdc
	 Wrg6Y+WhjT2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97DFC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982703368.13718.14883474923905846647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdba9e852bf12c1fdefe5ba40c6bd72b6276531aa77facf74b35fc9be3aea57
Date: Sat, 19 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789827033
