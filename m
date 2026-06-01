Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED136F8FD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780343074; cv=none; b=lDznw9dKq+Cigp2dYKZBKNWL5xEcv6Atyi78yH/nutKthLqMiqtG+rRSH3ewv5hw6Z5WUzk+lf34HdWcC63WRGSI3gwl5Ksul/wb6O2M+HbmBEDE7nrhc6r/vgLs7k4owj0Rl8CbzVs8mtR0UKPxbo5nDkL7/wd9MUNWuHpRoHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780343074; c=relaxed/simple;
	bh=KebDNnXDfSAw75PyZq8s2d3VOEQhfsr1pPW8CPT92u4=;
	h=To:Subject:From:Message-Id:Date; b=XgVh0LCfxry1XmrGzRGAJYHuDWrxUZxC7ma1QxLU/YjeSq5ZJIkWkWnf96W2qJLl3ezDEdYzpaug4kepYa/cEDYFM1OraPfTSvkN/jzkoGja1n1LOUvbc/WTMsoKS0xApKbPtrZ89gnx53h3KjQ7GaUpmc85l5vn4kVaQkciTxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVd6wwM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVd6wwM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05DFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780343073;
	bh=KebDNnXDfSAw75PyZq8s2d3VOEQhfsr1pPW8CPT92u4=;
	h=To:Subject:From:Date:From;
	b=iVd6wwM+uu+uSSlcOl07jFSfb1bxunoutEb57Ab3LqUrN41jjsYjjLJf0Glkx+svc
	 xlQ2Dw0JM9JV0HuemnqCUo4vZ2ehD8uEqya4VXdVpfNJeEhRao8w8uuFIi7/VMHF3n
	 74My61sCnwgXGE1wCJz8tIfVPAp0Bde0fGxmivL3KXxvIIQTrjY9kkr6bcYC9q2B2m
	 NH8X5xS+ClmayQSu8CUYtBtNfPbb7moogpQcEMx3RSdPFOYBMR9ZzbcwPsx5tKDBMb
	 K9rnZbahZAPHQ55aFHrRd4gRC50HuXvgBzNYTPEXzrEJ6cee0KlFR5HowB9V3rkAht
	 dYtFbdgKYHW4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DB4CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034307369.29438.8564564627614881298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02b431ebf1b71cf60cce33598d1fba121045a61fc1f4526babfac6c709c0341
Date: Mon, 01 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780343073
