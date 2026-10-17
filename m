Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628CB13790B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792224634; cv=none; b=mdNDepJY9zsLw7cyq3/XF+adLEJ4nHtrlbjR3TMglJET+nOksBXmOlrgsnBXRX4rlJiJCUvcE8ikwaxoGa8O26dWSALULZHDUtaJuNp/dddJ297BVIH/NEON8fv0QKnG7TKaB0VBsvMJZQzYxPgvRU3KpxtApPJkb8mzkxz9I0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792224634; c=relaxed/simple;
	bh=B/WDaBcq9j45K93ojHkLJe20c7yfaOYQX70j+CDqZno=;
	h=To:Subject:From:Message-Id:Date; b=byzKe6brmgbwpnQsGw1hOsea/ApeVO4epfVBUZq01+82aafBKYoRugDcym/Te34aHcfSdtpgd6RKO6iFEgRIXVEtTczn7jfu/4JyHcv8R9Jjm8OuU+zy27HiaqtuaboRDCN2G58KrHtHmzzZMd62LL8DFgcnoFEJ41Ix23SJCZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCAd9582; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCAd9582"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74C8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792224633;
	bh=B/WDaBcq9j45K93ojHkLJe20c7yfaOYQX70j+CDqZno=;
	h=To:Subject:From:Date:From;
	b=rCAd9582fO717cTGTlBCogL0z1nEfHWSZ0gZ4bNY1mf2tfUodwVez7iJXifgC3G6O
	 oxk23WyLPq5SKIg1c2jVI2gLOKH61hKkksCwSs5ee0LQlZJqwtz1F8lBZNs/OpGPWT
	 51vHRnuRgmCpRTDao3qHyM4n3l4SEJdWgAzLnr41VmipVNAhmV/4dRT9mpM3DRH/Qm
	 stB/J0PYe1UxX3n4aem3Ucx0qEgUSry15YUbiWYsC0aUiq2pj87ncx3EaaXDyANFBQ
	 EiZUgUFSY5xyfhnLidRS/QaxIW6axGyh5bSZkBvWopzf97VDclaU8Qa+CYqnJXXC3A
	 F9b0TFxcFPgkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32ECCCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222463370.32343.9150638268777104228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bd0762ef6bbf557091d8fd0ff1047b37232645ef6f3b9db0645cbd91284dfa
Date: Sat, 17 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792224633
