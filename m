Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A8E1B7F4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771295094; cv=none; b=NU2dQ0vCcVyjxXhUA4JVaTjLFU7OBmz0ucNqcVZF98m/X2J03na4QfziyCTKPJRLAotXg1y6lHZaqV3LG9RrcB7nGjqLU+QwbTG05MUQtfG6+rRPlyLlKKw3JZbcjTMIYiEjeN/eEJzUzuxUKdLIrbrvBYiHs/Gu3u1sHPE64wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771295094; c=relaxed/simple;
	bh=nVtSf5svPzhlG6DlMrXNrbd/Uk2ut1vSxwelDdrWTeM=;
	h=To:Subject:From:Message-Id:Date; b=KecuPcgSx7HiPKDYYj3AUQct4aCRrc7yMKgt5Wr6z6sKx2vG6e7QJA8NIWSv/WhX5UB1himYM3PJ7SqoAKI8cjx6VaATn0vzRmxPkB7ctmPYdrTDmTHVCmqWbn/KQuwV3l5kSEA0KALo4tSjMYPRzitIa2YMl4Yt8uIqBF0Rflc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNTL6Ah2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNTL6Ah2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA02C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771295093;
	bh=nVtSf5svPzhlG6DlMrXNrbd/Uk2ut1vSxwelDdrWTeM=;
	h=To:Subject:From:Date:From;
	b=DNTL6Ah2eM4xji0KPufu5Uxk8xlVkZZH3a6h9LSoUf0s/tr9NnbW6ZjqgVEOTaXl3
	 ucjr0oQAQOxmZMuqVDr+3OqG8Ten5vVqusgY/2tBSY/135qnZV6565q/RTr6Xvyi9U
	 lPCmlXJXrN2YjWO3oL3vtubEI9cGRpYxcXiG1lPjB9g5ywADHck7nsaTC5Bx9Os/Dn
	 WVW6u9Q4c2I0bFunrBtpwDfFyb5wstwgHR+64qDZYmKP+H1dDO1aWXhNCexlfpFu1V
	 TtkX71J031KyB5mHni2ozKbOOpjOm7lU13wWiUp3vkSM75JBhj/1TA+YoTpfUvFeNA
	 g35msYPpW1jNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9835EE83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129509358.12912.7791510945267269253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f8f22ed992817206924aa1794aa768cab6b8403305266861e56f2b2d9c3837
Date: Tue, 17 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771295093
