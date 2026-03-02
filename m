Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D6A3E0C4C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772457294; cv=none; b=SBrHiTmDLZaUvmitvWv6CtC61iQS5hSTkjpRPzfsZS3zEAJ1vtZNOKoZe/KO3NwaiMmCZy5fm1eu7EvJ5fqVA3FELvzrDI+PqYToSQX1xbZG1AoAI1m19a6ztSpbC/D0EA0nXECwK97IdenY4PqA8IyV5QaSxrbtE3lmLkW/7p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772457294; c=relaxed/simple;
	bh=Nxuk0ZQggbjl+eu8MVK2t5khRt/9SmqD21JDE7vsDUw=;
	h=To:Subject:From:Message-Id:Date; b=DNH80tLN37oNnUeFCBmy9uCLU6kKcP+vL/cq5xHCzR1YXNZSTaoHaWaHS+ghmgTdbJuVv7ULDhgOntUtv7/hZb1p/pvDWb/I2r/lk49/7AbRdDGYvG4ekPtMX27HsDfa1LjbwTnNOw4pE+wFlb8uoUiUvFoMF6mWcIK5xqMJi1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvajV6Ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvajV6Ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49B6C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772457293;
	bh=Nxuk0ZQggbjl+eu8MVK2t5khRt/9SmqD21JDE7vsDUw=;
	h=To:Subject:From:Date:From;
	b=VvajV6Evzx5yRWLXV/oSx4qi/+9KlD0cb90GlZBWOif95duhWcMi8ogLrWqdX/3GH
	 NNmg3FWwHZBqcDnvgc9pDCYRG1EkMNWf6lfGXDdwocgTjeNcYdfGm6zea4fRIAdAQW
	 Br0ketqREoqHATsni4yIYBzVdSyQ6BOnB9g9M/OCX/jMigs6+/gBvsWp+vkR5UzL8V
	 i9fLPKqLCipN+YVZ18m+VPdsLRGx3PT7hyx6qxxIufyb2eSNMI0v+v8P9h0nWxwb52
	 qRwnpFt9Bvs+ACIcN8S9C/si9zC2djL8tnvrupvzeflsbpda8XEgHpJhu+NFUK5buI
	 LFCaWqEYdjklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995CEE9B37D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245729361.22568.14804732465879633771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b84b84724cadf8d66b10a3c455fc43c1ddc8041bcf3c4d0fc29cb086c9834d3
Date: Mon, 02 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772457293
