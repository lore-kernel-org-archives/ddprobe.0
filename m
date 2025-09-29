Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F111C1FBC91
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759161594; cv=none; b=qOa+AEFpzkGNtSamxmtmeCc3xd/K3o91EwtaRgq/V2PqJ173w0s64ng/tD8OWPAjLlr5xmrrKYrL4fTUBbN7bjmyEOHVhhouQtbsDj5aA/4d6Jj13uKD5gbwHukDkoz8taytWbOaxsPvU2CsQYO3dM8DZx4HZxjhZGn3iWKMJZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759161594; c=relaxed/simple;
	bh=nZAAb/2Dsd4rBksuHDZ/DtnZqSz84Jz00pilEPUZTyU=;
	h=To:Subject:From:Message-Id:Date; b=Z8hG1qiqmapu3jVJrgDAvPuVsBYG2tr8RBX5iO5UgRRpWElrbyHfft4YIoxs5eJbB2/bYIcH5KDvNdoGX1594BEopAIbbsCt2Npvpz3m1hov9vx4ftsiNaEMim4anM1r47sI34s9b/mqyiQ9IWKJqOU3Q6bd4GtVRwE4bnjRqMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxqnDimT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxqnDimT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF932C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759161593;
	bh=nZAAb/2Dsd4rBksuHDZ/DtnZqSz84Jz00pilEPUZTyU=;
	h=To:Subject:From:Date:From;
	b=TxqnDimTK1u/Lr1j+8j/+MFDNOyXlIHdLgyjDRqd78NdMObPG5xz8H8/FDXW7mLuH
	 R3airrLSVwQ+md1uiN5pQ/aENBToa2t54+tfs3PffWVQxXfo/xEWm/m1mjI19vs81K
	 FG5IduosLUIyGZxlaBBVro7BZET7sah6ZKx26K0qPRrVgtP+ZXjZ1aq9Kk5GsCVkda
	 +6XxLmOJ0EjK1DL6j7rDErZew3xXTpVqOOK7W4RK+zp1AB2WiaZRqniQXRZuIos1nd
	 1GjYJKGr+g070YwfBKGNGeO9ia5MUTXH/SEentr+/lACefU5bU//dZ2eN258JgDUdu
	 rXnm8y1DmTrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A446CCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916159365.19718.8688300233463742815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e2c312d5f6c6ff03a26b51f6893c05bd293e9de2276d9827a201f6675aedc1
Date: Mon, 29 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759161593
