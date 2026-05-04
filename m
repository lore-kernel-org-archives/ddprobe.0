Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D5122ACEB
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777912654; cv=none; b=k1kHG30QLy3YyAXaJfj8pA7IuV3yWYkgoWyeqObsMtzE/G2thZp7N2ajC1wbdeRxF+CKmjuvS7ha8iNt3BVuJCq9sLW3IJS+AkfTzbBNECFTxgdcHwrZ3w/kYLvxUY0/rIIBGAMTn4W+UBLmQOw14CreVfkA996PUsl/u+DqnJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777912654; c=relaxed/simple;
	bh=rIAOXN1CbHi+G10UDPa25lqNFI781uivnf1p7kSBsy8=;
	h=To:Subject:From:Message-Id:Date; b=Kn+y7lCoCkRU7/VzKNnxyhiMKrF4AiRQvyYqab9HDnzsZwTr15dh7x5PfOwLj4bvUFC/xeAS3iRgA0xdTSM1WtXH5/mMXFBhnXlEY79wGpZAWnaAUFtSxKPistM/0KjDM+d9WJelFEq56weD+yYqb979f/7zdUvlkjzAs2FgMb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB23MEkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB23MEkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB25C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777912653;
	bh=rIAOXN1CbHi+G10UDPa25lqNFI781uivnf1p7kSBsy8=;
	h=To:Subject:From:Date:From;
	b=UB23MEkqz1YYWfIAsbXnRx7ME7LCEYTjr/DDmBFCJVSCrc4k2GozJQrOTvGWonatV
	 1ZuKZIIsl9GNtkcdt6Bqtu6H1XzXE+S+OhkuWjRJYLvZ7867NM9QOmF2vzux9/xB+Q
	 98x8A8yXV0nlmAXHBLCTjKiBJivxVRrxmHWKQF5uaSbW5M7Qi68WI8shDNAxpuah/0
	 dSZtjUgl7DSD04SYFJmUUB64f0N85LwdJoR1wPf8Wh15UDPif4+rszTPFXZtJSlchB
	 Cr4fbTN049IXZT7OHLo6xjUPC6ezveSICqKtg/TaDfC1OWnVDNv3Gmxl9efUEeoklj
	 LAoAkUSakZA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A4CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791265368.14212.13256407029057658603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcef22a7b793b8a78203ac3a853c18f448b60457120c5115833d4684ec8804ba
Date: Mon, 04 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777912653
