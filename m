Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330593F1AD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780346674; cv=none; b=fb6GSD/LtZ7DArLzsY3n58ReA72ltrmnUp7I1HbPDXYM3xEYSQIKMgi3+cy7C08SssG7c5DJ1ke30BuX3VsHaDP/KIv7YDieJXQm+FGKGvoYBgpzgjkcTmpoB0yidlGWmyzlUgWYdkFjQhgJzq/zplWspEfjrfqvVAlNNwjdGsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780346674; c=relaxed/simple;
	bh=kntD7YsfAuGddtnl9Xhq3GZmSYCFtcCXD8tfdpJt68k=;
	h=To:Subject:From:Message-Id:Date; b=aOI9b98zdy9IWS9P9Y1q9LSNscaXHH52Bxbrdso9WHiJ/oQqL8DWCfvAsG5KaEMKDDIgH1vc/JW3QncgRGLiMi0NTvSf2iRH+YVnmY+fUIb4877/h4Q86lmDJTb0FtTrdN24DgkHcvskRoX+6sDzxgTG4xTU6W54kq1jkdWNcM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBC6x00m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBC6x00m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41D3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780346673;
	bh=kntD7YsfAuGddtnl9Xhq3GZmSYCFtcCXD8tfdpJt68k=;
	h=To:Subject:From:Date:From;
	b=kBC6x00mOa7+2XawfXKGxSJmiM8c506593kblRk556YQnoAq4BQ/oRjR3AOp73ju/
	 LmNAa594u64VbzZwuErK7cWq0kAKqV2IN3e1oGIJFA7bWMQQmXWfCkngHBsFbAgUCJ
	 Z+pYPzvrg9usoBlIS2AsVwjzRPfeduK5qTltM9AEYmq/K1Ksu1pyGMqip7G7NiZmV4
	 jt5LoXQjz7zQfWAPTOrpKsOM6vZFYDXDr7+9COVSvED7lp0yvnq2hboS0YsVWMtslB
	 CGhEGDBEn6Wm2NTF23tvNqdIxbVvG3CMKnySP+3BNz/8+ST6X84I2r3tKvcw4mMoLm
	 pHZJX5Y1l6c9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB7CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034667369.32700.5389454833750111189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816a1c1cf19ef7e17328511d575c9d1aca8ac54bf37e8e4225e8c334f1d6a54b
Date: Mon, 01 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780346673
