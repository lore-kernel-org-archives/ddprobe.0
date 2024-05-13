Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5EB1CAAF
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715625743; cv=none; b=M5WAvDe6wQBJuqTftBM+vc93CHQsix6RRVjQCfrPlFEaxATSY/Kg86vG+U8NM53P8x7hC6NhLGyP2sNmMCUmKkoeQVxeS+PS2ZMF4XeQY28CvP0n8pCIK+bveV57Gpwu/kaH7o0sY2BSAwAlPic+KbkCSl716vtLIw3ChVGgVBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715625743; c=relaxed/simple;
	bh=DLxFJXyN3F3WXW3HaW7hOfPHrNFTq0a4dCi2oSxboMA=;
	h=To:Subject:From:Message-Id:Date; b=rb9ivjNJt2dh13fkvfhf0Aog1xSViW3Nv26wDKP6MhLblrsibozLeqwxAqnbsYz9mX3eL2lH6pny+yvctULEYDCjMtGfSUn8KYwbgqHd+1Ch02OA7F//18A5qAg6Ap3G9rPSrRmhlokGvleZsAwsiwYzFX/Gh9wjf7AYQtNuc/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/CfAHgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/CfAHgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB0EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715625742;
	bh=DLxFJXyN3F3WXW3HaW7hOfPHrNFTq0a4dCi2oSxboMA=;
	h=To:Subject:From:Date:From;
	b=X/CfAHgKFitFfJ9eL7PrWiqsw1IucXcdBQUZLAqmIEKtPRP2pRUCaEKJ/uQGwsgQh
	 fXTDRRf5wqaXDaR61vdT6R2EhaROGqs9kIqaRqSWqeDJUtf9qSH2cO7G5Hs+fg9X9c
	 j0zdiqrthvXLL3GOzsR7OKdIdwx5/JLk0uQjrOA27JcAeSNyE3HR5VqIBb5m3O0zbM
	 gYhrmNpEqFnyUuAdEdX+0MIEWXx/MrNuLj8fAzifvifNBlVcxsMCD9T/qVe4fWUexv
	 8zU9cFObTcnSNSC059V3PsCUo1nnZeyY4+K5BGDrAf7lpuV9LPim9f6PWzVq5ls5Q0
	 LPf9ZETE6vYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF42BC25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562574277.5079.310285807683083792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170586753647bba36c4cf2953f94dfe362cece0406914f6c7d70ed6c7744aec3
Date: Mon, 13 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715625742
