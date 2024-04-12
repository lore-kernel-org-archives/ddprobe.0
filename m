Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700CF84A4F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712939363; cv=none; b=SqeeABJycH8Z0/HUBJhQH9q8Zw3DHs/X8yFxSa8kOVNwWkD/xYc7od8NTfaVs6/zSVUqdvTTZTiWju/MGosNc7MNkpeGHV79jLY0Mgr9RyMgU1DKwBf7OLCMOyb9P2AziJdoViKlx9+XBZ0oB/1kTQ9PSrpYkDGkzV2AxlvrAPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712939363; c=relaxed/simple;
	bh=82H5mjw5NaeKvJemRf2cWKjl5tfO9QdMZnNbnN+2l4M=;
	h=To:Subject:From:Message-Id:Date; b=WosDVabUQGWpTeLr4rZGyMiwoP2vEOaZuPzAkDkbiIj5isLVMamlsyGDeg1YCy1enCRcn2/7H9OxGSc8Bv3pFEod04EQiVh5mUJYZeVUsy2gj8qER8/2zK63t82+dM9UbwYmPo+zC7kRtNS9fjs+f0PwvEIZZv1dN905HBJ0P30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0wW2NVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0wW2NVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC47C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712939362;
	bh=82H5mjw5NaeKvJemRf2cWKjl5tfO9QdMZnNbnN+2l4M=;
	h=To:Subject:From:Date:From;
	b=s0wW2NVUoF71SudlWf/wkmeJXjz+HFuGf+aS6bp+RLtBVFMxlaqanqe8FZbpJgGCY
	 7u253Tp/cPDlSQZWP2I4WIdQbe8rKcHfFQDMfei0rpRRleKE9wHtfz0AE6QrBawRto
	 SYhd2FG6zPi4CLdTJc9513BafYywPuY4oYm4vgNtnKVk6CcqGrX5TP47nQ2IJjKCrH
	 8u6thyOoDIIkoLz0AppAqwRwqNI3NVhl+u2QTpknvT56s7QyB/1EzjwK9pCbK6lR2I
	 ZU8clUjST7qTbhINS0V9nkqUeHWApN6aI16zRQeAEvuqXBbn7QxjUSF3fl8SDcJeFv
	 3Zy5okJhXz0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9126C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293936280.15443.17944307374837223066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d5cbdc27be3829c5880e9123bcd09324db824ff8dd595e1768c12b67e220c9
Date: Fri, 12 Apr 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712939362
