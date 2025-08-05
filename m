Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDDB1C84BC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754357394; cv=none; b=hZCj8aJH/yadYk/fDnTAe+C112IX9yMZZ/zcTttnE3jrU1gR2cPoBUfVfSC/GJEWgdN+a7CskYXrTjiaLwlDpmbpy6AvH9/z6bEtavkbUc+evhgkvUndSeDuDYdsAtkhT+PShngxa1pSAuQ3L2cxlb2F2IEZk5vI8xzlYWjv1us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754357394; c=relaxed/simple;
	bh=mZWD0t74QU9Cc8WXbDExmYPFuySZmtiLP1Y1Q8Z/pWM=;
	h=To:Subject:From:Message-Id:Date; b=P2tgt2cLThvp8tQSLn8WyDUklWO8I6HlCpO/y9sodFUAKThCBbHJy8jQ1y9Lcsd+0YpVtkvegJUaXbZXXS/lhYszXhYeSGfOwAg6mjzj72xSo2JutA/xQm3OXlLwdMjljEB7zRV6mG9wGTwzsHtm9M2enQsnX33P8MmCp6q9yXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIU++ors; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIU++ors"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754357393;
	bh=mZWD0t74QU9Cc8WXbDExmYPFuySZmtiLP1Y1Q8Z/pWM=;
	h=To:Subject:From:Date:From;
	b=NIU++orsP4BDWEOPgXZAodOX3yyRQ3CdNaIW6EZ//Y4alUIMDOEaGlAnhNuSZrO2l
	 g5O+hMGx00+M0sRHiyRmnvl0kkPuE5QCzfr53idGjUAlkFhFeL/JGAbq9MvKocJSI7
	 Ci66pHvdlvkJsreVH7wC57rSKBBvwTtVbuTMWhVRLaTT39cvyhuPwCSzeQuA21ZBvD
	 j8i/S1qUFvR9/So2bqbaeqdrRNF2RiTcQUZJFgEPp0hfxm6rMXDj54yKydTyVGjqGT
	 dBXqkRDVLLzvJNHvLjfdySa2OYyq7tpf0tQuQKrgBjbsRWY1uBfQ0CQGdvTh/k7N9O
	 IAgiVSeVunv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F503C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435739358.15375.8404932321120151187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea9f4ff866107790c04bdf7025657931c91f7fc8c4e560de45176959eee9411
Date: Tue, 05 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754357393
