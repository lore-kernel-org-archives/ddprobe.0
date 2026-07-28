Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A151A6823
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785222634; cv=none; b=pKH09n9AWFDJsaW8NVi2tnRrbffHwLUaAsj/k3tC6o/UmjzQleQw3dNz5gicCAbAsjU3NhBmAbAt0dLOAXcEdhphLqb0gR0D62i05RT4vW/I1IuKFu/Q0IhbQ2snIQMY0qzUaQHoy3YKkezgpVwjprLjibaDI12S7/zd1M2S/18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785222634; c=relaxed/simple;
	bh=jy3FUl7icZrkOd/HbhQIOPXpKPEK44jr8KWzLE0KKxo=;
	h=To:Subject:From:Message-Id:Date; b=DiG4MMUrhTVxOs+rtgYIhRdb/slw6UhN/uV6nqTmg0mvALJ80l4rwN5tekGq6UvqqhyAX+3JaYFFBoY0/qs8T2n4KTF9DAOePAbhOI1HsIo0WY9CYtz+8Q9MnsZMBoPM5h0QddMZ0p7yLKn12aRiGC6N3i2P4PqFgd1U83Jj6zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVs65OEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVs65OEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AE7C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785222633;
	bh=jy3FUl7icZrkOd/HbhQIOPXpKPEK44jr8KWzLE0KKxo=;
	h=To:Subject:From:Date:From;
	b=OVs65OEKpREYg7zK7HjD0YPYDLTVh120wMU9T1ljBl86fz7XAfkm+Bys5+oFS7vhx
	 9coijKgIRwDX7v5hhHmTWMfUNXkXs+Bd5O5GkLvfwfja6DZZqtdQ5dRuMMFmUgycZq
	 7nZH6+kQDicLyhtyLxIA/ueTm0yc2hox/QdQ2CsAgUyM14A7idnTb2AtwPfacLGQAy
	 do9D3Ogq6zaNb0veX4JfTX2BOI4yygnuZEZnkxRZcRL5VZ4mK8z80BvvrKisa1wI6I
	 s86D/+cqAS23wMJ4VOu3TpNROhMu0feV2qXyLVWEMM0WyMqrzUtVIMwiiBVDT4mN5I
	 ZJjuzRppGYyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1364C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522263370.24205.14270015554116715180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401449a10fc73c1b7d5e0905cf7b1ef1af99222a1accbdc907f8d311c7ad48f1
Date: Tue, 28 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785222633
