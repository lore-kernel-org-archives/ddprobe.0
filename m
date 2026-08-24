Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68D322527
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787582434; cv=none; b=T3d4u8tDhkD/SWyIShZqNLiepl7jwWQR8hoNt2XLtDL29Pnui6A6k2KHmB2XpdpOGuPI7tT7WJorM7OqbZlCYBIL0ntwerqrObLWBVGEmvMD6nYCF3hLI5JxiboI8G6mJADbWcv/SCzBjv9u06pZ2VRuM1bHoLz9Rn++QaCgwfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787582434; c=relaxed/simple;
	bh=BUAnl44icl06PygSOu45x8fMloO0WrKQ3pux/rnLrGk=;
	h=To:Subject:From:Message-Id:Date; b=l+iz1SD0lzvXosphVpFzUdPwSE5obH/2IkmJpr5QzI6c+y+XHXMzVkpNbzUFkCgKWLiIKd+TvPyjRsYQ+butGXVZRmfsnzg2wzTk+4T6LgrWrHOFluENGICzRgVOZkCIXzxbG8wFdqKXdSWT3y00WHWrOc78XxX37NRGoUbXS+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOXOoNcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOXOoNcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEBAC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787582433;
	bh=BUAnl44icl06PygSOu45x8fMloO0WrKQ3pux/rnLrGk=;
	h=To:Subject:From:Date:From;
	b=uOXOoNcHEI+HMtIlnGT5j9fSoG7lE1DrvfmuHdS8YfkO+zTEp5n5ZSfsGuqUMNQRn
	 /yQlozFxb5TU6SWn3efy17LiaS7AoOPOJF9sasrbe3Bd2cjniH7txvVdrPczWpLpzL
	 4yZrAzGKlvrZDTdqz253zui2Xt2rqaeYpRubtwnxjMr4+2xKjqwooQc923JVBWq6sN
	 KtH/zEOyiSuW6C2Sh8pkBglvQYs6e/962WiNjtCM/WMNpD7FBU/k1142ShynfIwtST
	 RSIXgLvcsepzUy7iph9qyG33s9JpZ3QzqMSO8LtTjXqS3TaLhJlA5H8SGplnBw1Kag
	 OJZ2jhiW+COew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69FC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758243369.11537.5568644735230009010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce797f8cd82a39bb1bbc8c8e247b73656d957db599e881f42195f5344386a1e
Date: Mon, 24 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787582433
