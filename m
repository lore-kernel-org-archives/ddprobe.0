Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F31C320C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724651154; cv=none; b=DIlbQYRTIsk2Xn6+Ywrp9qA+y8DZCdHNMsyY3ClSaVmbYiZ1OkJ4Bn6x9XqGtZpz/QCyFL3n+u2dQhazaCaYwssVmQbOBPz3+I6ZNNJmSlOn17n/nK79EMjO4LDjVi2R5aLJmzdejfBLEEDZYEnAIjqDWykE6k+M3zmV0+Si8P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724651154; c=relaxed/simple;
	bh=V76V/50OT/G8H69uASs57/4GHvfI4G4JbWsEJH2OtUA=;
	h=To:Subject:From:Message-Id:Date; b=nRNK370wvburXmbdpv19z0udZ3yjv8BugJ5bPHEDfZ3EoGTiQDMjIfQEeNzXnlZyy4a2Ht5n+ifcnuZRgvn0PpOfZAN2386ajkeRsEamLWWMA4QxA25H32XNO+dkF3rmudYg6VuA00fSAb9c/Y4TrNIhMv4+THz0rhrx6Zmfr+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFcopipm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFcopipm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01C7C4AF0F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724651153;
	bh=V76V/50OT/G8H69uASs57/4GHvfI4G4JbWsEJH2OtUA=;
	h=To:Subject:From:Date:From;
	b=SFcopipmXJyHAbQHf27+yyJrMWLQ6kSbCj8ymcEUx5M63H4LnVC/0Bp26EBOUiWrW
	 YpT9YxBlLFB6/uiLsf/8U0mmvAin8dIw60CHEv1kY1rX56hzqxGtRT3U5BfUgFKNl1
	 YYB33FC9aF38++Eo40WrjfsC3HPh12K75lQidmzWNiNw+rLyfeHP6npY1in10+U/FE
	 bPYvJr3FcCc4+qzIDytzW86+6g5fAlf4vGiVAgHpWlVjFisvRHP7z5TxCPst+VmXYW
	 nrH0mJr9xb3eB2RXwFgZdpmsKtGZuTIm90bQuXXHLoay+31JadEWz51RT9zIf+weQM
	 uJRu1/LAIjPkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6A1C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465115366.13998.6250572218594399002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756db79d61ae094324417fa660dfadf79f240ec40eb934921dc76ede363ea3cb
Date: Mon, 26 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724651153
