Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E8428833
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772817294; cv=none; b=SOXp0+UjMgb1VTR8X+c44icimzkApqdGWfRpue4iOOcT2mqZHVpPEhITizdyklG20zHUmc3gk/iXDr3QewZr78w8FwuZ2jCetMIX1SF0vocr0Bqu07NdOsAvk5AmyYPXQRg+1JXf3xEUDZDuhWqIKSQOmBPLS71xo1Yg9NzhAGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772817294; c=relaxed/simple;
	bh=iresMZKpbh2SXWPHgwVjb+vMwfvXKfwhEalmTOqxOJ0=;
	h=To:Subject:From:Message-Id:Date; b=HpUD4gkm081AcXEFHA4HFwqFOenT995FUEejDdCsD+hc9O4aBI1DXV5nyrGKsfDMyi4QRFajFuPAsdiYFOH/xhXa7lrkD9lnUmOzxSthie0/biR5fUYUehl5eg4Teur6COz2V0gRARppr75XawOobqa/IKvhOqx9odQUGA4NTsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of3pHSDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of3pHSDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F490C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772817293;
	bh=iresMZKpbh2SXWPHgwVjb+vMwfvXKfwhEalmTOqxOJ0=;
	h=To:Subject:From:Date:From;
	b=Of3pHSDv/70VtR9prnHZat8QCEdIhHPO+ykxzLXLVSE1AAclmGVzPCrxp9pQ2tRTm
	 TXYHFyTHbCEDm7u6ieOYxyTzHzLx8NgeyGxwC9ZjiWVU3/VaejztDZBvOiCY8fw4tE
	 xFlZQFRlqCUeouDs+kb/5l/9m7hRGPbtLLGIHRrQhw0tIo7ZnAWjfpU2Lp2XMfbbzy
	 5Yul3/NzqFLUIV3uaUZqw3de9c92ooxnmzwRDMKBQAufNlJXZuS6c3ij7ea1ez7S67
	 ZN1xaj42v1NyJVm58AGpTRfCwwrX2CbPJ8/mWWQ/oGOWWSwRfgb6yiZd/97VK2GJIi
	 jNfqninM1OGhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE41FCB63B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281729357.14265.17458329864503844567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af8ffea9ac006db2c05d5f730068894721cf729e62f34366c89f79e33aae973
Date: Fri, 06 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772817293
