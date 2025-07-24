Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBE4270540
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753355994; cv=none; b=FukSj+/6nKRJ1wddXF4evhhpVi5m8GgAU98x+VOWTXBp6gFG/RZIT4wKbSkz0HCHqUCcQJZ5QMJQp24/nIsWQJ9ovYTPgWJlxDEM8M0k3mVze0Q5fgWCZ116si9HL1XtqNHJipJiuz8tnr5KixUAVRvbuxb10b683dn0U6bvIkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753355994; c=relaxed/simple;
	bh=yQqSrXtKUV0N9dVg/ErT3FY9KUkQBEQHHSETLhQyiA8=;
	h=To:Subject:From:Message-Id:Date; b=nkgo8J7wuw3s+99In39JIFwmUgMxcq+mOYU8/BtTzwuroP/U9U3OAw5ewUi7ZNiG/qxF34T7Rg4nPbGrB37Fk/2sYWH3KHHJih3izS0WCx0/9Ei+AAAorqVS7vcWkdhPvHDo6PM3L3+AFZ06dTZq0b9JIZzbOw38Oz+nxceRtBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtgmFPTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtgmFPTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FFDC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753355993;
	bh=yQqSrXtKUV0N9dVg/ErT3FY9KUkQBEQHHSETLhQyiA8=;
	h=To:Subject:From:Date:From;
	b=KtgmFPTqvV7zpyuO4Q+CR8aLiAlGizvngIYakVsigBK+BP8vIIu77CVkm/riZTdBw
	 EYSvCZcWAkrTFmzDv0p4A18E4tIDrSVB0ZZcT+mBfs41tBH6VzMQmhKSKdw8+CAguT
	 d+dHyXbtyIG5qpil5up5cTnd+9DIynkT4x83xxZz7iMyfwXROCOVZKe4kzTYWhNJj+
	 6Fs65Tkshmtz/yCNfTLNjoRvVd5NaE93rZYJo/X2yQEjPOqPzvsKlPfVU+F6kDyaI2
	 Jxa2QKitK36RQU/ZiE6gbbq8q+yXPfA3WOl1+VQ/lCodesyvraUDMyxtY/nX6fBrUq
	 bchtokjCajN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A67C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335599361.23038.2588873954547223561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa1f46c62b8f42ee66b37495b3ddd7bb7df5a84dc7bc3db65935b2da59628f6
Date: Thu, 24 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753355993
