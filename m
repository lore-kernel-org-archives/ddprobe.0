Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204551DFDB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765491774; cv=none; b=B1DfXWBbfKhly4SGN3OKDwZaX5V9S/XXHZU7KGvHWMfMvJuMwg2w1rLNDR97qCxbwqow/vHLe35SVeFv5gv0bgixYeMIq0KoykSv8ihRbo3fW9EZSSi/xWPa8ckZmhC0+x+MiPAfudK/6rMotePXl+yQvSaJumJoHsFdALrwrb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765491774; c=relaxed/simple;
	bh=f45kwSzg2X946L2saPIgzddZFL66ehJalrfJmcXy3kQ=;
	h=To:Subject:From:Message-Id:Date; b=sAsphRClxUd84tB38cCfDZnmhZNI6Rc6SJn4DJbYyx/p9aGfCCTh4FsxrCJehx4lBL2Qb7CxzlB+HKL0E9qsqoSyUh5Tu8T15bZ9FK5X9Z1KuIcbQpTua5e3pAofZu5pWQx6CGNacd8ubYkapy8xKMQs6rpGmQhh9gIiFd1AlMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3UUH9tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3UUH9tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4B8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765491773;
	bh=f45kwSzg2X946L2saPIgzddZFL66ehJalrfJmcXy3kQ=;
	h=To:Subject:From:Date:From;
	b=L3UUH9tYVZzDUVwwzDZKiUw5pkZ7HXMP5HgJF2t4lidOqmBXrl7boFcJgoSBYyaXV
	 fajdakU2k+6gGkBa6XdNZZPfr+1a7OQbsv0o/KctKSF4jPB9ExHgMD06HfP5TCoUJI
	 6MPK5BzdMSMtJ10f6jKJP54g+IwG8JczXM2n2Ov2OVLKPdfwtIY9lE4oOEH9Z0rAb6
	 gf85bk6izFuP6XIGZ5UbmTxP80REjse2VZ18tGF6jCVNPs4eKrfN1iInFcOzV2Vy3q
	 Ye048AHbxiMp70bIwD9S2DzkoAopfTOjjMotAKH9bYverKFEg53o30RCGts0C/NS6H
	 r+BgNzwhTeeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C02D4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549177359.12269.12945642354187220608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e7a2159e93907ab7b8d93e2ccb912fa431446ea28c40925b72763cacee881b
Date: Thu, 11 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765491773
