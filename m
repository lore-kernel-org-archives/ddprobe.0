Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E3E34B1A6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776365854; cv=none; b=QFlzH3MklaY0o2fXmA2UtWd/IGWR/zM5VReTVTIBCCHZWJW0NKnkYLdWj9xtmwBhetvNV2heU2wID9sQaniVlHjOZwznOJFsCQyCdPb/s0oVjVUzG+y5CPHLUzm9Zz7yrE1iQIFRiRFO4Tx4tiqgizo+/5qwlUMfoZvkIEN70hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776365854; c=relaxed/simple;
	bh=PahzWeICEJpR69oTbXVLT3Vjvhi9zOhXJ5sS8KB2tNE=;
	h=To:Subject:From:Message-Id:Date; b=mW3asrHmncSW3XmjCeL2Opzz7lWzp95upk6Tk963oyzwju9XwpH6BCPl0aT6OmEnTtQwhV1jPKtC87rTtC46mjSZ3bj3OVwU8pQ9mc8AYa9LqxYzg6IBaQ3UCtdrLKzIHmlcC1GMX2MMD/vpgn0SI0lNqQRAM38zjZH2WJPZp2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSSrB82A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSSrB82A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6EDC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776365853;
	bh=PahzWeICEJpR69oTbXVLT3Vjvhi9zOhXJ5sS8KB2tNE=;
	h=To:Subject:From:Date:From;
	b=NSSrB82AJ6Ala7Z+QYpBEXgzNk35+FNyjFJrFuhrdvBMEv6a1q0++9tBdoDb6fiJ2
	 XCOgcBWgzZAoR5qq0vXLcex0qGCXi1ZWbSPM46PEVu89GGeZOtCbkzPjnG13VuiRk3
	 i43qVNALQ3Igj26VUkXH1eKSRUbpVN93hSqXNUb1CtHG8wjFythQH7gAiLy4+InHbM
	 atQ+OEWw+JHDB243vWsqTpPJanY9kVE2MR7irTzVQDhCfvpHW9mN+6N1/HnlgCfghF
	 A+gCquBcB3hKdp5BJPQVEOJp7PBHJP7aPy+6o83jJzgUtbxSW+Cxr2p2y32H2ZT491
	 Z6/QqsbdMmgrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98BF8D766
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636585368.12699.13515958705115467315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3d557bddb0698663190375a6711fcaf994677044e8048196401796173f90ef
Date: Thu, 16 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776365853
