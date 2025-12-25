Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E7A25F988
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766703234; cv=none; b=NfO8ipdgo1Bn3hxwQ+O85BFn/iPh37K5fqjJnAbjyLLZpd+LkyzGMluYBEyIiAzB7//AABrv+v3JF1hSu152fmXIQO9a0cZU9xh9IseFUgxwn2N7nsCjdsXzfUTTV8PBmwk45FTcUnYfRqoveRVcsj3sZuBZobvqGp1EfBoV3h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766703234; c=relaxed/simple;
	bh=ZML9vw7UtN91rpHqcamUzT2ohCO7Eedj3V75FI2OXpQ=;
	h=To:Subject:From:Message-Id:Date; b=mGN5YyNi6+6xqcUY2DaHwjnrx0Wz1hTuesFm5EoCujCIgV5YG0PnoEzPX6chBhwMM3OWh/gY8AgO7TPPY42OTtPMSdR9SDmD606zP+vrGAJhuHpL8cz0clxoPlz6ffFG/vXrqt4pLAyTv8nuuLm23XQgQj0gEOsNrojX9bkxYO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbVRLOYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbVRLOYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDF8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766703233;
	bh=ZML9vw7UtN91rpHqcamUzT2ohCO7Eedj3V75FI2OXpQ=;
	h=To:Subject:From:Date:From;
	b=KbVRLOYdXelw5tKMI76FepwbRXYArrCePib4Kq+09Lnn2loIdUFA3aXjltyAQKHFv
	 iMIYGp6TYk4pJn/tfUqUnUjRz4bPA6yDLFYFt6SvNCpGIqhhKPiqw08sjOWGDOCN/C
	 piTWc5rA22w6CCnlbxQq1j+hFFp0TgbuhmaJ3RgfHAvIt5JI5dNg2j4Lg6pR20Bpbc
	 y43FqN13r2rmpcfOjDhsQiBh7Jf7rARR2c3+JIkavnobOR3rXNHYl+tsFjYJkeAx1j
	 M3a5u9JfjOpPIe8ev7apnq/ouK7e5D4uJo6uoDeTQYk7hXnyfjmJbf1/ubcm2pVgfH
	 OGakzarvCOGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB6DE7AD73
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670323368.28837.16269376781791180999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf68cd302271375c72187625015b19cd0963afc809c0601e57a78c69227e8f32
Date: Thu, 25 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766703233
