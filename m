Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9E11DE4CD
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760337594; cv=none; b=UYsh7Oo6LHMYeQ7K3KOntPgggHmzoNcggorVH7P8HPxaA9iQzy1wiyydzzeBqaFrllPOYyw94HESEF9GYDERrvCPcVjQvd7DWwMbGRas8aFl8hqLRJOjBgmNWEiksQIDhEffhM3Dpyzq8qooL39pysZq34TRq/7I7QXxZJroGsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760337594; c=relaxed/simple;
	bh=X5ujnCt1eKpxk3kP5GpEmEmM9JqUu7lM87Be95GpkrU=;
	h=To:Subject:From:Message-Id:Date; b=HMhg/UOdP0/V3ZBgbUBjKnoxBgHpUd6iK9YZSsotNkhJBFTWN80p/s9fnu/agTDZ9pxuMOcOi16rTLM22B9y/oTG+rP2PC7KzdLobhcHQ2uTH0nHx2f5XSDbZwaKHyFNtyYrz31im0MSourmQ34vK9s3ZrtWchN7Nhs648hAUjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMAvURHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMAvURHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760337593;
	bh=X5ujnCt1eKpxk3kP5GpEmEmM9JqUu7lM87Be95GpkrU=;
	h=To:Subject:From:Date:From;
	b=LMAvURHnvA2fqkVCMmMEH8HEEwOgoP0RsWX6SoqKToe2ZdJEWkwYX/GBZSYGBZNCF
	 MG6r+3qlALlCSQ8NV8d1Eg1+AREDxLo2atIQYDt1sBQt2xemcaFcRicfVRl9qlXqtF
	 pp2sNcSf/cAFwkJVIpSYJvBkmNKcSoxST46Zv3qKNe0O96X64StPe/A3riZiwmKVHi
	 gu3t33nFxrjueAbfn9JmKtjtBB8kta/Dp0S/sbzOSQ4AoQwyJGeruuUCQBXTphVMi/
	 oNEQTv+KXqnqYdryYip/gSyNw3Fq6hwMPg5R2kLr8TnB0zcA8nbns4/hyPEbrcRCio
	 nMs6cLwSYFxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57FCCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033759357.2441.9293927102362362106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d592d2f2159bf0472451d6491655fff93961b19cdeb88d0dd0912e8a7f6badc
Date: Mon, 13 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760337593
