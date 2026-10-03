Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768CF223DFF
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791056434; cv=none; b=WYz6jfpwmPpYQvdS0Vqg7gM6jogk62xtM3v/Wi/UtnYTMcybjehQFiZ1CuJqjJFcoDHjCY2tqzCtsq9chjVTRzSkZQjaJM6PdRpMGwfX+BhDUeb6pyvntUwzHC85YxVA+ffuza0OJtt7xvZK3lLVOlOk/7KXag9qNYAAHQSeKis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791056434; c=relaxed/simple;
	bh=Sxw82WU10/PSmmm7PUmyVuhEbMBLjoZq/RNeNBRxCnc=;
	h=To:Subject:From:Message-Id:Date; b=tJEOgYtEH3nFr/8lRKOkmQ+DnTH7siu6Zw84gq5UUMN3N2I4KEtHWQ16cLrrXFGgs0DFPzcGde3NTYUXGqy8rt/3e3j4cLVo5aO+e4283e3LfQuPdzClcOQqJNlJP0tRmYnBeyuOy4lBA7/tHVuafFOtkZ6y4vFbyTr+SnVbXWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNc0PdKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNc0PdKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CC4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791056433;
	bh=Sxw82WU10/PSmmm7PUmyVuhEbMBLjoZq/RNeNBRxCnc=;
	h=To:Subject:From:Date:From;
	b=nNc0PdKJSZ38oYIrxzgTl/rd9D7jGoi7ASmU2CqJmyTMxj6nK9oZn67RDDIIq5/Ye
	 P3V8d9VZdrhUYaq9CKjCq8Xndc6M47bKp3ujBqeLqqyOEOK8aYhwuyEer5YRV+jXjn
	 hv3Ja4UOIAjH9K0CNGHDugCR6k303Ys+5P7yOOrO50xKFkqhyZnyb6jhsq33v6ZjXo
	 QaokYEDg0sVzZFJ0HpWuA+qEhRRbb8RgZL6dlU4rgi6JVb+Kvi7WP4M5CD8Px2RF9S
	 o9zmpTn3N07vtTcXw5PfIIqMFwLmS8PfVqLATviL+N+yQfZ5MyJ/lQyZ46R+mIqTWf
	 kxGaqX5tjQwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2847CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105643369.1346.9927861620172334945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504382b25e68460e9247b34302824dd10347e2965aaaa62f05375dc3f2565ea2
Date: Sat, 03 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791056433
