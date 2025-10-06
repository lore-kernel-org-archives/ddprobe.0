Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0F2D877D
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759766394; cv=none; b=SjGQ6RO28fxzIUrwxh6Sw4Kv/Xjcf8EWNzCLF8TfzBpki/Ik3dWK2xDFBrFRQCE20m+gsOdlVi3eDnkytN3+5ekYYFXTdAydNBhCGGBZSjpZKxnCdiCd6EXr3v5ASNdQ6ZgQPUIikH/P/zTRkFd5XxWfDkPuV4+7GIjOdcATOSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759766394; c=relaxed/simple;
	bh=4qNcikUjkPtoeb/vPlG9OqIdQ7Z7SbSimpIvwnjsMYw=;
	h=To:Subject:From:Message-Id:Date; b=KfawWchg7gwTZPsysftrDf9DrrcqPK2epIOmnmq1mqfb9c4019Bse5UbGl4UzV+HuzW9XkZon33/IdipFhrPwfES5+ZMigsZwmLEGQCDTfm4N6QASXWkXEobPyQC6E69PvPzBpPdaHTNh6XHxFGU/20mnV2ZcWMNGAxe9lQGDMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPeEm6Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPeEm6Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759766393;
	bh=4qNcikUjkPtoeb/vPlG9OqIdQ7Z7SbSimpIvwnjsMYw=;
	h=To:Subject:From:Date:From;
	b=mPeEm6Vv75CJMlGccuIbTZlj3AguHhsbu+NNia5SN/RSriSukgjYsSCjsmmDn6dZf
	 ZN3o6G1eR4w21hCKJrnshWGRd9f5ngBMk46uWdXXM/qR6WKTxuSlm3PjH+FqAYumyV
	 2mL7fGydvkbr4rSv2nCzC37uPw3sOLt2atAKhtfUMMobE7Xxi8EE8S4qg50mUZPkcS
	 aORHgtbgvwBb3qiJ6YvEnCZfUBesqMjZd2fy5e9Yn4ReO9l8oeVc2NbalL2eV0hWXs
	 sU71dCOEe2Xi56oaSTCObaRXajzm2NkWHjdjJQ9P6GI9mo63x0YwnDrKKHgbIH1XYU
	 /ib0Gb/rqEb7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1CCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976639357.31021.18139774972402320111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876f857ae3e689da21acbbaee7c3b7d2155a0d98b79f39607c51dd9909198e49
Date: Mon, 06 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759766393
