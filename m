Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8B29ACFD
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754861995; cv=none; b=tAi1xFWYyz7VszUfwzP4iVBf0rLWggb6GMGZu5T5i9YsxskpuJElnAAHCobrNC2p/1zvwZFUHBYgG0SpQL0SkrPcS/lMvB7GpuFxmuhReEhtrSPnEqO6W0hy+xlKOUV533Hp/WqbO9snR+wuo6LkBv2+sO7Jd9w+1+SUnwKaeiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754861995; c=relaxed/simple;
	bh=tkRZRf+xakLZ3ioW5GzIjFIIvU2Bj4LjnmP5xCNGph8=;
	h=To:Subject:From:Message-Id:Date; b=e6KGoQmOCkUespbYEFopv/rhnHxv3TH/f+H3XeZhnl8zplgNJc66uxsNnhE+GEzGPCJPRDd37f6N5EZDFYi2uHR/+QVMFdnrxNx2hLlvEd82Mrhlr8hdU6EsMfnLQ+5+hoapLh1F+0piHopYf2xLSGlA+2kfCcCg/ohi9ezgoyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHkErNy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHkErNy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0845C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754861993;
	bh=tkRZRf+xakLZ3ioW5GzIjFIIvU2Bj4LjnmP5xCNGph8=;
	h=To:Subject:From:Date:From;
	b=oHkErNy3OxY5cRgnVW4YUCrqtG//r5hrJ4xmzhOhlknCVn6LLusCnldSJh7B0fGLQ
	 Hl0vKWf90Emvj7ikky2WEcktZOL20DVjsepqbwJIhHwvRyqBJUB7rvPwRz/mE3GSfR
	 LYxFRsJRUGtsuES5xn1PXCs3ofe8AzBlajo9Oy3ygRZEPj4T3aO3TU7wz0xybIShoP
	 L/bEWgTUbdrLS7duQYXyqj0H7WtHA0QBzfsgBjCNFWib+wASqIksk7hBEgAahogXMF
	 Q1U4F6IQgQwsUhl8lbZ5tkczZBypRWF2okvmIQr5hiRSOkZzRwGBK/8KWj0GFhF1+7
	 UrkMm/8+8lS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78BC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486199357.3180.4972969931553877698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68ab060ad841b1bf55ec1eb9e226fd0222f37fdcc52cf0c0f43c1c6be5d098d
Date: Sun, 10 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754861993
