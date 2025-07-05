Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA5F1DD877
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751728794; cv=none; b=lKGSp29SCQ3VuxKmaqGNHSNctaumGS3EW36/+ToT1+65cCZgUXKdbpkpBZTPNtdmCMmulqEOUbyKU9plO/vWiPwbPjWY3DxkfzN6r8RDGFqbo+ABFu2qA74xOvQcOU6GvgiJ3mLAbhKXZ1VQNPXc87YvoxQYOrzjOaAo1sra2LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751728794; c=relaxed/simple;
	bh=TRC1D45TH4PTKCX6ashlNubko37x5LCUy9TCAKizLaE=;
	h=To:Subject:From:Message-Id:Date; b=D4e/QxnyjLfTR+rLRENHOjwUnDVKFWTFdD0qoGomB9zsd/OXKYkuQqA75VOzgbvJKyXiNnONqwdXCnvK3+mQGbaf0GhdAHB5YV02/uuUO37WFI2VSPtr+WcyqnU8Dr7XFixJop3FwojtdFGwrsg5H6GutTQGl5A15U6E9/KtTao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgRpansO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgRpansO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E64C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751728793;
	bh=TRC1D45TH4PTKCX6ashlNubko37x5LCUy9TCAKizLaE=;
	h=To:Subject:From:Date:From;
	b=YgRpansO8dLuFaYCnszjmE0MspHIzqZdm5S1ZD+CKujSBCdbe6lYhESEkAA0Bp6JQ
	 ZGFL58QscLvCbQWRhoqDLShs6YKBgAburCZ2b6BQXj5T4s7sQhdrW/E9sPSmoSc5do
	 +uDykzQTxQqK+ItbVyRv9Uc8edckn0YAhg/E4Gt62gEGhqwuFUusUcFHR/8C/a86sT
	 7XnvQUT0xemTmLYhJSYom9lPrdYz2Y6dcMBqTJ7ujmdgewaZ/H2hxBCIpp1t8CfvVI
	 +ykbx3m0tOqChACuGMZQp8JWvqcME7QlbB+MGo4qG6eiTMWXM03vR/Ink86mgQcevt
	 XZXXKURK+iCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410EC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172879357.16965.8607080471116986719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf33b6bed72c9ad2f090f6af1bc9f2a84eba0a79fa1a67488723cbf9dabe38f2
Date: Sat, 05 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751728793
