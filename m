Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E2280043
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715289143; cv=none; b=LiJXlvrxSwQMw7DZYwzmPM+GFj1Dpt/EX2nU2JthMSnsxWtn/0Mj5JZFIavFXBYCfmoOeBIEw21eiORaa7Vac8JK/6ogW0AqCbduwQCjCv9vhmXpDWMd6XABEfyDmbgJ09d8OGxUxcSDIdgmf40cejkP/V0R2l4a+wFPh9P8RBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715289143; c=relaxed/simple;
	bh=NsoNCs0nCuLRBwAsoq4MqUuPX2tu81EqOMlXw76cVy8=;
	h=To:Subject:From:Message-Id:Date; b=YC1kGMLkHHgj9faKfmpE547uorwwWpsPKKMQO/wOTBnjIx5JZoUKRz1gMyL9saz3dVbXow0sGp4XAzik3X33pYsZ79cPvCQ64SE3hNAF3+79PqpQ78PGC838I/iVxuYrLYTaCU4towRYrtrSQciW25C7HD/NbK7LYQxofb5XTQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM0skOSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM0skOSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC84C3277B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715289142;
	bh=NsoNCs0nCuLRBwAsoq4MqUuPX2tu81EqOMlXw76cVy8=;
	h=To:Subject:From:Date:From;
	b=dM0skOSgV4C7OtAeLmu2SEkNf/Ni1qcUgr6Xckzal0EkISJPHd/yBjXKqfCvUuatL
	 IN+k/PaytQmNu9c7J09ET4UhIEW8CX9sLxDUsD78pz4XIWtTiA6ppCcWXABkVKhUAV
	 Kxd71TmNjgXNpdmVsRYLkWHwJJJoY/E4ElucswSiTL38khthALBKtfa7XbTYnGkgTr
	 oFZM6XX1ULmhWbwCmK/mjss0/pKwO8BDA3EmsoUv5G5/fxXhDtXu7yA8hWGE2qJ1NA
	 GN5ZdVwhxvkircYmi7MLNnwXUDbEA+1XgxbeMLGWoh6KRO2+nUSM/8sk6kmraXiggS
	 DlyC2/x2uPw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AC8C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528914278.2083.10722361332883547529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91a2a0f793d930ec680937488c698f0c7fecdf1bfa23ace3ea883116e3ac7cd
Date: Thu, 09 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715289142
