Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09562215F42
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080194; cv=none; b=HQZTkVNw/N73dYgduQObsmMl4+WsT/yP4bU8wrJcNkc0VJzyeJTtZGCLelC0acAc9x96Aw+UFwx5x7gagIV21n7xFCKCtbc/kSp79KgPKV8lNTkxLZdFIqYotgUq96az1r4Q9TWaI39DHc2jrFQMz4I9Xita15cZXKR6yCh3r+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080194; c=relaxed/simple;
	bh=FGU+ncrtHUOh4d2T9X1U5M0SxMLcDyBetFn+b0rx3jg=;
	h=To:Subject:From:Message-Id:Date; b=QSlmDD0Z7/ltpKLNqrjk6+yLHd3O7SDdrzA6vT3oF2pwBzcRSVhv4KUAoBbG+X4Dn0fn0hbx4URQxAbZ1MoredZPgQK4TX27LtI5vbI+XHWiG0jM7mHJ904xBZUW5CRag1JIbMOJ1G6R/dELf4yDP9i8fCsKZMxEwp3gnTsZ59w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJRllWhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJRllWhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763080193;
	bh=FGU+ncrtHUOh4d2T9X1U5M0SxMLcDyBetFn+b0rx3jg=;
	h=To:Subject:From:Date:From;
	b=QJRllWhUUpiXCZeOMYKX9QMNU/buqFGdmkl41Vp9ExI3Wv8G3V3XQ8DMqcsutpkAA
	 /wx4UjOjLtxeLFDUD8hJ2V+EaLhs7yWnZ3yfzqHGnNcheeY1xd6jjkRhraz228NRyy
	 pX9AZw9Y+HCiuX/djv5Q/TfQzfVgkL0twy/nKunDBfr9YaLiYomLwBThv1fKoN17LT
	 anYp25Qe8BPxokhy54QLWLceyTCQoIvyLMSAVRFTZ3PRtH06Zdel07r7IGJDogYUHX
	 yIiNm5LgOd7IXHgcRbjNWo/H5YDpKx07vdL2kpYYqLgZfupzLQa80dClKDBgZ3DyqM
	 Igb4dR2QRPG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91770CD98F7
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308019358.15705.2830118333338403476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32797884808af85480e0d15942151aac02241489a111861a2ab6719b1ecd375b
Date: Fri, 14 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763080193
