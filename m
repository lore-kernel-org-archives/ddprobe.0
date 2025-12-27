Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279243BB48
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766814234; cv=none; b=fJ0ru7yK3jUQ3hdKIo3TKenRLiW5aHg+NF8HjyYzS4XNxtsG+/vIfuSACqcvW97iF/YOBnqLjPlozHYtdsPLU51BVKenWnZY4ZilaR710fZo9EPZrsON+E/wg9eaXKtXc46gUC09lIO4QRNwMhyjJyP3VZpUKOMQ9o+r13kH0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766814234; c=relaxed/simple;
	bh=LHMgypfif/dMkg7v/ln8cI82FdtujJ5OhHtSLBkStIU=;
	h=To:Subject:From:Message-Id:Date; b=nxxcrmOcVJwSQxquZIe2k0BrrBhxbLN80lvsWenNA/ORx6/UOlT9kSAgU72Pvh30ATxeq6ucD8wHBSArvpqIYYx6ivbxAvNI1H+5UzQT43f4MWpTtFw6iUDC8J7aIwg0fKUov7VHXT1lPrEg7KQMdLpM4xqd7UGklIXhIHe26SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpPvPxFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpPvPxFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA87AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766814233;
	bh=LHMgypfif/dMkg7v/ln8cI82FdtujJ5OhHtSLBkStIU=;
	h=To:Subject:From:Date:From;
	b=fpPvPxFLL6RyuWYW21QLFWXkMS1MO8ixsUIPtI+pIQZkAA7AvxKeRgDkG1aXFXKSz
	 7+OuXasK7LsU0RTnxaajoIO1puRWwkIchmcS53136v8c0BS8bfNFnZl4WFA6q8hlSI
	 MfNCKT9KcDgWJ6RJ7H01SK2nZ8xprfLN2VpbTsaFOKqUKSmm0E+AVqqWf8szSHG/PO
	 ZXdSusLUukSIGItu5zf3Rs0YCBweuh9RB/x/qa5/cjLeLWGxBXltX18DtL/Iv63oeM
	 Sj/9HmwbD360mdB87U+to/3Qk+ed89lBtRSCGJW7ZkLrILdFoPuZ6rTJ0xB3mR95vB
	 vGZRPux3Zuj0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A01E8FDBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681423358.15397.106210298808249793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87b1153cb0e7f98e378e0d01798bdaaee480a3ce9dfc175a31fdd56ce7b9f54
Date: Sat, 27 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766814233
