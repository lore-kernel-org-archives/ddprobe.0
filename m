Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D584D34
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724799354; cv=none; b=Wm139Pvb2iBeWJUoFkMhzRViCbUDf+htfrhKzuVOvVAcZnXkHWTlUtr+zL2A/Rp+qThwVmycRUAAChO83bVzoGPCufvJI0OHkXMZHQvKaQvR7FjPWoAtZNocWBUnAwOARuliqVqABmO5o6/IdtixRpxccQduOu303XIDEmZ4LE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724799354; c=relaxed/simple;
	bh=3rorywj1Rz7miBQRhHXZWNWfTQ0iJRJgrl65H49IxUw=;
	h=To:Subject:From:Message-Id:Date; b=eSnfG63dvby57aXypq6KJrfzEgYTNM4JBms4q0kfLSh7lGoJ+nNk+LB5anE5jUC78hwqlh6uoeVGuuBAzv/WRF9gFmO8Mxo0QqyAARwiftVXMDZXEJnWfZJqPkVX2BU6CUB83mDAoeEzmCPyPm1sZUeC4PZpU5LI2xOEd4sZoAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMlbf+uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMlbf+uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE3CC4AF62
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724799353;
	bh=3rorywj1Rz7miBQRhHXZWNWfTQ0iJRJgrl65H49IxUw=;
	h=To:Subject:From:Date:From;
	b=DMlbf+uoaPXk8COuU0B6HVn1LOMvh5pW/HB3sAv6JkiazuDQwlTRNM7rN78g/RUV3
	 Ho9t9OvUqAOGNXqtIybcXGhO/2AChYBaiok9/FoskIdV+yCMXl4uOC6QN9VV4oHpEP
	 HgZHr1hdtSL9Q1rxJ0VapAN9wn+JeEUMqTtxONfrro5sJ5lXYIFjKN8qqnQpkMe1KA
	 JhArUHSR+glzyGneK4RAK/kizEWv1mZab+i+ti5mIVvTsEH59admpLmKlx4FnK8vGL
	 K1rJcgPs+K12O3VERXBpuZGshtkOGXgy9W1nA+GZ87iON+vwOrndn3GHpfK1X5AXZk
	 PjdjsuDnsAPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AC6C54742
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479935361.13823.9299848289116313834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc5ee39a02f0a434b072c6dc4ef81a88105504e137db083f94dc98e04954f92
Date: Tue, 27 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724799353
