Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32985278E7E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756308594; cv=none; b=FpndejvwgS+zcOQ6TujRnaBsQItM7Qfk2kKv3KpHO3PG7bRuurRDLyC3PXqV15dLDOGecXufWW8/biTn0IMYVY1a9ipvWbM+cbuzqSnYsIpb8nLSR3mhZnmgfCbbEbajknaUXkdSGCMrgvCQ0QCtxG1Au0iyJAEzd5Ke1LvxRrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756308594; c=relaxed/simple;
	bh=f5In94lZdzXV5CPn/zyB+bXUQzFYWD5KXkcWdh6tIxQ=;
	h=To:Subject:From:Message-Id:Date; b=sTEpRBCNCFVjoDp4vCYIFYDgoBaYR8sfgC/dkgvofXwuJgvq6JrHMoNb5RnEkpdTswGgwfqHPvY7E+eS4zrYDjcFd9SchfLa4+nJ3iVWyFR3wGOjwgksqxAmbkcyJeSLgHKH5vC+I2muqcgW7B+Z6ZQTpyxLBAmWcQKsNgWCu8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv2H8ij6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv2H8ij6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756308593;
	bh=f5In94lZdzXV5CPn/zyB+bXUQzFYWD5KXkcWdh6tIxQ=;
	h=To:Subject:From:Date:From;
	b=Nv2H8ij6TmtFPVllkNYMbo+Wa5o9v5OLUM9mrxL/6izKBsaZg1N3kDQuOAHgtkpZd
	 GdhYfjZBf5nGlhMR1Cq90dE2VG7WaSAr1IxI6sPlNTIUYM81wYx7PAgEA5RvG3ZmxL
	 6XtjCr4RHApl5CIpqzHXZgzOkSRb8IKQ2sTmGcLVRnGqWG9LN3hSFT+d0BJ2BkH21m
	 aKywgHe779waco/r8RTTGK6kdwxNcF2gyDR3rGIP3iWkxTEohHD3OketxZjM89OKEO
	 1ibTlySPc26uyZrMC7PpuF09+DofJLZVGOPXVKNVoVocv7BI6MV2VQgnWldvcaq7MK
	 Gsc8Kea8F0uYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017BCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630859358.29283.9019154160678446667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f74a21756e5b42ecba4540a5b54f276afa7a9a5c6347eea8505480a9a42dc3
Date: Wed, 27 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756308593
