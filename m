Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB852BE653
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761922193; cv=none; b=TcLn4AI4EZzuMUJysLVkaPtys54yn6A+DOKU46YAvWP4/8ogIXBclqkEXMjOcdOfVlQoFR6c6BRAuZeBM7bfCwZDiIbGMTgro+onfIPruc/D9imWKl4VZhTrP9Hy5fRGe+/cPSonyFKgVH5PcL1G6YBW3yXXuD3hZpv6kMkDmuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761922193; c=relaxed/simple;
	bh=obwGuBwRXsjZVb7iLcjS59gWCoxhtat3QtMIu8nxuWM=;
	h=To:Subject:From:Message-Id:Date; b=GZ0P7PYBDCWzYqS37SkS2HTk38HzRIs1ysjieAV1ZnEMa4GW7si1WBorUHoLV0CXEvQazXHEDFGPIVRgZUcjc3Tdb9Wnj0sQnOFAN8ZMWOapo2iy1XrGUz42JaVLU88fnbCIINYH4qWHJGlGfbyzBjDAfS0+EAolj9x0iu78Wo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpICNlNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpICNlNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C5C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761922193;
	bh=obwGuBwRXsjZVb7iLcjS59gWCoxhtat3QtMIu8nxuWM=;
	h=To:Subject:From:Date:From;
	b=LpICNlNBFBxnjW+cLCAAQwbQgGaKUgWVS73yVNrkKO7cZcwRPfHFXAzurTXiETyAu
	 KexgrGo8VRkjYnUTeURdC2l/GNzMusplkhZXdb/guPc6dbqbcoEIETNC4RJJA1rwRh
	 eNXlZDWWvsqT9q1mt7drVZQBtNQf5GnX3oB/9uERTc4IqkEPnXrbRJ9kerEYOXAvDa
	 VIcHdZy1ZIH24u1SE7xhaXfYczdpauEXwZSgJncfblYY9y9kvrMi9JFo3v7nlV8u9f
	 d2pJ47MfABqyRj4C3kI/aEhtBTCMSRxDleUn3wdJB2RRbbX7FdJr7WpyWWhbM/9Xil
	 YXLCey7wyJo3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90900CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192219358.4527.10667519145961376628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49be918692c0db136dc1d4b330996315d5fe2a1be233f4d1cf449233e2b92946
Date: Fri, 31 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761922193
