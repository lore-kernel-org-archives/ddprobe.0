Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208D723C4F1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751495394; cv=none; b=Tv2Tk4baJq4pVhQjHUazHqwatBKcDgi9+FAgeJAelQY3e8/hMPrzUXheF8E2g3YHVcPZp5xXpIO0ciJ0Vl1dhvlQ8ue0ShuwzV030rMrCEL6KcX2qtGtueNIPzgr1XYsjTLdrT65O14pVUWhiVCWFFbuEWn1HH/WCrlFYDjWa/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751495394; c=relaxed/simple;
	bh=+IGPLbQcsOWx/SUGeIuHYczaMJc0pkbRSftPNMiB7NE=;
	h=To:Subject:From:Message-Id:Date; b=U2i8RMUANgTGA/UioGO4j23ckBr7EcbkYCTnGeHSRpuJsFLmjKFVYc+q9tsNBA8dwW7TSUhHWzzir1rIh42Db13pj+T4FZCK5RO8bxfmbK+hCZd4KxopdQZg98SCcFz9SoVGZ78DrCM+gN2LiBH55atKmSuJg4rgRsnd2a4AWqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffGd/qN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffGd/qN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC879C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751495393;
	bh=+IGPLbQcsOWx/SUGeIuHYczaMJc0pkbRSftPNMiB7NE=;
	h=To:Subject:From:Date:From;
	b=ffGd/qN7cRvcVwWGibmA5iKvJ8v+ZSFsltrEi3VzH1TXYiON5S3sJ5uorbdVuzP2p
	 /liRHR7Lgmvf7W8511Y92r1uBr0vqtyzIRF2bZRhWkiqG1aR4onbmpyHpH5m0zvdwN
	 E5TtGq2cPztQcl2q0EVW3syLjqZni9QjGrV8ktvikqwqtkvE7+e6T8ZumpVoGryPM1
	 K950I+WmoXwLoLxmKRp63LCaqS8ojLI8xCS2/cZN+NbYCB1WkXLVEe+Gal5lX0H4TI
	 8w9YiXEQrj9VBdV425hTtCuWD8tpYVCHsax0ULQS7HJKaNAMf5CcUzkg6RQqCnUnBu
	 AOCbvgG3QGBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB5C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149539359.32115.4916624444146942518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546dbe84fc1aa773e557118155416b33355970e90db363ce201e5e3954906d1d
Date: Wed, 02 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751495393
