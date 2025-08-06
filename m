Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298E42153D8
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754463594; cv=none; b=h0btHJMdZXJAEw18An8uD1jz3SmDEGTfZ8o1JL/5r+SrgirFfCIj1lGPV49hdVE6/FOQko9PFrKhRkrZYcR/SfwErudV9KTBWVu7ukZzm21ur0K7eLAcF2rfZagPW4T0Q7sLBXGRp3M2zh92QIojF1z+vBVuErvgKrsyHs9/evs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754463594; c=relaxed/simple;
	bh=AOxufakiiXpXuJvq4uPgdqqSEEEX3pzQgG+5yQVvFf0=;
	h=To:Subject:From:Message-Id:Date; b=fHBhSIWxYQ1TA8tsmCv4DIPJT/K/F6Td4ZrvJ+/LS+E0sDsL17pgDRZFQt4TCWXei8I0nCPWaVWB/RIEuJV16jGgjRkI7bnSvGqnD2F2wc/qCgedosFj/UUYwBwCYlhBG030j+9gtoSxf2IqJwQ1+Zp8u5F3gaqig5qZT+xyUIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1hVLiLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1hVLiLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754463593;
	bh=AOxufakiiXpXuJvq4uPgdqqSEEEX3pzQgG+5yQVvFf0=;
	h=To:Subject:From:Date:From;
	b=L1hVLiLFezfRKs8tD/F9wYSID5xJ6DL8w17DRTx1lwRFBZ/+APpY04j210mF8nAsg
	 kum8822sJCOhmJoMrw4YHRY62sdNaoRQ0WXhrAZfderGZVren8dXjJ39ZtuD57Mufg
	 d9r5Rq05zoT6ooreh8WrRPNlezofTDAeSlBKhbe1MAhISfPF3o7SzivcSzKnFvu8T0
	 rCdKxNH8qzB/1L7S+R0lXTVAtlDmGImhXVkbkgXvSs0rXPP7Z2T6RzZ60bt/G0/b03
	 8G052uAZbKofHbflXyYhy19/sNzJz6NuwT1Y+64PInQlHEPAd/0U7kx0vThhR3IbIF
	 I2KsWtC8AUPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26EC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446359357.2280.9118310610468754097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73543df42b19def1b6dcd9a94bbc1aff585935f6bfff8d0d7e235c3bd3e517fa
Date: Wed, 06 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754463593
