Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127AB13C918
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734041754; cv=none; b=cD39jaNCZ+CnJRpehKK1S0b2C4nu0OSZQGU421xrZsOCbmhzMz9aNJxtXL5U5jUYG2SkzMGXFET3knEj2ZsIk/FAr5/5ZNILlWP004nMiGWzbG7DOmaQir7zcXKuBTQx3AlT6AS9AB7lK3g7bSHFMBDq4+bLlDYSN2dKCYsC6MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734041754; c=relaxed/simple;
	bh=A2sqp3uAgRp60J8KXZhA8sYrLgWOQrvk6zoLdA8jgiE=;
	h=To:Subject:From:Message-Id:Date; b=daDKFjX3MrNFeYh4yRs82aCLo2kAXZV2jaft+KpRucBaTyPZDG4FmQ4/zZ4S5sWMp2vaBldHeJbNRGPouuqIzIgScPMdukgp4v9uyZM5XQ73WV6I6zkRTzMXbKche1HYh0RYQvhmCqtoVlCNew3wS3iodxG9irnH57hPfBX497Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gItzT+C5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gItzT+C5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499AC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734041753;
	bh=A2sqp3uAgRp60J8KXZhA8sYrLgWOQrvk6zoLdA8jgiE=;
	h=To:Subject:From:Date:From;
	b=gItzT+C52T8BFjrZsNx9A0pHhPFlmpwUTC2cumNFezI/mrsmEeG/Amdi5ssv3yz01
	 L97s4H//g3EL1kTbkJyhlNO6XOW4CcQdwoZGma095OdF3cFXV0udLyZBy5PolNcqix
	 AXCAg8NMgw9io0HpvF+K62qcwCLZIUnI7kH/Gi1lSKTEOVO3ZqefTakq9Vw/J7Yp1y
	 0+7fmsoe52/grIxgp3EVlWOIwv9X8uSVK5AFypB5UWhQuVXA1CvagAFtSJejm8X9l9
	 iwIZsO+PO7MFxD9rLA+zOHAx+YkGFQ3LTwOD+KP7B1q4cyTqsVs8I874e7y+BXie4T
	 vOpYpLHJGbHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A0E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404175359.30147.9846102037474499927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6ccca5bb77459a2c3978427dd1d10cba174a161d68dcd3fed81b52215ae989
Date: Thu, 12 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734041753
