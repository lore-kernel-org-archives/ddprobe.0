Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D791B33FE09
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767623033; cv=none; b=DOXKw0QBTpidgInr0a6JofrLWKUan7Ld5jnMaGO/hQ1YxAJE+HiDIh2qruuXur/VxWOGoJv9EA7MwKvCyG3vexTpxWVoYS2yGMV4nzk93H4UMfoX0Vw2jLC/RlgGbxuopNJnqt91SAGczanwun7duy7hPWRp2riIMyQ2jV/CaIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767623033; c=relaxed/simple;
	bh=nXeBlrKSvfcYTcgFcbCMH0bzrkeEsLzgSmRCvedSago=;
	h=To:Subject:From:Message-Id:Date; b=gVaz8mrhSATHqgiEvTe2Z8gcgwKOHdkGO5gJRNCNyYxw8CnivmBPNnbur1wuKgzDjOe+9HpNsrKP5pzc8V6Y3qVxS8oNLld68zJBcCWaE3sGJ3jECKkx0Qyj9aymfEqISwEwd5Uesw2kMb+TMZyckAyFdeob0i128ENDDkmh6eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gd1aqEwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gd1aqEwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0B7C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767623033;
	bh=nXeBlrKSvfcYTcgFcbCMH0bzrkeEsLzgSmRCvedSago=;
	h=To:Subject:From:Date:From;
	b=Gd1aqEwTzJIfc9gi6acBRu6Nbr+bPNAnxCEgQBrzaduOLf2ojnpNYH76PmW0LiuLR
	 cTXyiT0uFUYGmWCBn+OQbUym/rOAiD6rdeBjEW011ArJt3kdFc/xUA/Avr5IXWgFWj
	 oU5rMLYWuzkzkokIhicz+vE+vAKm5lFn1iX/1h6nEpkYUcfHoFdzI95FRuWROpmjEt
	 3OI08U+hKjqnzAEsQwFm4HuFHkdLnH/GtzXY6XZdizIIwD4aCT0YkS5gvSzBbYsyeI
	 FMSHijOgjqkZRW9YbUyUvwddfFtzy3Jp1G+3iOTuKLqszX+UAtY7e7xtXNfnWgCrwV
	 dERoDdNDEDoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E699C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762303357.4270.3046221450003023497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b897e8cd921dac576e1d7389b7f3de90075b12f15536dd2d50db73382ba4fa2
Date: Mon, 05 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767623033
