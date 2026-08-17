Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A11E23A99F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786949434; cv=none; b=qy38Xpie2VARnbqlBLVzP5n/58BAElv0U4QJ8DxOveFoEPgPE9reFiz+MhHb46ZvGYvvc/2yTCdD13lZgqpSs+hF9sjBm8/zsRkxuu2v3RU+e8ChzbYePEEyqcI3nIw+j2iYPU9gpyOSIUBhxx7lX/HP0G0U9xMbUD1erB1no38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786949434; c=relaxed/simple;
	bh=vH1gnDRWDM5KEIj2/YIBAkmDS1fhptLO/5aNKNSLk88=;
	h=To:Subject:From:Message-Id:Date; b=L808eTZK1hmjGZ2zfwynzr1hWGm92KyQMNTtbz8Kf3UUHE6RwSWmyKFHGR/g7/Hq3eSfLRVuG9JKF+AuILLGPFJwJYoon6plLPFQ2SeTeuOJijb0HvHPBVNo2NDWH+frnhwGDlOmA0JC/7rYqDSc1/3+gOgPbfzpGNRpCbsJiNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+ibwVvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+ibwVvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF103C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786949433;
	bh=vH1gnDRWDM5KEIj2/YIBAkmDS1fhptLO/5aNKNSLk88=;
	h=To:Subject:From:Date:From;
	b=G+ibwVvnvlAuLv4BVSR2C0W75Wg9+5mUfvOonqLdKusKMciiAk+9HPlYzu/IfT7J1
	 n9UcY1aF2hg7yHYSBnhCs4UXaFt9lrGKOEwtHQEMsVwdnmOLn0nn97TQRoZQSa1fOM
	 1FlWCEh7p8ME+Kz95oRojg+22hvUtpM6ZKKcChjM1cGZX+5k9RKYFVL8gQ2+T+QFbT
	 1KKULjEaz4KUuk1sBfeLWEqRosJ3IzgANZJfF+OOdvdftpYqw3B/hDnvc5BX69JkKo
	 WT7VWLXAx4z4invSTm9ykUsw02Xj3+NtW+xm4kxoigc8uvvCUVPKc88xtUVsx0wVjr
	 FpFsDLD/o1B0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AD3C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694943374.13602.8806242774905945112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d43f374a6269fed42b0d953b8aba4070b192e4674e0afc5b23487c46df93f10
Date: Mon, 17 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786949433
