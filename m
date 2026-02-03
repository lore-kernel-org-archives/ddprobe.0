Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1657E36C0A6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770103434; cv=none; b=apqYB9K0QB/cOsfuW9JU6RspjBF16XkJk+SyCluwm5XNBzG7S6xxPPgqkhvsLEyRA+vy7pAP+1ZMXhkegTVhmL0Tdr4geBrjZQOYz6Bs5IRgBeMDEOEACtbnQHgat0YqZtCw4A8s0toowgbqRRQPDOc1d08ftyVknsoDB67moxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770103434; c=relaxed/simple;
	bh=uosQvoGnKdqRah30DleEXWnQR7c4P8BIOlI6x9JnBkg=;
	h=To:Subject:From:Message-Id:Date; b=UcuTRqVlh0JhygnO9VZUs9beXF9/U81rYAlWWi3E3dLSg0jsHGgICytZeY+q6R172o4W/gLk4hnP5IV/M8BqWfXT+nLzYnsxVgzOpvKReWizspmSw6Ul2w2eoKDNvq+fErY06lHeIBz7qooVlyrUQ00Yd3IqpbeTvuZqjQd2HZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZvkcs4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZvkcs4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD21BC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770103433;
	bh=uosQvoGnKdqRah30DleEXWnQR7c4P8BIOlI6x9JnBkg=;
	h=To:Subject:From:Date:From;
	b=sZvkcs4ta7ihgIhtIp+498wFtTFFApuvvOS9a5ETptNR0KCgn2jaDIZ6DSydZ7CRH
	 2vrO7SrXWczKCubU5ueS3OSui+kM4Nrf4ESA+F430QAoLjYjqzHhzyEFejg3h6mh9Z
	 Yr339moruPczHEsR6wCwJKWe4oEgHVBT0+/z2TnRcwXss8E5v2Q1sejw4kqbU/Jh6a
	 rJ+gic5Efvljy38IRDrVF72E3Crqx9HDQkhgkJ/SfjnqUDOU4n6jB6QIy/71J9wug6
	 ktdxYoKuPNrjrmN4pLC0fVOF9igiXVdhepf/0mY+3Hf/dWG5ZbgvNjP/LnvppdQTUL
	 GOI61i5qK7Agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99843E8305B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010343360.14238.9754052200570126583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c812eb7fff74548deab2ad0cf791027f80e9c34aae28f5c52c9fcbc8dc04fb
Date: Tue, 03 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770103433
