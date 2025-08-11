Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD01EACD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754897394; cv=none; b=kQKgZ+rXeGYGxEh65bn802EfEoMiB0XEER1zVWtM12Nzom2Ozoc13bBYQCK0n/8FQJ1npe+bBcZCtrTJtghmFonpM/kaXAAQpxib2VSNtfVg7yH4WVjW0rQ0kAhyXXeO0U6rnW8cWpgr6W5Fe6dJb8tccXQreYw+i2PrQ9tLDRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754897394; c=relaxed/simple;
	bh=0CmmBmeNNGY5ue4xiBSotE6t/TDyVL8C3mgz+F7Qqw4=;
	h=To:Subject:From:Message-Id:Date; b=FIvUv+zrD1gwxUNdjth57QVWZ9Qn0m22IF6tJWO9+AH8SxB9uIvKtb+4Y3p6cb2XcR1elfAd+vfa154M10xRGzMniZ/prhyCqHZCjrvOCQ4zHVTwumT91ETVtPCB2OWoXjNEZZLhl1IMuXNA649ZlLvOkAuhXoKjq1p33HRvCaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdPN7pVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdPN7pVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3325C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754897393;
	bh=0CmmBmeNNGY5ue4xiBSotE6t/TDyVL8C3mgz+F7Qqw4=;
	h=To:Subject:From:Date:From;
	b=rdPN7pVa+F1wLepUr+jn1dVBVMbuQx+UhbS7tNMqMGzxLk4Yx5Ki17d4T/o44JXXS
	 6shrkx337CkjjGyB3R59XQdpBTTE5TzQpvTdODC+pejAH6gvbvvq4mSe5Wto6srJ4u
	 XNZ+zju69BFwPoUS3ZL1kiaBpfwJ4GZSK/CwQZ0te2JfzfqXKGF20O8F2RrlHEXCzs
	 jpQjrw+IZJP1b9Ae2ONmIY65Mtk9BTnHe61sG2VidCUfwu+A6scmNI5HpU7trvyvFT
	 NAGS9UAzIxYMgiHyMbgcAS8nT3DjflltGBZtbp9Giwev7DRBE1Lb0itbP/eGlsR/O0
	 AVDae8uyTNEdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91088C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489739358.27552.4482837776745704173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1500f79d044eadf42e937206729ba1fa5bf7f09f99f7d26e1b97c67b32d9667d
Date: Mon, 11 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754897393
