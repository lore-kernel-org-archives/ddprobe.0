Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5E433D6ED
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778370514; cv=none; b=QAeJqY/BdUhBYsplvpirttn3a0n4j3pA7UvCNrEiURKt1shcrgoB/SJT0jv3IDS5J5Umy9UazoAN8bolBElXMDstCdK9DTr5EPk25EGXF3bAuhNaBLat4IE5oVOoPbBF8M6etmhfqcSfV481gXrplzIV/+0yPSFdKwu0m9CVEDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778370514; c=relaxed/simple;
	bh=STS2YcIotEyxHhw1TUT8HPHQLZWG7GnRfkD3lXGK9j0=;
	h=To:Subject:From:Message-Id:Date; b=JAfE6OlNtXt3V2pVWwD2B3T2mo78JkVKrNeUsEaC2vH419gYw91Xwx11V746Xpf1imHLvw1DkJmDqGPLm9hq3YaTqvjG1ZgHDdoYrfsC99iq+Vd67D6ZYoex23aUh1wtstlLvPdNKfR5uh/DryClbLZKlmsJmtWf4lBzaVGnbAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZreMu9kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZreMu9kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F55BC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778370514;
	bh=STS2YcIotEyxHhw1TUT8HPHQLZWG7GnRfkD3lXGK9j0=;
	h=To:Subject:From:Date:From;
	b=ZreMu9kcvUUxXaAmg2W554RE6fmPvkdF8s+1eDi58eDnYtJbBhP0XgkxazBbM/BeR
	 Yu7J79i+FkfFWCQVpwIwYWmjoxY6BKbr9R4jxzNBBkaroGfF94sRRYHefIGt1Upg4A
	 AZAQ88FzYJRu7xUZjk9hH6HDosF/jGCuIpFM1EjpKot6qjCYoxJuisrd04XEggjF/K
	 8CNSTif+MEVghHDC61wxLd3ZWbz4ZnTRkAM9bYeTv+H9GbqYPItzxQZdohQaQ/0rqo
	 rtapPwTeHHps2ZIuD+gFnmJ5OL9EAOBHbsjKYgFsk0Ne296j1GBuBJkZQGEZpzLNRG
	 +Fh6UAQ3DIuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6643CD37AF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837051388.30989.6943555081629478190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc145b9b670da64dbb29b9a286e0add283f8de19901f2fcaec5f8a97306ffec
Date: Sat, 09 May 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778370513
