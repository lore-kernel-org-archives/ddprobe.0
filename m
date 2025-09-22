Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863D1A9FB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758542394; cv=none; b=LMi7E054ofGwBTa0VFTq6/IXbKNEHedSUTcoU0hFNbSQmyEczkGwdz0ACvPwcntzr6FDsyCuwZ6IAJK1JtcVyqngN5n00EST/GQhxfv0ZOuV1zGLB9wwOVcZCL7n8DQ1iA3lbE+Uth8f0kEDRxCVgcujyIqaVqCD4nfPkNmTFak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758542394; c=relaxed/simple;
	bh=ybhG6mYMvJGzwfqK/RH1912PHG89xLfswTCKY5MxJwc=;
	h=To:Subject:From:Message-Id:Date; b=b57OBF3nk8RSVfn1cgFkodWg7swIzZzjE7K41azqkHBplMxxagFswFIXeTkzbGpIGBstK0N/kcTGjkVbOtjOt72g3jSjtRxOuMID4z1BuSJSwm6Zw9fyett72cZYxsvB3EqYIUyRp2fB4SsvXpgWEU+OHBQ6FSMbZxgCeLteEtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1KHs3j1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1KHs3j1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0898C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758542393;
	bh=ybhG6mYMvJGzwfqK/RH1912PHG89xLfswTCKY5MxJwc=;
	h=To:Subject:From:Date:From;
	b=D1KHs3j1bkiu+aNXo5hzWIKavpCpBtyL/v4ER3FH5CR0uLSGgpVvxDSgtNsCtUxUe
	 sJ+G7TT30zHDMSzgEPG/rP3+YMxoQNhrW11spBE9+TEBLzieFJTkfn9uL/0s2lhA+g
	 mB53HxLhdiV8wk3E5gWNeenQZGnypYmr3m61p9sUUKZ6lSfZtLEUatES3Yp0PZZ6Dg
	 qGO1mL4PJwTgcDc65dMIut1OSk2hTgK4Ot7lWsb8ZWyOxlseP5pmYIx2H6RF/FpCrN
	 MQzKllddti7vc4bveW9oKZhyWg6fOUyt6/ylq1Pf4EIs18W6307ao8Dq7EKYUt8Oi3
	 0n65TLQYv0oyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E30ACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854239363.31481.4050929174806183532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9352634f33b1b8023aa36140d732187c3ef914f19dd7b607895c31bf9f6a9e9b
Date: Mon, 22 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758542393
