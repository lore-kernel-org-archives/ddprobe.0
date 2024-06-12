Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6834E169ACF
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718178503; cv=none; b=Qz4f2PyDiLNYujJK2dgduRfveIC3T4cRHJyXqqYuugOn45GeTRKkCJEGR+4MbWG9GxUnGrahf4ItJ5RtPyeC+joa2ejEwDv1MpbNkcDdqww7cO9forgRz8v6dhFk2BVXZZW4rXYPL8VFnpKiZ6Db+byUc9afZmx2CbV16HMufAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718178503; c=relaxed/simple;
	bh=t1FrVwEk1HNmiSe767H9KAGCTLKFpoTYCRq1VdszoPA=;
	h=To:Subject:From:Message-Id:Date; b=btvToSPDzJ6u7rnQyoSOt3soegwV6Pc6jJDxyyasEttg39PrX+QqvcYYE8bmvGL0x0RXgL2lEDN/4ZBnkXch8cdiuHeexXp7JNNsYa7YK0g2awsAtjAxPqNEI2XQeve9Ke7Yv2/hvwmKOUkmecRLKAqzE/AyG/f/CRpLg1tm/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv9QsyWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv9QsyWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F7BC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718178502;
	bh=t1FrVwEk1HNmiSe767H9KAGCTLKFpoTYCRq1VdszoPA=;
	h=To:Subject:From:Date:From;
	b=Dv9QsyWLswFLdOiYYew2v5ntVf9tbiKqQduUVyVkQdq1WKK+zu58Uza5F5bbuqDu8
	 c58jZG8oBmH9icSsuGbkAPUUx4DZadOvWP5kF5C4qZmyddr2/ZEQCIKHx/xYYJFg1x
	 fgC03+rPqFfj0hzUpIbN45tiPdmu5C2MKwfwTMczrljqZtvZhvMgkSFhYaueflFiKk
	 QV21B7SMbhJHUmDKtNFsqfNR8ePPxdsVM/n/8EehoOIdQPYiCdqIwuCv2EnIc2aeXX
	 eDGzVuRkF8u5nTCgw/GCACFsAvPZCY1o45AST0FiG9Oy5lvmIM4v3eAjRSdwhjwEpG
	 zZu+z7tndhlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB050C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817850281.16604.13485693524589998623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219d14c65b8346900765e75f64c1458132ac8cd3c0a1b2803835592fd29fdb8e
Date: Wed, 12 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718178502
