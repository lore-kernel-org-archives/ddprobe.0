Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2141720297B
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754462395; cv=none; b=am8LYLDkkFMjeuP0O6Se3EOxVn4sgMa4YjN6rR7mpw6cexq26Bl6IfSdZ94JLxvVXSR2jo76PkBNb8/jQlcbIVoapaiwET2AgKIy7XIcA3dEtBMFPca8tVhP83VcGWraRZjvOZP6iT03XIte2UC5cXKNvSKH/iDfr2tnq7am5g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754462395; c=relaxed/simple;
	bh=mWXH46bSEsY9dygnABfck1B9jNxk73FjJ6mEWfeoKAs=;
	h=To:Subject:From:Message-Id:Date; b=sFOwXns0SZqNkYBfIgglNudRPMx9lktYlsizRKPpdjMCWwIYVjg3mU81j7qjZKM0YlPniGVA15lpqBlKq4Agon8p2bYps1BNc6HGXlFhW3cwVOnPMpUFb98TEGwRPIYqarfv/OuZVE3BydF2TL2IK/jdWiokv1WsUPphLhBsf48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+njDIhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+njDIhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE28C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754462393;
	bh=mWXH46bSEsY9dygnABfck1B9jNxk73FjJ6mEWfeoKAs=;
	h=To:Subject:From:Date:From;
	b=M+njDIhMIBrIfhRZYSuetaiTOzwH1QKG6vxQd5tcQgkqO262F9jzDVcnmun6nYAhM
	 IBhzuoPHwioZfP2lQEO2+F/c/he2x4G+xry5bgSTmbBVaLmziP+avOYzabErA4+R20
	 U48YOMeMDRhFOmgb9xt4jNNNlPQ56djBhoXpkR1CDRCzFKMKBnn1Wdw/a3sLv6jqRw
	 3APn932xG9RygTZ0MsRbiex0Z8f9lfK8QzwGEvV6MbQYsFxtpGaJK8L/i9odZP5vSV
	 AbCrt9X4Iyz3Bf2hCPPP83eHX6EPbdtqT6UlbD1Rm2TlDNN5oYvW14d7MSSSkrg1vx
	 Cqll/9e9g22YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94237C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446239357.2523.17123545549539088825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0eb7c6e3d0871ba75e11349c255b228753c4c720e3007623161d8d4c471835c
Date: Wed, 06 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754462393
