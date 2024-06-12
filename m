Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B492181CE4
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718207903; cv=none; b=u4eeWBh6YEjK6eeDs6P+7u4gyXfB9JLUwuo1d5thITXyrKmK1noBqOL2EwrN9JXdiEugjClsslQJywfIxzf7ok15jQ06wBt+Q6BXS3Qs3bFk23Nu5yueBMRWRaXbkhIZ0reoczSxd8Ry9ZfDlURcLBWc2w+9uf3xB9L/qUUqXyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718207903; c=relaxed/simple;
	bh=9BGxehVTY8rVO15jGpUBRskjwDlaAmLhaAuaSGRUgMA=;
	h=To:Subject:From:Message-Id:Date; b=rg0rdWwLZ8l68b7B+He3A3aoayPBMRQIb6+8mm1VBugoQqOoaWJ8A0Uo2YIwb1mS7CogBajWt0I6hXuMMjPPylg6y9aetW/dgaS9ih2hrV4gH3zxZELriAbQYYgnXEg4siATcRWzUPxc6eRQ9ik5uxdWAFB6v0lZ7O0fdBu7JaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDiuodKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDiuodKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BD80C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718207903;
	bh=9BGxehVTY8rVO15jGpUBRskjwDlaAmLhaAuaSGRUgMA=;
	h=To:Subject:From:Date:From;
	b=QDiuodKpkIm0kw3JyfsrE09PLVh21BGvnGAIbsuNgDFnzDZiPxCW7fWMnCBeWpng2
	 5YTCq8TEyCONyP9GOgY+jA0ry1h5hxMvajzZ7j2I+nxg4E6MssXPo222pa5Y2zle5K
	 GzMCpkgqyH+ir1MquLMLIXJbLuf3w9z2H3v5s2r9FbyQecgFDYnLAn6M4mkFT++oFE
	 CgzjCzsHVjnBnoghftTRweId7Q+8tBEhO26asasKM67dhIV/x8gKy2W5OQaehjqMu+
	 ldcLSrVqX87/9k9J6czrvhBGJ8VP2f0YlpfZo+VkF7j8pGJC8FZNrzJULwOnf1LNMp
	 Ajrh63BO1XjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD64C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820790290.7852.122641644993825562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b359b15bd714aa1c62de00cdfcc287cec7838fce20981d74126b2d8a443fe3e9
Date: Wed, 12 Jun 2024 15:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718207902
