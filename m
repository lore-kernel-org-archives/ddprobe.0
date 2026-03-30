Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FB53AC0EE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774857894; cv=none; b=BIx0OA9U2qtmcUKb7SBnZS4mFnvo7yJYugKO22bUmXSVN+NuyxmsWRX0P78cA21ko2v8YaTvkn+OeBI3bRKyocLaFxxNXoRHbtqVQRI9ZfO7qy2YdDQ6RDmVNojoR4aNBkpuo3MtQqfhO1+q4hEPEd13QsC1Wt/R2uHRXKzw4XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774857894; c=relaxed/simple;
	bh=a1ubwN/SW/60P5KA22tV110gwL7MhUFEzGmtyouml/k=;
	h=To:Subject:From:Message-Id:Date; b=ozglQSplO1pSUj+Ur3DS0597LYkM85ev76BMIO64mjvKvnx5nvOxMp82v46wAj4o+3TcugYs9GBKzN/qx1z70LWhvH3tH3xlkLiRz0CEOHRmDuzaac/aiakhKS9cUunzP55cv8mZEu9vtyBwJD2umT5PMtKl+QVhdx3U3hrHhCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL+hrALn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL+hrALn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774857893;
	bh=a1ubwN/SW/60P5KA22tV110gwL7MhUFEzGmtyouml/k=;
	h=To:Subject:From:Date:From;
	b=XL+hrALnA+rUhlhH9XCaf9Iht2+IArQ1v9zG5m3Kw/PnvXZ1ZLWHqPeUFuBRc57NW
	 1u6WTF/OFpqRFWkTkERhoWdnrqcxvVuvCnb7NpWQpkWuik95/mwnjGT+mW2DCiiBYj
	 MM3fKXu6DQbp8P5dfglo0jUDnUs2YScTapSooO/lv5vG2Yo+g2rpqLyc5CYagGkhgh
	 vE8Uo2gOVYEA9qSErO81TazLA5uU3BleMhqme6dGSCcCYdOp6PHsxKE14JpDUQ1OIF
	 lSck0tsoJVrFJHl3lhAuLZB+9z7hyanSNOblaITRFO9v7kSu1pDATbm8wzgGp3GhhS
	 3putm9htw/TIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDCFF4959
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485789358.1086.16412505569008020221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f766d507460f6aa186d3cfc1004e1717be8f0c5fa22b81bd895cedb60cfa9b
Date: Mon, 30 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774857893
