Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B12D8DDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783921714; cv=none; b=PvAiLVPVh/3V/kIaWdEJSBi+ehmLGqS4q8qIvWMOje2PCxq5fskNrsmXEZtyacbsmHSPzRJWVElKR9wOpzWH3lIAXfCIEuyVf7sX5T7SNdBaBRLRdfHTWLxe0I5OOqLXR2WhK1cqDdmd+2bjZidvC1647583Ap+hsXAgggryjbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783921714; c=relaxed/simple;
	bh=cINuKrXxCC8c075lvcmk93IrapPTs8CghbCeAfGUuws=;
	h=To:Subject:From:Message-Id:Date; b=eR/lXSbJ3rS67wK+ZEFv9JdyXZdbXrPgmyJNlGrwIaH2RMS0sgOBYG9e+7Id5gjPxs3dqtrfCEBbNuQ1x6vVy7QkiZQ5q0lpC/kTYAfPf/nkpP2UGGDe543QrpAMpwvEndYcbBYhssHeQ9Tw6fjx7uwPsp5ombIWLsYTrvtxwFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suO5wB+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suO5wB+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE0AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783921713;
	bh=cINuKrXxCC8c075lvcmk93IrapPTs8CghbCeAfGUuws=;
	h=To:Subject:From:Date:From;
	b=suO5wB+/68OmaLDX6NCokTOvE1GI8wz9bUmoRK8eQ5lnYmyVw4YAi1uMdMxzu4PjM
	 KxuhTj36c3eJm/3SHRocWkQkwDFFugTk7YyjpiAEu+DcJNriTCwlq1geER+4GutGwu
	 n3SufbpNCI4BMijsT71GG+TapJRKZdAo2riO1CrcITZrJWMXC9PFAmbvkOwSkhQuL2
	 4pVmLytID0Doox7lZC3CA70lz4IliXdVPgt/LOUgE3zVRB4Y661gEXe/Z2CgpWERmz
	 BYvF2/sWmzR/jjS09Hz5/tobEeRKqZbVukuhCCuQpyRmxkDLNcvFj7EX0QbD5N14bi
	 dJagBa9+lq9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC14C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392171368.425.13491782264684414995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6ac52d7b5c3af3fb7f141b2d171c6a1db45c6e6467e2373b960f7c66578cbb
Date: Mon, 13 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783921713
