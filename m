Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D49F14EC73
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758669594; cv=none; b=bw9XH6kHC/6PIi1VrtpX8/3Qu1mjKEMpISbpsg5rExruPUovOTPJeHQAEv3LFcnUMQFM+JIikD3oOAZdL4iIxn6tb4wmrSnMKvXovKlehsdFfwYqvTEWniykcwniRGPLYIwWgvxpbGb7y7gcLS+lUXs7pemobS6WaHmSCcNsKY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758669594; c=relaxed/simple;
	bh=8PzPYaHlsUEemseL+upWL5fAK0kEqwlr3CFPLB6RJgI=;
	h=To:Subject:From:Message-Id:Date; b=kSxy7gg3E0RA8pHCPPhzK4Zs301rcnJvfCM+z+0/CtPO44yNKP4mrGdQrm0cnFG2pkxTet++nov/bxr97geIutrr+i4uOn5JXZpiZDUmSdhimevKHNZ6pbA4enSP6lgZH15udvKxoU5x0w6+xRz24d/RDpSI7lwr3wksNgGPOgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IViRg31q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IViRg31q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A12C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758669593;
	bh=8PzPYaHlsUEemseL+upWL5fAK0kEqwlr3CFPLB6RJgI=;
	h=To:Subject:From:Date:From;
	b=IViRg31qxMmmpVwke84DAWlJuR8ukswL6QDcNvBukVQcdGAvO51HH/hBvjzXL5TP3
	 V49rFliIE0Crt3L+P1NW/xd4ecJ5rnlqAZCj+9GNfSEWWDB+HfOPUZ5l3XzBMDlPK1
	 nDYGZC9obVbrKDH8kDdGQ1ppNmxclRauqWTzkuxTisiH7E9brbKnOFmpW5McrYunl4
	 khp2RFbs2mHZsQsDqoTTaSoZpbkl0HyS45WPVa8QJA/ioS2reZGnpk8S+Ym4A8hunm
	 KHuTNRNicz62CxYzoSEgJ90SLkqthC9mWfwyNVj94I7oUrsNwzvn1dRRdhz2ZG2Xhj
	 fwrPS8m5QqIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90717CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866959358.17634.16219459606864488430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c6910bd7e55b47a2620023217f9d10c75bf7247e6be369d21274eccf0b3031
Date: Tue, 23 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758669593
