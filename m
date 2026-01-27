Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEAC3451AF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769511234; cv=none; b=olAiDjl6SdC7+SDAvTLJBjrM/arSwrfiz8YKp96NDKS3Yxjl2PAptmf+NxTfITHznV/jD8KTocdQk/cDsFO8hMXfWYmAvp3vNSO63owuQDP31UEl7PJ6f5OKnElPibGgd3U9fTTirTUTpco0M0q1qERlAwu0fscPubnGP6WweDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769511234; c=relaxed/simple;
	bh=j1HClRUxE3iTisrnt3f2Bmgz+ieyOFSN30DOZmA+KRI=;
	h=To:Subject:From:Message-Id:Date; b=H0Qp067+jsT2/ZW3YrVkwc7L7BVCda6vbCGfqM6MYRi4hSFw4JBC7QMl+/XOP8OlISPTEPhmpzJ7XaAFsM8QU4XAAlggOe/UkVIvpE+C+RUAqeR3HUKBDPw/BSNvM2hsFoia5h4RFNaAUvNpLClDR6DClSoYBw4LXsWnqmYt2+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwboZnGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwboZnGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B33C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769511233;
	bh=j1HClRUxE3iTisrnt3f2Bmgz+ieyOFSN30DOZmA+KRI=;
	h=To:Subject:From:Date:From;
	b=gwboZnGP+FcydU57MYo1G1K/gcOiv/CC+yMlKeltHNkv45HnnZYZ1F+LIyqmLLqtq
	 e9AboomNTMp+z2n4irMf2NEj7woR30OnN3XvFl3nkgqdEGTMqYAAPmGWY/3PIEro1j
	 NyzD4xoTxRbSzJhrNAWlmIhbX7Hr03KwHQvIN2nlQ7h6MyTmtmMIkdizuZEWo7g7ye
	 jhvOo95IonE00kGJsUF3adJbFJnpc+iJX6zQTn4XFmMgHVq8HDco1ZT7gTTBR25bxx
	 Q/Rh9RZG5DhA/9PLowT81XzUcXH3denhozWYB6+xTIQiGKVanfABFvNKaL2u+0LYS4
	 47now3PLuFFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E63D2D8FA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951123360.27224.5168000630947933076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e295052abc0c4b170c6b85a5a4d04644dbd9d77e7ce460ce6a69e32326f98efc
Date: Tue, 27 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769511233
