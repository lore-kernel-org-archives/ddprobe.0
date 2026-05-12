Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163CA1FC101
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778555434; cv=none; b=nMBqNr1gPbmUs76YrUwBSjVKIJPss39yQmKp0dw8ErBw7WqMr9GKVEV6GnoweuCEplhTtXBGJe24Zzp6XtSuPYiAa+6QH3WR+Bo5AC2HhfgjuCRhxjISwsepXcFHs9rNjHid7ELvdf11bbInerlLq5Q9lt/yhlQka9hDdmfWD+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778555434; c=relaxed/simple;
	bh=0YciiMVf+18FuPcyxzDNZKtkazURnumTUCN2W5Fbiy4=;
	h=To:Subject:From:Message-Id:Date; b=AlVSgIT3DY+5+nZkMtNgYBzBR9chNOF9y/KkXuEmN+wf25WT0wQ8TfhONqViTYZYxSWQQOwnJOMpQQV0eJN7ZWkYiYnYq6Q0tQ/Uf2lDDA4XpQls3qTEnAkhaK838RgzYvIN2E/YBvxhf99gNujQoDCjRQZd8Pt3TxmdWDf8PZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7dmvlpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7dmvlpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0229C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778555433;
	bh=0YciiMVf+18FuPcyxzDNZKtkazURnumTUCN2W5Fbiy4=;
	h=To:Subject:From:Date:From;
	b=U7dmvlpwbZN3VPA6USQBp/dc5OgiCsHaOUfmIA/UQu9WDEK8BUfeeMK5lgzaRRVIv
	 1XAm9z16sJ20YjtWMkznutwgJgobtcEhIQk4Zxb++/pnvmE2ch96zgvM+trSaFZWnU
	 Y9T5F63fQF/DL3wJHJ4YfkTbrmi9w5ypyUUShln9lEvvUWHgxvofImYxznZKaXwxkm
	 ZFr+4TgX5PzaDnpGFbye83c788w0IrKVC4AzwMDO7DT1r1IaGLZVd16+6mo65FFbRZ
	 r8NzydaAJuo/2DNLAwYriZ15g7Fd6orZHnz+nDkcaT0pBGmRIPmnrlsY9Wl9dKCWFr
	 w1Z1AZwGQ7ikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D3ACD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855543368.14175.18092830457340579233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44de36fe8556de23a883dec261b0373e4e367497449a3c783e84b19c32740b42
Date: Tue, 12 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778555433
