Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27157179659
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641554; cv=none; b=bKwX/67W+iMvgQB4A02uCJl7y6cXBHpZdNNvg9ICfzPDqd5/OND/L4QOBmZJrxnwZwrNCodDVO3DfkOIOstYzmsJKzK3SlKhSaGJ7rd/KckiPSppRWdPL9vX1popYWyISVB5NMtw5w6xonxrfcIn+vAcptVsnmaMBDjIgoX1w6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641554; c=relaxed/simple;
	bh=rALewvL82ZR4RAwVk5mubuSy2ku3IgfomWCZXwtnl68=;
	h=To:Subject:From:Message-Id:Date; b=nxKwvWm+3f/lVZV57qpVKKvaGse9TnA4XKIZvbMVB71ArDYt1QkCJ/zOf1KYVpqVY6ias4XX7OBW9/qdjuBYYgVmyCwGHDYqL4XOBqNE6KFpdnPLav6Qv0w2vkM2oq0WaNQbLslUbJZJVMAV39LIOwZxxAFaZncyeIORFzRPZ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmrlJG4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmrlJG4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2399C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721641553;
	bh=rALewvL82ZR4RAwVk5mubuSy2ku3IgfomWCZXwtnl68=;
	h=To:Subject:From:Date:From;
	b=qmrlJG4fm7wEDppfrAZRrtHW0mEYv0qnNopk/FoluUwuUMNlve/c18rWGr2Ik0GBC
	 UDDfYcodMnGv9xrZvy3XUtDy5i1i55XFImwVJU7AB1NhhGAKiXkIkM1mDCA/Zz8Hu6
	 W4lwSlrwhxdTlJATfl1yVpUkuArW0JjVS7Pw3smq7j7XoyK/H/qi7KTeQzYcL8pNVR
	 40ydtMjJWNsGckJUY6cnk+3WtI73CS7mSJAOVdn+u4dOH3mw57OpqsJ3FL7Tm2dmX1
	 0GDTv1/CAVkljjIvbdcC/KwBZlRNSluIoLIia0oMmrBdDWdTZhi4mldCH/0MSiMdP1
	 6lfbVz4cb/qWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641EC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164155360.7408.9270624314438959233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9a7b26f4c72ae6ff2565065782dd2b3e1d10684814b5cca348eabe7d928b87
Date: Mon, 22 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721641553
