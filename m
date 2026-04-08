Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277FD3815EA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775633134; cv=none; b=C2TTK6yhSm0GLmwznkg75a9AJHVuxAtFVXh/yRq0aNR2hx/9OwmPGbTMT0YJ+1Vc6PEKkjF/3fsztj9bV0/rxj7bZEwoGmqd1Nox7I40rtWuqeR/ZT1zq/cZ4n7nf2/GmH7UiEC1KSC7Tfp1KuYoNOZtzZ88PWWR8IjDaLyzXu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775633134; c=relaxed/simple;
	bh=LddRYJ+G4/rFTZLZMkn5MEwBdQuAMk5AzRAWn4eU/dQ=;
	h=To:Subject:From:Message-Id:Date; b=P2QSTJBvRVnE4UUChV7iu95NMPEneCJWibZZErLHo3Kt3ae9Ovt0KRWBbwvVtjDzeWmdN+IgtTTSps0z0iyEs5+u37d5ZAxMn639C4huzVDvHqtVNlj7wzYLm3maric7t+OiBEv1dw9f/USfKV7tSxyiAxic+bDIbOh/5z/PHf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY8WeYRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY8WeYRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57D8C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775633133;
	bh=LddRYJ+G4/rFTZLZMkn5MEwBdQuAMk5AzRAWn4eU/dQ=;
	h=To:Subject:From:Date:From;
	b=TY8WeYRD8LUjDytCD90ListlpDH+TaZTlePAUPEj7ROpewi1PYFLILf2zvqzTgXJy
	 C1StH3yYCH4nYldUX3Ivtnrf8oO1mDrYeWaZfZlzIGE0xVj9ayoFA+ZC4PtBxCOpOj
	 0F+1LBJtpfXSl2E7lJM38J9eDAMeCtr4Xz748/sMdAPCYltE+fEwi0vUZDCfE+n5Kg
	 k55/aAA5BBh5Ojz1IsD4d5A+BzT2Q6OdhzrjMynhmjFol8V6wJvgV/pj4PVXS5OFqo
	 lw6mJDLLcRUJYTq/ZKtACL9pMiHk/CcubRhpK9SyxTM+2oe6HbG8tMm+vBi/6a7uwx
	 8j3aO7xk8/rkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B110BFD5F8F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563313371.30208.15931877241368575382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8fa98d20c4b15642d1c7611a6719d38f57dde21b2ab8223fd6a72d271b9886
Date: Wed, 08 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775633133
