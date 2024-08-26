Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F8E26289
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724647554; cv=none; b=QTUAKLmFeNmSTHBQdOThs+p4Ldfn2MdXjbQxQLM1CE648Z2/thUH22Iq5SYDO7g9W0yGAf9zmT2/RFw+0+rtT+U4dq8lDbTUv/JTaerOkxAiJcnSTIH8MFlFsXPtro7x5nfW8JuloMyq+mcX1uR+qXSVOLS48bcf+ZrwiFwyd5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724647554; c=relaxed/simple;
	bh=0WBf3CQrzhwzMZxv81yJ219R2FqF2thFH3FjB5yLxCE=;
	h=To:Subject:From:Message-Id:Date; b=QjWWK7EoKjOB6PboG2XKwy4nef46zMi6g8xjGCq5NWrMGuSPGmHnn2peyy1LkyphaTXIZRwwSgSPl2XrNH6yZQoep+J9okQhRp9VsyTSzcEoh+4O8LCDPmtsApxtGp2ZiTRGh+o2k4vMedCOZ30uu72mOr3eZ2NFL9NxZ15FdgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+0VGn7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+0VGn7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB466C4AF67
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724647553;
	bh=0WBf3CQrzhwzMZxv81yJ219R2FqF2thFH3FjB5yLxCE=;
	h=To:Subject:From:Date:From;
	b=E+0VGn7aNYWQb+2MJbPgAH441a8/rRT4I0+4mp8Ix9gXh4bxPIzmaz7q9YCx9dl2p
	 7hHrbwCW4tw83mspkCR9dXDFRgIMykgpB8WrWo7355nxXBAe9mfZl8JM33zsKVXWVP
	 iX3apq7eWeKL63Q8nTd47npci/XYc5jW5RA5T2ZeHd54Pw/vNvqcHEgdmrSdErlzNv
	 4Z8zh4OEczkcnYkGS9S5kT7fMBqZsQWhbXk88c+4vScjXhe1PYviEdmdH1shdbr55t
	 veDyyjospEd7Wl1QkReUxSTnVvVcMvYtEH3RTRI3XneJXi4RZM0gEoNbXZha2UZl/0
	 wGZES8+2G70jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B0C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464755365.27282.5112297011002175676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7ba57eeaf09bf53b822fb3b60ed90e65cc509e05fc59a68653079ecb161b6e
Date: Mon, 26 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724647553
