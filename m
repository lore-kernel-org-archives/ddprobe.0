Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE255E73
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119554; cv=none; b=p1901VNz6WLPngc2pNJK+YbpEKN2VAEanuZO7slLpar5yv3O8kq0sqyUph8WYQCW2XsecQl/sQLp5LPhebApF4y/tFDmxw3RfvTF9hYljs++jlyPNdhJrvmGLopgs5w1JtZNKpBFzaUhScgk27l6oBeMDfQipY5aj3gmYsrUpVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119554; c=relaxed/simple;
	bh=TgdPVsNMFZahe9KpnSX3s2Rd4Z1tgGVCBmXMpn3UA6I=;
	h=To:Subject:From:Message-Id:Date; b=avrykVDkWieUgul3wCgc0qSkTKWNMnAIjM8GTvrKVQfYMw/WSB6l4VJ50dCSjLtRNEfc9cxYlXlDPPMmXlHk0j5WZS/XI9LuidbTL5RxTnuHMJLUqJhHhESlArW9enqndQhYUulamxoOs7iMu7AmNlKrzsCMb61UdF/+5vq5GoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/NjoeUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/NjoeUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7453C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730119553;
	bh=TgdPVsNMFZahe9KpnSX3s2Rd4Z1tgGVCBmXMpn3UA6I=;
	h=To:Subject:From:Date:From;
	b=f/NjoeUX1X+NQSPjye8e858jeXcA7G/JZG8hdG1Ld/l6ovFOyYXKaP+Iz61pHKbKH
	 1IpKcBtwatFR1rd6RYQ9fUkKQDYS7g/mCBmtF9TLDQC1KXrDcO+olS2qbWvJDppoh4
	 /nXNHvk0qHAEdeoocIm60iomzc8GkN9Eq9WS2E6HTb1B85/lDQJiym1sKO1dSdcoir
	 XZVjZBTYegO81J9YpP7MtX5vPv1mdwEFr6XCpOntgFnWgcKj7P+A5I6KfBMXJOvJvH
	 DKdAlKU6gXtKzEIMiNkRO64CcLTx+pB3UOKFP7i/f/BEYM2Yahi7ig4NEoaBf3NtNr
	 IZQRxjW+wtRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E09D10C0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173011955361.4604.9604615795574371496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d505d931840332f591b8be9e67f744d77b6a41b3be913745edde6ddce27e8a
Date: Mon, 28 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730119553
