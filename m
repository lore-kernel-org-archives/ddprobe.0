Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B6B15B102
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746683994; cv=none; b=T6J3tVC8aakvbhFSfxg9UmVMHyq8SluPViJStE5MxJfp03g1tmzovZf8qvFCwg3dc7rLoPjLrI42gqlIawS4y+Imh5NYMIlYGGMDvdi8DPJ+z5vg+d1MscKR+/f3YEUC8Xhq1hYVnlANm4dRYXPCBL/IvNl0wWQrIqHBaY+6d/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746683994; c=relaxed/simple;
	bh=sri3RtsQzHvR3fEnu8pED5LqbjIkRaSLRMtGfFuRClA=;
	h=To:Subject:From:Message-Id:Date; b=CL3UuXzTxnI6dLem8EDsO65XTcJpTExo8xX3s6rSIrNNUh5/9bzCzvNVJau+oG9LoErSr8P8wHAni0heMl8ztnLeA/n8GyVO+VRqGjIQp/igtwLsdRpLz+UIr/tFsKNNwpnIaFOK8DoXdkl6HbSxYCUyHh1XkMzkVVEk/j7kh1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUPdNDq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUPdNDq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746683993;
	bh=sri3RtsQzHvR3fEnu8pED5LqbjIkRaSLRMtGfFuRClA=;
	h=To:Subject:From:Date:From;
	b=IUPdNDq3rXIvz13l5ZC+bZuqfUnyMmJOhKVQZ6N1MYrYdfoyGZ5+4snFn+lf8MKkA
	 qOQb/Bhoye5pTCT/+HaHWddvoTdUgva3PX9BBD3PqxcPiodtJASqdjRqlZGS098IBS
	 ncTgI/094pab66T9WnBtmTtgloC8BZu8mlrRxm4uSvNuChnrc0npVzFXNYyhdZ9B+4
	 HzmaHmFrpqXvq0xRFoaO3EOUidyJFr8M3ag/3WgaSTb5/re+p3nShMrK52QOzdZvqd
	 dAOChCmem8kDzsY7alYZEq4R8yPReSGWl1sjWQMecC4Ckhkz/ONmdYyWOtA8RmaQx6
	 Ir0irbtbar//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13EC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668399357.19323.10643746966953095975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4709c535bf25e0ebfa6003753391c7683c9d85d1e8c6d16693f57a3e80a7b256
Date: Thu, 08 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746683993
