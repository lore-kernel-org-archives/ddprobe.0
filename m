Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF710184
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719275003; cv=none; b=JNMSO7Xn4bqpP9wtYSjiHOxfsRgJWIEx73sNUiiowEKs3pZ/chm3PyDlDArbrm8gGInMOt84o/IRcjnQVqHeRZVRMQCLf8rgN0kZaLH+I+TwBxlJOMSf7aSZeqxu9WcxXdC9iyD8jf/w4wg2XfCYKSxLv0yQFx4YC8zDmo+zOTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719275003; c=relaxed/simple;
	bh=B3QjJuoINU1EqpGTueb7G+KV4GjXul9LWbM2FeGcQPA=;
	h=To:Subject:From:Message-Id:Date; b=Wm4jgTNulDtBAnmKpUtrszy6MW/JB0QrPI5Memzm0ipbGbjBHYHoQVuKJRPDIqNW256RVDVfqcLCEfwa2iAXxIrXM1I9TQ6mytwsTZnhifk5F5wUNfc+8/8hgBpKpQCJ4V4UMmFFrcDKP+8wGP1ro6YJvli99vZ2QhUgoLWgrko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnmo5aH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnmo5aH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719275002;
	bh=B3QjJuoINU1EqpGTueb7G+KV4GjXul9LWbM2FeGcQPA=;
	h=To:Subject:From:Date:From;
	b=mnmo5aH3d7SgtZyxtv3caxxUrfS1St/Eflb3oHh2KlMCok5hTGp9oN8iZuIp3pP1h
	 TML2U5dbcw40jVqCrE+Bujg+0hH7+5sCRWu46IXybWflD+6vQDeH7QLqvhpmPNIlkh
	 VsvuBRtizwXzZj/GuqBjM9BuSV6bm7eIMcWzu3o/xdhQbvymjq7sPYx14JaPkZ2qW9
	 InH6iWPf1Wa4Gr9UrKtKcYlZU7RbTx2cEWflvf+M8XWxmMTxk4t56CZH4+5akj/k4y
	 PNTMw3k6c5vLiGnjz9iBNV3q7RT9VPGSzQcwbZEkn5kiG0w4gtaCLX7yw3ey5f7hUF
	 tQARCQgIBwY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA26C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927500276.4446.6494058377686698889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f021997a5ea5f0867740702106acdc2bae3f7cc2f3f247986fbc7794e967023
Date: Tue, 25 Jun 2024 00:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719275002
