Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515753815E3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787247034; cv=none; b=TV89OEpTPvB4Peih6Qqoxk5nvuaJ0uGeNBGU/AEiBGWY8Nx7jfYB6FJV/p3BdBiIdoajaKQQ39p4XL9RuJdg3BJt8k/gQeKp1fSceHS9OIwXGRK3m09KdGOGGTtsNwS/PjK6CINvP0eo7pHG12sa11xR75h4Ba1MTNSpR8FfK9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787247034; c=relaxed/simple;
	bh=1pQOPzX8jWAGu7ckUnThwUtnEEehItG/6HsnBsjLVsM=;
	h=To:Subject:From:Message-Id:Date; b=bvKU7bAdU40sd2Yw+GjnksqC3pZGXReKWZ6CUzo+BR+tqUS+XmHC/Y7pEv/+wdnhxsBf0+QnEH5UGDYys1IrCTwcOcyo8DrJCe7woUo+WwzY/D0jqG8y4VZ5ybtO8Dw9Ank0LJx96Hvv9MIdNj8a+n4lyQG7WkqmYmiOjoTKjf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx4II9P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx4II9P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787247033;
	bh=1pQOPzX8jWAGu7ckUnThwUtnEEehItG/6HsnBsjLVsM=;
	h=To:Subject:From:Date:From;
	b=Hx4II9P54de7MEdICKM8ukNzB9ADWomEERVwxbaIAdX9EckIFE1ootGv2htdrLcEU
	 +R3YKzUcEjiPPeOYM0Ygxf5lqScLDVEksGW2HLsHh7PuyRVaEANL3x4GPNrwh/F8FU
	 RGMEsH1/fAQr0u5cDO5V7L22cerTmDyhkj3QJ1ikwp27B8hJYDxuf5oBM0ehZH+bC5
	 gmj4wdFT0B1wxUthWsaPltXwVOIo9ZLzeveFTcaxtSAXG17nktu1z5xb3Zmy8prG5s
	 8GZyuiTCSGKXT3mPSECNor6J42vIxrXYPzlhzl5RBO6kFIoBL7eQLp8W+lWd+hju6e
	 l5sBcdJ9zgaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51BC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724703370.10293.2676862758055411508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03686454cd3fe04391219bfc8c1818ac52479cd4a9ed66547e060d151ad12de7
Date: Thu, 20 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787247033
