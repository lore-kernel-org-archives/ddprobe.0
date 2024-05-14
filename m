Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521DF181CE9
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715725343; cv=none; b=GYUPZ99ev63wOCsWecMquFr5cZpSsjYnZV/PwLVCv2htbQEDf8kab757CGgOgJXWBksM2/u8Pl2FKNMYpBDbq7g8LbJN/DPftWKxZ1t8itdDyUxLhSySFX0FVfqu2ehwxGq+oUVCBTFuPr6AAA6hBh2qGYpKFVb/TZ6L3iq1GVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715725343; c=relaxed/simple;
	bh=Eht5g43v80r1ZWmpIpSKhemK41TBDf+kpNjml7LopVk=;
	h=To:Subject:From:Message-Id:Date; b=ktqrm/NUSaCl/UyodC36zJvh8uu7Y0IP1JYH1pyclbR0MF5xmjmDLtf6u1ZIACax5ZiUWJUv/pyjlZwfAwkKG6DVqZ/KqtlI8Pc968t7WS14K1oP16ZQLMebTkj/yUx+VbNdLFBz1HHKfV9HAatbUxC2IOvMEAh4uLhX8oxY6Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJgV595b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJgV595b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7213C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715725342;
	bh=Eht5g43v80r1ZWmpIpSKhemK41TBDf+kpNjml7LopVk=;
	h=To:Subject:From:Date:From;
	b=NJgV595bzG55XJjCNlO0G9BSB12l84rK0JS08Z9H0EJzRCCkUPt8fZAA+XmqEZaTd
	 UbDJGOTt9FmTlmQiX6FCbN6WVdS+Qp1CHOL8UeCXyTpiPnfgMFGd7Pia1h4H1Uw3Jl
	 9KK2dMdjLASr8lLxlK8zvE3K0hDhhSSfnQ79cPnTgFJiG7aiUHCel6v2iaBXifQ6OQ
	 tCdFFbb0hYa36BFbVHACjZwDRpqTL/UKXesoQmPAo/pmvi3XuO9TKH+e0nSuiRfSeb
	 JA2KNlCiU/Rm4uYU9QB9I14G+IXxGjP2viPVFajtO9SpcJGSDLHqp8bBOflX6bCyUL
	 GbE/OrG5S/E0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD68DC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572534276.4207.8482292830259332679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31664458c22e0b1873a309dc51e82e749f6c3d8721cf3071adcf7b9a85b918c1
Date: Tue, 14 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715725342
