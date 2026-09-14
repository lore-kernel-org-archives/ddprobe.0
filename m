Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB640EB9D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789419634; cv=none; b=ad8/FPowqio/kOTUai9lUhZmFVuHogHnEq8aAxuPKbI2HuQ2aL+pSpIJ+t0aDTx2OrK+LnFbya7ped7h1ZOOfHznwdP2KnbzgH1XJ/bVNcHGPNutaYqZ8LbXwO7i8/dNj7jLjc6Ja1MSN/RuBK9kbs9p41QLZc3zjPVCXMJDdDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789419634; c=relaxed/simple;
	bh=gn0HV6RO4y/N26AkZzvQdFZ2x2CaVsIW5NIwTokiRzg=;
	h=To:Subject:From:Message-Id:Date; b=bYBZMuseVQisJhb2qRzuTufWdnWbzxz5k4vTu0IA/Zt1CSRZqExtI4bKixZBei3VlDdJIGcW5U3Yj8rDJy2YzylibMBVWO/Q6rzOFReqN+yqxuf0MwQPiaZUiRGBGgOGWZb7ywwgwuu25g5ZiEwIfgY8O8p3Q6Qk02KxHaftkFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+JgwEYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+JgwEYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED2FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789419633;
	bh=gn0HV6RO4y/N26AkZzvQdFZ2x2CaVsIW5NIwTokiRzg=;
	h=To:Subject:From:Date:From;
	b=M+JgwEYdO0EQ1IhAGRGjvHTX+5iMt/0J+er91o4s/TIjL5mIbJob6RecR3YzfyMc4
	 XsxylLoqFy69YL8z/1w6IcgJWhsMBdctChnr+xasvamk0VLPqrrXJcodgPfI5BPJEW
	 SaAv9CIKTkTYKTakaeDihRk2l7VY6nmf/B/UeaAgZTP2s/3dn58GW1bl4YW3utfU3k
	 wNZquu0CAOVUkb0w6tgJQRVulbOSoWMZ61v9FDEt1Wzqd1+sEjIcuZtC1aHtppsL3q
	 Gyc1odKZ7Jy1qPmJioJiN0deo2SnjeAyoHbn7FeNZa/RENuoyfY2t4bhNJ08ZREmQv
	 1fJEVu7W+xwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAABC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941963369.30824.9250482993636671259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26022feec3641853f29b49cca9c1919a242ebf11532048ddb5f6c7ee3665e65
Date: Mon, 14 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789419633
