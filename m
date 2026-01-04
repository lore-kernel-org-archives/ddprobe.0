Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D1A238C33
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767553434; cv=none; b=naUtgZfcfbzTVLI2m6SvCUkpEN9/ocP0H7w8jwHs2bUIFl1xVFtiLtvnMyMPUNDtQWB4aDj64UyrWKtdTunkPiWAb6bT7rFyVGM/UPkI7QZJ/PyJ7hq36oTX8U4o3CudZNN2wQ3NNizDqKBFU0G4VIUQeNajowH9lCfBC+BHJTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767553434; c=relaxed/simple;
	bh=v9cyKkihBh+AfFmxt5x6UicFU18WV+dnCkZ5g5PveXI=;
	h=To:Subject:From:Message-Id:Date; b=Bhrfn3qKN4nz6ZkboU3KI3wb2wdTTu9r2AnAen8J8k2FJ4yMWmyCEfMhKxgnlpFOmTFAcwpQBhF95giyE0vB9z5KJU011OqYLRynWQjRGoB49ECkWlndX7uT7HKowRFU/hthCNIroPIrYPA940VDinZSQUpOlX7D1n2kUr3STBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9tigfKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9tigfKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F57C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767553433;
	bh=v9cyKkihBh+AfFmxt5x6UicFU18WV+dnCkZ5g5PveXI=;
	h=To:Subject:From:Date:From;
	b=K9tigfKUO6j9n1i+Wdfv8udcXE3tSiHvyNGLZW1B45OawkCN7zq2AKHbBIsAra5ET
	 537CsFClyjXJPnWiHGbmzVcG4LpgjNdb+1O2Ls0EqA6ROdMNLQ/wMTEdsGOgoaoZED
	 YK8SfIzPqvO12OQmsOmSQ4JbSljk7ER4McJ32bjSa1paillg8MmEzUg+Ogc/BZp9Ov
	 DCiqyZQWSWuYR0eFhyg1kIX1Yjo5Lr4wjOqUdp90+2t4wbbsLki/zXBhHUFb8SrXAF
	 2/GujVTax1oksNgla/6iIV3RQlIhakA7S4BvW1QClaGCYNwKWArGqgDU4L+HvoLJRR
	 Nu/TQHJd2wpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94323C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755343357.28629.7396910301173687144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19aa3fc13e83cccc083ee50ed743eebac2b4e081cc3162344317ba3283f8d5e3
Date: Sun, 04 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767553433
