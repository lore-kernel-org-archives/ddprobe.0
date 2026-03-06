Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1233C188
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772823294; cv=none; b=te5U/NF8P+A/YONgKlPuvWe4w6C0CKSOYhiPRGfI33M+P8qNyfyLiCeTnInlQIWc6N9SMtUnAS5raLl0QqXPv6cSTQJ6lCu8CSwfBTnculWjVfdQvLP5yZZXp723AU5uHOrbfZ/Nhubz88zcuKrzCPqph7Z9wD9UUA+cQRfouAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772823294; c=relaxed/simple;
	bh=aBG1hwWWNYEy6ihqrwQRDYqh3FdrbtsEJKZP5LakQj0=;
	h=To:Subject:From:Message-Id:Date; b=JIYkc+ki0QOOgo000CkUYxmQUsrAgTdCEKbU5Es6p1GNW5JsaG/dUdpMsehpYfae5RvzHsDo66P9jsFOPbxEfo3pyCoVETzaOcq2SeuvG0Bn5T1UoOpRwXJEM063sJSYSaxhjbbWDV7F0Dd9grzRvgL48itBcT31hckE6IPx6aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQZCvKBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQZCvKBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4042C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772823293;
	bh=aBG1hwWWNYEy6ihqrwQRDYqh3FdrbtsEJKZP5LakQj0=;
	h=To:Subject:From:Date:From;
	b=DQZCvKBHCWRnZSvGLE80JKjbQ4fnpO4c1wUaji1+fdlYwEB+AekjPcKmx8tS+RIey
	 JFqGECTT44cKZTUwoLEWjwZ3iW5LSAlY9/COs1aE33wY2tiKZ9bhq5uAPujAI8L680
	 mlV4hjcQPSjvj2H4y0r/hZNvF2DsC8ugibl4b82iNN5HSvjOa22JkdPVKCmSymXF98
	 iQsaYh68vFTo8QEo7xJnKgjNnczEbYHOz5wVG4kMrdBfuW50cbSERgm/36Iqa8Fqrr
	 GF5InRcoPBpWmckT+PKAPp1ycNwSl/R7GhZk86A2lMkSEJsdlvW/vmPqhaWuNiKdeI
	 IqIthK7w3NWHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE7FCC062
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282329358.10312.12905881916855537021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8d00a59ed7296d5fe1d02cba587fffd791bb26730bd5ddb0d753b78fe0f66b
Date: Fri, 06 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772823293
