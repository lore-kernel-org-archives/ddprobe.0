Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7891A6835
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790656834; cv=none; b=JPAwgCOLC8rsn/DdBobo1h6Cepd0Ya/bjo/LZ8n6+VCXQ4n5rZm00hKkYaztvIJhFvqgxdxyokuyfRl1Xn49P6/PyFOTnw6NvShzeZslzt7pt7hOePD6yAnC9fysYtfu+OGuOJOE8MVtEWBJW37NXFtAqCFZ/gzH3KdMcgo/W8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790656834; c=relaxed/simple;
	bh=fMtaRWNjbpf0tarOKDeHCSmm/mTq4rGoJB0xii4Hn6o=;
	h=To:Subject:From:Message-Id:Date; b=JocpZBHxYogeV8Ft55db0ILj1MLGg0CcmBcDJTMCZXEDFmVLhbsn6Lc06n7KMPCSCeNyf8nRwoBAncukJfYXrkPT03lgNASFziB6v1IyiJ9vScZCpRD9l+lBjw2kXdWe6dCoJgr0eUxEkwU7Lp3lUprpDMF1TMUUjNeG0TibmGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXzhlKe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXzhlKe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF285C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790656833;
	bh=fMtaRWNjbpf0tarOKDeHCSmm/mTq4rGoJB0xii4Hn6o=;
	h=To:Subject:From:Date:From;
	b=KXzhlKe0XHfgV6ySPdtqotUGSrj3kVvUohQOwRUx8ylBwg9u8bAnngPbB40gGDaw5
	 HwmFVsbke8yJb6FP1Nss46DDmu5+6MfLvWTiAKy0ivzB0jP3d2xx5Axae2rGYOl0gN
	 GS29QKmIxKMdnuaIXgf+xeFj5pIalaeYbiylyMfSPjxrV1TfuthMVcHa3tCOWBjych
	 ZUgtQE8MAoUzbrVsM4MPVrxQcDOAsw9bNOKMJrdhIlGw2RHFW4pULXV+VZ9saJdHPS
	 HH6p1IVN/UkenTYKLIN+A+ULBzqx/Hc58V0wdmP8Ow9pCRI4lV81UzDyobxVtEx7vU
	 jpj9s5BaIG8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D3C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065683369.307.5048863442124594712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c969b390703f5df3e3f321946d93e2a965a7e234071846afebb26ae456ed272d
Date: Tue, 29 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790656833
