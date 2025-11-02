Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2161A1DF75B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762124394; cv=none; b=bGpbPPuuwlCZrUBdxhBbmih3ZmHMdQ2UM0/35i89e+ykMJalRx6xAEKa8ZKBGCtVIONxQaJO3jARIgZ/AlcUMdFp+isRcgbs0pvKmr1fu8L7Jmuzq4llRoQzrnAtJsUEZKc9mTt1nFQ4W+JwnzV61NL3OtFm+bMxLdRAViR0Vq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762124394; c=relaxed/simple;
	bh=hCyWtXb7Y+qt0prHIhi3T/Qzb2VuTfAY0dSgCc+zpCY=;
	h=To:Subject:From:Message-Id:Date; b=Dnco0Sc2E8yV3mRpMeoPPtBLxgQEOP5HN0QvIOZk1mMS+zJf3wZPDyAYm7S/2cRJMFn/GWetXmU61JZpspyl96J0UuZ0Bj38tTBjWvpKfchinTzomcPi2a9DerEj0onN7N08q/CCDKuHoc8M8y8ZscUdcK4mtkxiOQFWNwCJnYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqfXbXvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqfXbXvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C9C4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762124393;
	bh=hCyWtXb7Y+qt0prHIhi3T/Qzb2VuTfAY0dSgCc+zpCY=;
	h=To:Subject:From:Date:From;
	b=LqfXbXvJVEsMSzT0oE6aEOe3emvZX/KA0Le4yBIl31b8oIZLl5MZoMWuheOFPaJh0
	 fqkF55kkhS7j7h6E+V9OpsdRb5NXy3EyoqiDRy1Ja0icZudHiKakw/YHKtVz8WgmPC
	 Mx83SrpSckdhVqPrq/ic1OUFwwLPqf9FqPobVC9IUqR63Zuj7MbJC5Y/BdODQ6HpG1
	 1RxPEqBtSNF9weOg0YqYK5rmCblMhIKYMnYjL+ZHgHuNUe0BoXRWscMqgbVof0Qo/7
	 5CBmZjjt0x/KFd95PYJmQ3Jcrfe7LJ+le7jfMUZBgvYovJe3LQDyCeqKNvJsnBIA1P
	 6nZWiDiNAiPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B50CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212439358.3295.8933655863818724351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9481370d9f3321c945c2f190eaa60779023673f7ce9a45dddfdbc296f430d521
Date: Sun, 02 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762124393
