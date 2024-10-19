Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344118755C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729332355; cv=none; b=cvz7j3PyKUoNy88658UCh0xUAHyKHLYJ93d5rIbne0Vw56ikJFvOJXi4YAq8dt5r1BQNaVoQu42qkxSSsKcyPTuo42AkZPH+IB7KdXu1NcqsBUVh6xpkXja5csSFqFdyBKa6si9A+1K9mMsVeuzMEc65m9m9q6bCsMucNxGeLUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729332355; c=relaxed/simple;
	bh=2r7UJYA4hNlPtKn2xJPbHTYRAfeWP5vxnoxIt1U+RyM=;
	h=To:Subject:From:Message-Id:Date; b=AUF349mW3ZDlDHVo9eKX2aHodAgibFT0AfwTJ7vCZIjT1UyYc1Z8ZsL1A7eVhehXTFtjKL4m5yi1uAOYH7sT89Ax4rrTQNWrF2dgCRINYaTlR2jkmc6BFUbs+hl8XcTBXo3iDEhpLG2TIG2tGeMXlZbMPj95Nh5fhmwsAHVienM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDF+KiJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDF+KiJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3AEC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729332354;
	bh=2r7UJYA4hNlPtKn2xJPbHTYRAfeWP5vxnoxIt1U+RyM=;
	h=To:Subject:From:Date:From;
	b=WDF+KiJGFMZCaVdWrBHbYiuBHJcV5fMvqYlp5dvIgQrT1efBGId5l4nPotZCLy/45
	 Dtz3RvRlFdfN67YavuHJLx5L5fbr1qLVu1V0M7SsRY3kr/KeydMKB4h7y/daN7JTS/
	 mpIVcM7xf1oC7sEpV8fe/TM5Q7OEGOTLcufftiOEs3iIRHFlPZI3CIHmN3hxSHkfM7
	 gzvR0bpPZQjOtQ64p2GFfYKxufE52FG1T3bCHuq83SkDY5sh4nnwfEUK67jgVs2+zC
	 h5/Z0cdsPg19ELUC9q5OgHxLwkoXEuu0vDzD4rWwEousKCDpHoe31lMWv32a5nswSH
	 IQOC1aZp/Vu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12C9D3C906
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172933235361.25758.9116691357095784206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d53e2e77cc33efe471af9e987a2d4e23b980fa0235e01acaf6159c275ac960
Date: Sat, 19 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729332353
