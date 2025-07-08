Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3231F3FED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752011394; cv=none; b=q3cQgrncJgESmjjSWlb/RfVg/qpO9EM+mbbYew84r3XE2TpvzGTBm8SbDSt7HQukkCYK19awlehdDF2oXvwpyr54zkfI+y0QYSmfqowoJyXm9xkdWB7BVKtD4pa9w8ogHXmKMWv4zF5foGhY+H+pclORo3gNZStTvn05OdaCzt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752011394; c=relaxed/simple;
	bh=bv8dhaje8G9n+ZNR+yCtRQ2ky8SaDdzHFP7V0vDV2+A=;
	h=To:Subject:From:Message-Id:Date; b=RcW3jkaSuYZzYzXCg4pPkun19bzYJ+2kKO93A82nP8go3kURI7lPGkWJmskInnjtC+3Yq91JeNJ//PegUnHAnjhtM4XmTELmTtjSbKtSQw3TRD2APkxP2n9FlfZPHUAkGox0fBtBFsabf2aCPboHvv6YTko60hYzl5Dz0T+QsNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eanq4V8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eanq4V8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752011393;
	bh=bv8dhaje8G9n+ZNR+yCtRQ2ky8SaDdzHFP7V0vDV2+A=;
	h=To:Subject:From:Date:From;
	b=Eanq4V8sXAlK3A/ObPQw5OWCCyjDBcCINNUkm3Af8XJ80gTWEFCDgAOQviYSWy6sv
	 rUBb1erWmDEc25zLtfLlMojSyies7kVNYRNZWS9HP/Q4qYU+Z6AGUepNAZnckmufSV
	 IAvyXst41HCwoykOugq+/K6DjWsdZ1fWbNdtTlftJCy6z9mLfx1shCskxJMy6qLByQ
	 LM1pbAOFv7/sPZCSHA/pgFr4JHJrAALL8vfgkuJgYPa2ecJJDZdx06PcIkBbluR+Af
	 1/zWrTcArTzP1Mk+iIph8MU2FjGyld2cfxJXreUoLzIfGsIsHDDh9L2fNxYYUjZQD0
	 jJ35oV6TXjOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D9C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201139357.12490.2162102562521369274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0494f20a7914e9d0e41801aa02bb972ed35c4c389729b9d1082a787217109094
Date: Tue, 08 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752011393
