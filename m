Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF9B2FF14C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766532834; cv=none; b=n6JhssMH/CqzIiN5YFqvKXDCcZNJg5V9/eouTrLlW0ZBlM5CSp/6jmP74g0iuDcllCc6Nnjg90xWqLR9Md2YCXwnEPgW/FN2BJyh1OLcnL+YltI4f3LkmQGXQY1Eqa8LLinMA6VG4EEw/RMb4Pv1AQM/NQRrLlfTrS/wan61jOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766532834; c=relaxed/simple;
	bh=chaCPL/jX0uK/HdfYtKsyxXTT88LoZSuC+KN7lBX6e4=;
	h=To:Subject:From:Message-Id:Date; b=o/c3TzBDLSsvvcZ1djaSe2Mgy2lvPTnmJ9nbFHeLRF7Le5A0r1AyiqyqL5xb3alW4Fr71mJ+Xa1k4OvT16/FfiLwqUuDuYetXsKba/80zx5GO3BeZhCcfua7hVKOSR5piGf25lKO34Zl/6xp/uSdWxhz6OGhBwHlu84mlygCGhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atq1BACJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atq1BACJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3392C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766532833;
	bh=chaCPL/jX0uK/HdfYtKsyxXTT88LoZSuC+KN7lBX6e4=;
	h=To:Subject:From:Date:From;
	b=atq1BACJFAZ5/GovtU9gxiGOLBNl4Xwa54GuecB7rZDhRtrttGn1DSdx75aiNtSny
	 aWXjON84O3hiJYnieip5q34pfvq45kDlh91lA8ggvBSOCKDArgtKJ9gXNvqbO9qBpu
	 C7lBNAP2BK+/aFbkxkFnBfHPivaVyXBZ9Rh0dZV2oiyXh+hCTSdhbYhD904Y2sVqiA
	 Jfu+5diKbpZNUg15CX332hfAzMRuxu8xxcdfS1KjkjM/Fi9hOzhryjrQyEG5793nGk
	 Xu0OPhDu5xn+zYqpHgp2RsoYpejkNxZ47nE6smT3+zxkoDe3QH4evyjg8+fbTCC/jC
	 c1deHUGfj2bTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9BE6FE51
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653283358.23888.12494257514314873703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4911e457c8e4d34856bbb9114f989122cc7336893a7b30d5216feb2acd1e27
Date: Tue, 23 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766532833
