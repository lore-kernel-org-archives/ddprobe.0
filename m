Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652EA21ABC9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780142014; cv=none; b=KFUt9evqVZfpBJwCtStDmzFCJBIf5sk0+htG7TU1oxd9j1gzWMF0X6PGpmKXb1swR/COr7CR23dILcsSJFub58w1+L1fg57T3nEuo44MKjU4Wba7gUn4Z+DAMDl2G0b71i+f0VQvxUUxpqDnmhA3ahw1LQIwFfqsJyaCJKXvHdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780142014; c=relaxed/simple;
	bh=KW9EdH5Yzl5t3J97qUEz1Yp2gd6XHtK1kcCkeFUN4yg=;
	h=To:Subject:From:Message-Id:Date; b=aayLXcdiR1zsUlzD33x8ZJ+ko2X1ol9TTPtKQU/97K5VU0gwzOOF6EciNDWQ61/Ko33lSv7JM9fv0iYKTQ9X/GzWDZJDq4UpNku6Wgs5Rho3pV7E1nGBVBQmF8zyDNtqO96cKjCEseT2fpk0xk9d7lIl4u4YwjHxGeNfgGjB+2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFmFLRBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFmFLRBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 034B0C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780142014;
	bh=KW9EdH5Yzl5t3J97qUEz1Yp2gd6XHtK1kcCkeFUN4yg=;
	h=To:Subject:From:Date:From;
	b=XFmFLRBo9HesToXXz5AH3/qMFLHujaEPn7QjH9swfgh5n0IVWmlAF+np6SCPrxuBM
	 6TxiLSQkNShiAV0fQPwfpIjtVuX94t7WNaU/GMa2VRkPzxmTeYMNOJl02chedlebbh
	 Ll9twni+RIHOs1kMRgo7a98b+46A0Cb6/Rp3OinKZaVTs+AyBEiySrE74ZIOV2iWsc
	 j5HeXBkADBjSwVq9Ctd5UyqWT+te+LoYQtE7Vn1mbB3+HDS7hdYtit/llZcpXy2q6L
	 Q8tIyniGJPKk7kiNR2U+b6fd7G+voHU/XwxuKF5oykj0yaLSwW8aM3nKPItxodhsmc
	 rR5V/kdWnhFwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C615FCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014201376.19596.5998155487057196299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea64fc930af3c7dfbe8e4e5f074a94d46827c538739e413cb7aeff46f4f0e3b
Date: Sat, 30 May 2026 11:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780142013
