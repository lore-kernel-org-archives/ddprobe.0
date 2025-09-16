Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51C32D73A6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035393; cv=none; b=PSKpJLyy/C8Nfi3GD4GI/yO6BAfD8iTXxEnuCNQo1rZ3L5D7NjawDCYF2khgOwsouLzrU2UykGe83nzwcix6ywn77j0rWCHvXu6DJleKzxH6JGiK8i0ucnQOztYR++TGQPsMUBIh3PESix7Ro0dU32A5GL6boKE7Tl/G8MRLV5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035393; c=relaxed/simple;
	bh=MqffwhFteg9szIhsNRfurT5/b0M9i50gC3o5HDzbRqI=;
	h=To:Subject:From:Message-Id:Date; b=sUqrx89PmLBLHf8FyCvuFUgSWjXfB0DBnuwSl/bB+Q6u6n5pggMO209ogasNi2/vWoFLcSt2Rhmq7KC1Sly9zxNMsN1Q9wv/cjH5SoEFKfoSVch0Rjs7F5oELS+11mPdfYxzoAlVBpEr3Nm686FgXsAGYEKr2RwyOpvFJ5MaPAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7lGvkcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7lGvkcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758035393;
	bh=MqffwhFteg9szIhsNRfurT5/b0M9i50gC3o5HDzbRqI=;
	h=To:Subject:From:Date:From;
	b=S7lGvkcz6Zd4CWzsKPtiaBYgNPRuRN/RzXfvr4dWwFAfkiJwNCv48gmNK3HiCS5R9
	 mJZK+YvelbYEkLaO48Yq0BaCOHCqgrJ3vzt+RnmxVczUDnk/fMYdFPe8vXbK+1kkIT
	 i7bAiHad61B+bEoofxjNm1HfCiTzgzOzs/UK7svfOBgzqGMemWgJ1d7cdJ6CSgaFNG
	 DkCBOqSdpEPEoO6HJilbGM3bVfAUc8fiJhj3yGrvmq9AkBmUtuuii8B25qY88T/RwD
	 lPVHH5qnimWHeQfIybnGMwuAdeUzGvoe3EaTckBieJXdSKsYfb4bRTfVOk7eu4Dn7a
	 IgMl1MYMbji2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F567CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803539357.29733.1339865469818157116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def9bd7583e7daf2022da578928d1cf8a36a6122e344ca85a20f5738a897f8a0
Date: Tue, 16 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758035393
