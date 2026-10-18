Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DE935FF6E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792355434; cv=none; b=O2aOh+Lf5RwtG7tsPbE1wIUfX1sJJy3ZFz1DPr4ZUp/ge7D0q+x/cinJK9PLfPvyFYgpJjKYlDdAedJshWesnSwjo8p9u5TSWV0jjhlm/a0HQQ7hJOxd3KY/kNA5Zcxn2TexikGS+oBqElhtFJy2Y5lGG5MwQUUD9464yJE7tCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792355434; c=relaxed/simple;
	bh=edY9d2dbH1mU4MGAJM+Y58PYzmR94OQxeVJiiq+Xi/g=;
	h=To:Subject:From:Message-Id:Date; b=fautUs+pVDR7sZqFxuWH9OVNcRh+pXLzFNjBf113QqfFKFbb3MfJucNHaF//t4vBkSaWrAQ+MUi2P5umdEs9oZxh0WyrMGC6t1JiGZhRG33go/oT0R4duKPkcfJWzfBWiP/EB15DqX79RyQSCcba8NoP6LUp/NLasx508zuJpOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4kvBKpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4kvBKpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE928C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792355433;
	bh=edY9d2dbH1mU4MGAJM+Y58PYzmR94OQxeVJiiq+Xi/g=;
	h=To:Subject:From:Date:From;
	b=Z4kvBKpujemPGIH9l6I2s79xuyd+e/pGKUZZvIvSMm0+LNR80E3DO1K5/94+YDmsg
	 GLLDmZujV+xTQg9yMZooOKoDcJmJXss3i/NIKe9sAP1+NrWi+ZzjMnXbS/GqwSUcCl
	 2L0aY3+dWE8ab1Hi7t4yyQqu7WKLhLirKKlZEU6tXzjV98wbGrM3uPv5aAl+AwhUNI
	 JJC+uAyizbW4UDMBKUSVrgxXSHuf6N9xSR5SCD9dt1nKzfBmdii8U7cRxg5GFHDP1A
	 nI1VVQs9SUSsqT41h0inxeMtEyA9yiAtR8AqZN5vKygSviZxJHe7HqGs5muh8G7trW
	 bkWqmA347uCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB538CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235543369.15571.4890365490495013627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe9f5221b3c6de9b638957d10b22d1cda5f17f091099c8abbddf43f19576995
Date: Sun, 18 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792355433
