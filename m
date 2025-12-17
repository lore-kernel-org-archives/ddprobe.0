Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128C7274652
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766001834; cv=none; b=AYzXmkv9niUe54j1ale+a+IkbOW50MpoSTH8lY1/d0kKGsGuxY+vL7Fgnjnk+IPcX9F+U7UiGJXsQIthL69ymYdNzbKiS4wNyOtod2z9en+SblPi+AR0grH0PKegszvb4F9N21UYIHbXfdp7Q98p+hSDwb/Oo77g3tMQjS8ryDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766001834; c=relaxed/simple;
	bh=w7gD8/KCyfiatS5mdQxGzVM80tcyPePPQHyBMaUhOGg=;
	h=To:Subject:From:Message-Id:Date; b=WIeOX4ncUv/7U5xucOIQjmWToE7BoAOUscQD46Pqv6FDADqLNLi0SAKfC/UIVlIduU15z96heMtoaL1reMj/9vN+3sRt266CcVjIjnDtxovUlLW+vFlcy+ubqtuwPewSBW5CfPzu5kTx+Bipuqm/YL7+Rx+ZfsGN0CH+PEKssww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3gdCCkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3gdCCkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766001833;
	bh=w7gD8/KCyfiatS5mdQxGzVM80tcyPePPQHyBMaUhOGg=;
	h=To:Subject:From:Date:From;
	b=o3gdCCkbPPB6kLqVvBkndfSzYFYbccRzQLdIGu+30r+wmP1L75TlXbi4t+n4sM5Mn
	 jiYpdum/ZLDLg0pBeNRAaOdRUctuRYZkFq6BI58jQIiKGDL8F8W3lU+ELx46y2QwWy
	 /sQ12hjHpv8hg7hqYZSntTz5xWUOZk4ZaGFyHoTm9PRtDwJiKGwFUslslruxhAm/jd
	 Hisx6pj0GbIwxONVdGrLvY4FuD/eigl6pRv7zJrakJJLH9vPwyCyccPjv8rzt8BcJq
	 msLCAcqCwUJoD5g55mPvz66JIPL+haB+2uF1r3w8A4IZlPfG9YHu5p8hZ6gOesjGjn
	 SZZoTihL27gJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90400D66B85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600183358.14663.13484298181000158048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8e67f9a8d5191071540a1766a3b49590561f74967329a911fa506f90bf618d
Date: Wed, 17 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766001833
