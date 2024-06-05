Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF8D15E5A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717574183; cv=none; b=IqDivqQ5XC1iabeidBNSDig28WJoUVS1T9vscAPf5oEnWQX2UzqVXrNF2AeEAHnMh6X+C7WxQeOLHzMrZM7DaEnH3Hnf4QqjyiDJr77i1jJ2YRQybRd4agatU4KoEOaFKvGMsji9iKNZhsarnUrJQvor6T609TYodkzggY9moRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717574183; c=relaxed/simple;
	bh=0lZVKDHEZX8q9abGetsk/IiMgxTQXdONfVyjGcUzGeY=;
	h=To:Subject:From:Message-Id:Date; b=UIzqy1emLHmNqCZ+lCwqjoD8Fml5KoFliu+HGW9uD1TGoM0W6NC8TkLEB0ds9FnbaASrBhFSXBiHpABc6C9OMvAb9RME1310deZ485TSFtVo0VbSga1slO0rWrR/PpGS4GkIc78tZ/H69KhFY5IS5XxJ+2X+01/ki4hqkFSVItI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLkYN83C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLkYN83C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C2C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717574182;
	bh=0lZVKDHEZX8q9abGetsk/IiMgxTQXdONfVyjGcUzGeY=;
	h=To:Subject:From:Date:From;
	b=DLkYN83C/Dxr0Mmziolkqrk9yuKOC3qRz8WNt0WYhzrMsrX3V6QLN9337Pz1Tie69
	 I+GYr/d1U4LGjsii8sd5s/M/YXezQdeNS+GxpYGGdiJgO2udqbyJg+ZxzbBWjGpMjb
	 ydUs2cboLge0wHzrdBgWoPGXn1WYUVsU/2Jfx9sKpnqd70snAqiIF4qxnHktKm/fN/
	 iIavpKsldijLHDz0L9enQRx0kZvq6sxuMvDfoEjzYS0rQMFlyASOpaRUOVQnGncIZj
	 gRDscI4s9fFRjc72F/6nrjeguNHrX3Dn4zzqPzvVmFgVoOa2kt1gtpZg5Fg1Cj9g7f
	 rfsxRermw+u3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20E7C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757418278.21703.17119259523430500323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629b51cdbfd97fbdad3fdc185c32332313f462988d3cbeb82696613e65d8fd70
Date: Wed, 05 Jun 2024 07:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717574182
