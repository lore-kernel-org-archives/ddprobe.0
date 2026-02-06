Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05120346AED
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770368034; cv=none; b=W2Lgz998JvWRvc1JGpekeHJ1KiQ7lXeIFaAAyKAPRqOMqTBBf//r52Gv0xoeam2h6yEELFJ2rcUzoXRZO12mJnQFRL7HhhDKbnPDcIm1zfvwTaYamA6NtIHcmJy7+4B/Napo8had4V/scWes5s5YbYcrJLqTxveRzFA2UbVE010=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770368034; c=relaxed/simple;
	bh=CJjbnEef1Ka5SAxwmst/rkshrmk6VbELUM7BMJnDL1g=;
	h=To:Subject:From:Message-Id:Date; b=kDHsdDKhL0jW8zhiakAHokkGI6lOTqwqBHekEzJubBweBRYE1M7OzTlOac49khmsnyZnqNWNi9dF7WsDS36zLNKhY8puzGmnWaE1gdveTHpR2nUIBGpKSn1obXceqfXDr+4nkGL7j6jv4h8sBDycHDODF5Ss8i0GEyPJS7rvJM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4O0PJjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4O0PJjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C6FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770368033;
	bh=CJjbnEef1Ka5SAxwmst/rkshrmk6VbELUM7BMJnDL1g=;
	h=To:Subject:From:Date:From;
	b=g4O0PJjLa7PLszKklBHhLb0ZOr3WsJekvvBBKazl3qM/d7/cRGg79QvhYUY22WD3X
	 Qn/t9lUOReh71qSsa2W4sn5L6yQ+u3ZqtdlZ8ZketLuSaTCB36pLfQFpjLB3C38cZD
	 8Wbvlywhhc8tA7/j4g9vltqnlJdXDmH2C5GSxe31WMRMOh8rFIG3vtAs0jvuzTImRf
	 CmzsYmME9mwy69ZJWC4xe/y+d6e8wq3wmckWmCf0gkj6TZf3Jij/tjNYN26LRW9sns
	 VFY2STkxWhS+QzMVe3rZBdX+mypXbGia/4trnjobfnml0AqgdNe5QZhfG3lwRRD318
	 wschNBOYWaLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9859AEB28F4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036803360.801.8914312494828495430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed86ed828161b46548f220c249aab4806bf9e77d4ec3d196c9319a59816ce2d
Date: Fri, 06 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770368033
