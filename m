Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222DB23D7CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771189494; cv=none; b=eGC65vi50R/c2It7u7swwec+TVCfVKQwK5qovDehBW3M1xkM16DgMacNbKYiTOPxs0x8VwhrY6JNmhjwABlqQbeiJBWdUvCUwd/Eg3xsG4++/y4WunnWRKXKksx9gBreHrx0YgIcTX8hQUkr2IUJCmpz6DT1lpC9OX93fOW2brI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771189494; c=relaxed/simple;
	bh=kr2jDrCfocJG/gid3Swa5PM0kH1VyuKgk+u0G1pnuLY=;
	h=To:Subject:From:Message-Id:Date; b=W2udMqxJ5xaYXO8yKHuG0u8rpNA2pTa02YIMsL0oXKgCk0Zye++lHLP3L13ylEnWN9oivcd51I+I/azrnm8qA/cBcwkSB1Nl0tWDtIL22nyH261ozOIEqq3RW4FroSkN9wNkQj3OrAR9RtMteCKwodRwJHvI+5tohOzCyDyogek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF3JJUsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF3JJUsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D43C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771189493;
	bh=kr2jDrCfocJG/gid3Swa5PM0kH1VyuKgk+u0G1pnuLY=;
	h=To:Subject:From:Date:From;
	b=HF3JJUsC3MEDugJGIHYF77LI260PDLiuAhSC97WDEgrf/BLAjLEvtVt0OK311tvA/
	 Myiicjp8IO5x8b9xe1lJtIFhAA2EWOsF/NQKjhVfBJLZRNyeUAUT1uyNWuyQBNRr2I
	 c+sZtxR+6S0ajt3roNsjDZtfF+4kPPXeV2GmSsh3dj/oLXVTxlL9H2aojSpVNt6mNL
	 gf4K4X4c5VsnPfN9tZVzblUNiRaE9rGXll0B2wol9F63YOKytoYqreNaTrHir6jlCh
	 xX562q/oPfaGRpEgQk4G5Px+wFFJte8sbrSycVG3RRShytIvj2CnMcbwZREekhhGnP
	 ljtTt1tRafdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A55E63F12
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118949368.31378.3537243903855947586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e556911b15cd71ae2e841bc2fb419acfd3df171ac332d3db55fdcec9cb06ec
Date: Sun, 15 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771189493
