Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245311DE8B4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748175594; cv=none; b=kV0Ud1F4OV3U8Qvym8UJRpp3xa4P65yQ7cwqUMzE+4J6vm8irA7GTVWnNoSoOK0jiNERYPm07i2l/lQqjO2pf/zeagIXDWGV9DwijtLKiFC+IxMmjK3jxNC+yb2xT+HFeira/coe3Hbfxp40E9SqzLbu/z6ed0ZC7zrMSrvaf64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748175594; c=relaxed/simple;
	bh=o5Ds9zCOXeYef4rfIWO8PQMGE0p8iQjm7LkN0Zj/XqY=;
	h=To:Subject:From:Message-Id:Date; b=j0hycYPR2/qqz1kXu6jhfMgGfGFieLhno1Ry7GpTTHIwD16ZJdHHxeugw5BmzGwNCrszhF38C2kxYnaCEL0QMNsd24oa85kaCNlSaMBqaWUXeY0+8PuKz5x4mbGA7cBr9xA5Ldhm/bJUss6oB5NcKJGkaplr0Pfr3NINb6hRJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUFF5nwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUFF5nwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC2C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748175593;
	bh=o5Ds9zCOXeYef4rfIWO8PQMGE0p8iQjm7LkN0Zj/XqY=;
	h=To:Subject:From:Date:From;
	b=GUFF5nwWK21lJ9OdvaXnUXtiB/8vAvY0HLsLs2YOQhZJttlDAFNn5ZGZKzzINdyOc
	 V22QZL/U6MC9LL8k08wbHCxWFMO2HIM4q+jr/LKvwTF1pSnhnJA+Vft96RnEwUkHgK
	 G3iUgfFAnJ7wt0H3Gss5t3Y2lds1/cqrzcebrx0+eSr77fPf7FHQBu3R6UH6Vlzbml
	 7WV6Frsi00UkvYtflnj1sKQ62C6Ss0Yoynkmt0Yw8sgKdjZhG6mfQPqcWnib4NS7BL
	 zKbRSkXJjWWP9EdM6lUHQNtYw6pcEvrs0vQfqF2q07b33P59EjZXGIIuKj/ByL3NR9
	 uZ+yscOyzts8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C0BC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817559359.18494.14450993887627430067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5dd79328882c2e4b243e32e5f1f1c85955e30d21573a0116ea017536ae0fcb
Date: Sun, 25 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748175593
