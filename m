Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F64289805
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752655794; cv=none; b=kenDmjANxNeVs8uL5v53xm0nWrkVrSoaFAltlU3+SgQd5tcI0ZEBdjHMt9ETURdbq8kdcTdvwHGYeVYW6PF2nZFukCYkUdGoG2syGl0/uVnD+RXRkDE3bF47NUJjQ1fPUIc16i6m9aseMokk6fFKW3hLTvdjICx3lBK/0N3fCbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752655794; c=relaxed/simple;
	bh=WZ8D1s4zFSvt4tCvFI/N+sOWWpLjFRoRaWdsk+nNnaU=;
	h=To:Subject:From:Message-Id:Date; b=gijCTB8J1prM3TE6UiFxX/lPw9ZEkB7px2yFN4TP2zS1+KTElXvNqELjFNaC1Sr1PidRC64SF/UEiF0BZ+N+QXvsbWfVGWEIhtiWbi4pgv6pZrcXc8f1kcbMVGtE/5Tew+lrlJ+5ne9gjx2VBYhu385746YrnDjbcs3cAwZfuLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITwE+i0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITwE+i0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752655793;
	bh=WZ8D1s4zFSvt4tCvFI/N+sOWWpLjFRoRaWdsk+nNnaU=;
	h=To:Subject:From:Date:From;
	b=ITwE+i0fwtSo+jVKvyF4EI2JLuP3hf9kFVxxo9eWFdyFmWkkeQypOrctR2b27tcsO
	 ygJ5XTFST65q4N+9pyfJg/2nrf2PeVbFTKWR37rSM+h6iwDjLYof16/M1uuuZHsOij
	 MyukNz3ZdkHeL6qAc4J4sVTXvBANedZh4qFD1Gg1hvqN+jbFyhqj7s7YEiXbCznksw
	 1jzNAkuDWR0mjINl/wm39QY3AGd+vUTKF91EFXM5bCUN5Tqzjzo8HbRsr9WOmxo+Vr
	 FQ5fOBiBjyr4qMSz0PEKISXVuN7HU6BGAwPP+ox/xiIw+dK9H4acr4lDbcm0Fk6OzQ
	 prbBxfg3gz9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94647C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265579360.30410.16400956673378210754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2572bbb954fe75dafa7c3207eaedd443e87cb000c518e9b1a73b404701eb5b3f
Date: Wed, 16 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752655793
