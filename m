Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4294515852C
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725044154; cv=none; b=JvDf3WhILSYmADxqpqxHY+V7ATLiysTbffKaNbPUT3bryoMUmnhSDAkedpS0w2gJGUJhhfxcAWkfKUARlhKh9yU1LUG4sNb5iA178dTscSCyvGm2lJ7Qj+r6JVOf4+SJkDNH6u97YdXB+5lxOWiQS/f/op24ymAw//DA9WuF8CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725044154; c=relaxed/simple;
	bh=C4NSka3hJ4xQb8sftWZGnIm+CK+DXA+9s8dFk4wZAgo=;
	h=To:Subject:From:Message-Id:Date; b=Ke7nRGCHN8cLypN4JqIimEbZ3abkd5GKeJsU66SzgsqwqAotuz8b63Lnja6Yni8N091Gardw+HVRWxqiJpv9Oo+b+aPI/8uLgOrnzir8Q2BjXFdt32abhaXpuva0rB3bnkAn/odQnmL0+uoAOI4XT3NtZTloYcMIAW6VxSLnw44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfiRTzvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfiRTzvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15DEC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725044153;
	bh=C4NSka3hJ4xQb8sftWZGnIm+CK+DXA+9s8dFk4wZAgo=;
	h=To:Subject:From:Date:From;
	b=qfiRTzvNGmwEaI3NVzHX/h/spNzTCvIErublpVNrshz5QEXs88W0JHrDaD48ZSb4R
	 PuFxsqSwHecf/j32Bk7ulszOOjJZeEzeeNQz0xpI9MZgZgDNGH3MT5IY0zZcDQFE9V
	 2DsXo6qT+1xTHTqC9xwSVNG9QxX/1p5cXvF7/cZJUkMVCEDWvtOFjWzu4YErHB9oQJ
	 u8hf4wNoM26V0R/Rjt9o+kzMp0bykr9xcgGlPYo6c8c6zZKvAmQU0sr95BNSVHJzod
	 Bv0y2PwepOFzLdpevxW6nCTWZYc833iVeXKk4YXwZyr42FnS7/WjMp0vONgK9WceoK
	 HjuuExXWBFwVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C2CCA1009
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504415362.5332.9093133038721810222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353552f004f55a65af4b37a5fb064f036617bae3a074ad88db99988821315e44
Date: Fri, 30 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725044153
