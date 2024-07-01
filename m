Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A7113BACC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719833063; cv=none; b=kXG+w4bkvzS/FIGtTj11lcp0psSqaSPis0RJPUH6fuYaREEy4hEm8LplBkwRbg50fiC4nPDghrYRVJHd53DaXK37y1N30pjY3lYbtkYzYs1T6Iu5pu3gtKDE6EAfRE93vcLykLLJdhS6zmMum/9i5eDvN9BGC8DTABvYowYPL4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719833063; c=relaxed/simple;
	bh=Y5p5+bUBtRCbnHDahHfPmrHWp7omcuUIDG4rhiZOabc=;
	h=To:Subject:From:Message-Id:Date; b=n7oC7ZKeTZkg4SHM7RUq549K04GR4LfzUpQLlPuk/nlsnYwwjFstMRML7Lk8Eai76SdhHBeOV4guH5rsYmz4iPW3iMsBkZJvS05SjKIBR8lYjr/OKD7s9LEseNipyGvAPmxrIYuVXFG16iiffo4JxazHBFfIVFPNRgomGMq6xDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYLefsgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYLefsgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 224D9C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719833063;
	bh=Y5p5+bUBtRCbnHDahHfPmrHWp7omcuUIDG4rhiZOabc=;
	h=To:Subject:From:Date:From;
	b=AYLefsgzaTNOVLugSEwlHACtJ6eu8tcnAk/+msbe5z2rIpWdBHrpW5O9m9etcrQAK
	 iyxBKgSWewPPY8bsajrDNEgofy6K+FCuGcVb4hhX2czBsHrdWsHKR9nkP+bzF0TtJb
	 DBzaiS/+D3BFuKPtuXG/0hVLvuWDb081HJV/V9NtkkU4vupitjlx5MN1KefOwtn9Qt
	 Pq87SCmCKKgf1o1KA/AmxHtOLxAP2LDNlSjS2ZrwLWNIZyppEN8+Zj6Bs4Mo/noY4J
	 YF7jdfXUkoPc1kycSBgQUaT+mApLeH4AsKM4LhI0vUpBJqCYlyvmlyGmx/5Ml1/u5q
	 nUYZ6OBIVPZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06309C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:24:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983306299.30070.12665555045247285237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba7aa2659f08d8ceb0b9c2d985cf6da975aafefd2d0ccc49b4ed62dc543cbc7
Date: Mon, 01 Jul 2024 11:24:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719833062
