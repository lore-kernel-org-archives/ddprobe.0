Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA6DFC1D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748177394; cv=none; b=KW3RYYDJIFLLrWNU0MlbceFgufPZ2F4jdDrYUfmBiHKNVyIU4oaXpFb2X4oFHnz2IkWIrWmS9CPvZ3uFtMDHmDndvEbHydWzv6LE9WoACJa/UJBKL4pbVTtFz6lbteaimL9tn+5GCT2+XdReayoLekajQJBLIEgayZXgXcOvEjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748177394; c=relaxed/simple;
	bh=Le8iTJNyN0KNwh0BB8gBl7vN7YYaryyfwRGW7duLyrQ=;
	h=To:Subject:From:Message-Id:Date; b=jZb3/eZ46kwxt6BNh4eBlXsDykTLcdKArEo0l1tTv8CW4AySBVVJ4Yw4RCzLBTmA3VC678cq+1VqQJ/PIligiPUUEIXKqXzvNNXimYv8J8reBPPlW6aj4IGEC5yt0WHffr/k+l7fmB+cuFlgzAw5uHCGvcV+sC8t4aR4Py+fu2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+Al8io+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+Al8io+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F777C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748177393;
	bh=Le8iTJNyN0KNwh0BB8gBl7vN7YYaryyfwRGW7duLyrQ=;
	h=To:Subject:From:Date:From;
	b=m+Al8io+G69n2hpDU/W/9wPFZXGgXvkPp7CvFDXHZv4lQ4NOOjBwtFnz/peg51IkU
	 3cnPd6ls66uh/IQoHin4uOK98q9BQhY4zktAAby50xuTyPSSBrne+gNpSOiexFjkDF
	 lzmzl6rw6mcfSqqGPrD5vPBcrKpEV5UqwLT5QadkvpjAK4Vn+lsEgtej63q6LZJRkU
	 HBq/3Qq5YxCvLoSMkMkfMDoGoyih8r89cFZkYwRp5DNTCNS9YWUu4wCWSFoCy66BGw
	 LL7//ZHUgKgaFgMx6RLnj9xu08y83qkbKaWRkSPFZVfh2PwNr8bx1aaEpNBBVQsCP/
	 yjmb1EZNJgSUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA84C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817739357.4383.12671042761013391374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6576742e05c9a59edaf2e3fd622504b5b1d6f181403c8c85e69ae9a48b5c8a
Date: Sun, 25 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748177393
