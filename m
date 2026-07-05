Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D14275AEB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783248514; cv=none; b=JZKsY5erOJ73d0oBqFJ6evY6TcoHwWZdph0xwqFdxHcq3eOd8AbXq0xuBWzkLBOhUWr8lreO5xWYC9uJqXLIn0///akNbLAnELQCLrGH3Ti5Z/j6XtAUvgFkLt9F9LYqHaXKQ/fZce2UhBPJx0Y3sNMVdf4/oBW2nvbwIlyodog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783248514; c=relaxed/simple;
	bh=KVXEijjKLmdq243wENLxP7kLTFN0NCrQORs90xGYWWc=;
	h=To:Subject:From:Message-Id:Date; b=oKMzhbI/Np+WBzB+gi+EWtcS1F88ngbOylLo1c3Ipqe8+Ys3LM56zjDOrguLfT0z7yGzkI/3VUqkolIgTn3dcggXhfQszwYdjRYO5Xfxogw3ceSmaeGvByLX4JDh8r+RxT6WEEo/ayT3302irMaKBG8a4y907cxWWGUTPeAhCUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdumsS4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdumsS4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF29CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783248513;
	bh=KVXEijjKLmdq243wENLxP7kLTFN0NCrQORs90xGYWWc=;
	h=To:Subject:From:Date:From;
	b=DdumsS4BekB3Kek3BGE4uZOKEFEp8nLvR5O5aO0krKZ+iYV8xBMeziSIUCM8p84zg
	 rNeoBKNYRV7nnJvwx9KVuEcNwqXaaBiIMTtQVjMjSdBIpkvfjo4zR2cc4448eLWI0a
	 d9l7MlAN07DxX8UYMBUA08/CQRkrcM0Os5W93inOiFJr+L7AY3TT9bwo0ItWpuvqyx
	 QR+rNkj9iuxNIEzfqs6FGbBPD5BeBD7wrNU60YGDlLNCqtW4UhQM2lWAqDQIgVEmqz
	 dHOQE2Krrmcef5BAtA07zRR2uhwPwZPBcwvmgMiEfJVzgf0Cd5X3NF5DDpJh8W/zVT
	 DIrLzD+cnYmug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324851368.8254.9621765764831622924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5515b3fd22ebcbf89b5b86c9a120dd722564c21ce061aa8051734fb48ae65e2c
Date: Sun, 05 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783248513
