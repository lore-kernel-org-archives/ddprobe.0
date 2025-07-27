Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E45D1EE03B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753660194; cv=none; b=JAA0WN35h5QAYAkwLJDc6UTex8NHmjQd/QJofZv+2nniiU3AoE/2NrJwOfKdRR+CxQ8V8EJQUy47ePNMsOlY+1c3cC0klCL0uIjXkaOFp2gMtE94ee042XRWAxGRww0MCKLPoSIpLLE31SD7Nu3+Mdbp1UvL9lYPGkza8RzdhcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753660194; c=relaxed/simple;
	bh=eDYVsZaOWyo9EIFeYwwsRB5xKf3MZQwUJ+CDxKe/ObI=;
	h=To:Subject:From:Message-Id:Date; b=in1iUscSCGWNG6iO0RWxEIIfLO769Di/hpmOfCVLi404rPpHGXuqxFhr6k8ra/XViHmCshgl5g319NAu4vGysQvGePKOrzQtIkIXnykSIDWxQSrcSilbmDiNDfBBcvj/6BZZpGOX1cH9JwWq5MOwDR7OW51I6h3ZDoGCdVnY+9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyDQLlW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyDQLlW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753660193;
	bh=eDYVsZaOWyo9EIFeYwwsRB5xKf3MZQwUJ+CDxKe/ObI=;
	h=To:Subject:From:Date:From;
	b=nyDQLlW1J07TPMQOIdr5Go0LbfIEqyGRTTWYw6T6hGTIoo5vnulDsN/ULQQJ/xaTc
	 B1QlffKR6weKsvCJAuZoQmeY7RF6tN6MwizYgq2bKcV88IOS0fdJvZ3/gs8f4GKxqu
	 iQZy/ayXLAKuDx68cSHrjsNHxmffuRG+BZaSv5/9fqBCPAhSTR7rbbLjETayZJQ/OJ
	 E0NHnlFeVDEED0zzNKP/7mEiwjlhRQIAGtAODtZpoFSa3Kx4C/XvTiZVa7jwX/K/Us
	 uZq1mb7gCZR5NgeFMD/xU+7So1P4nLrJ9WeGXo52RMlkLfIgMXxr64P8u5BsT4Ll+x
	 8bm2dR/PTn+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93838C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366019357.21923.10750338381866041649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db4a1ff5fa74f2ae34e877b53a8b19ca8f35547ce7879933bf7faf62fa98901
Date: Sun, 27 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753660193
