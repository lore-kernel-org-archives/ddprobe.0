Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F971F3BAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776909454; cv=none; b=GVGXFpAADIs8YPcSyDuHfZeX83j8mGjdazmcYMmGwX88WcbaXa5moph82KP3Unsn78BDsLhOcpaauRPeUfStwAJMgueKRkMG8d16TN+RZENHa4kbRcwjVZ/Q537kTi5CtyCd4q6VDQqpRNP0G4yllAr3HPnDS6ZarLpdxs2yVkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776909454; c=relaxed/simple;
	bh=TkfsnTCR07x5559sbeEj9rUj9PZyXLDqd1jchZsSRHU=;
	h=To:Subject:From:Message-Id:Date; b=UpiCXV39k+pZ2Ub+JXGXC9HurzBQjO+AYeDOQ64lzOHX6LMFn6zroVQgsH2xXVuvywAsjk6z0iFYhO+2YJVM33/GqF8NEpy6ImAmavcrHjcMxA+bD/IP8Qo1qc1ZuV6bfuwS/TBFqxreEmxtWxiEVgXboBa8UViYOB4b+QtrU7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6TIX7DJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6TIX7DJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA15C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776909453;
	bh=TkfsnTCR07x5559sbeEj9rUj9PZyXLDqd1jchZsSRHU=;
	h=To:Subject:From:Date:From;
	b=n6TIX7DJQZfVANlWAF/SBf3Qq+mkhc5HLz5F3IMRz6Gy2JB7gUKTNQTU7stp8bD1D
	 5w01Mm7NYOZq9juo81RLqhmYRbLI9ZMJtStP5gGgPMpcHQKQjBEa4FxTyG+Ar1W2p5
	 grB2S7XG9g+jgkU41h99CoBX28W66F2DdofvEa97JCJMz3e8V+AQeI5mDzc46mlUsm
	 aePm7zEhLTqOllI3G1KGKiyXE3t6sScaC4+QSt+y2RniIVggMlmR+c9Ui5HBm78IrC
	 Ohlpix45C5byxInJKZX4onnDdOoMp31jTyZA5CHse83qoHRoofrIhtlWW0pQZcK3i/
	 k0FmXa29OT5KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86DFAD3EC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690945369.25288.4750875308993317674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf00ed7dbe40de2668805de2c177a9ff4cc828085aec6df547c8ac3708b41f73
Date: Thu, 23 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776909453
