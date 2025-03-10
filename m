Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4721322D4D1
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741620534; cv=none; b=QcaXlsZAu07074WwFtXLZMIC2e8wuvSEWQLPehrYtsqEYo+zIprz7sdw3aplGyePwWYBFQ3eKpf3TNoXwJpSP0R3bquLitRAdNlvqk8mgN1U4xOX4wKX4tl/q79SK8/n/2SHYTq6rvgcZSK4qUGP8Lc/yzJ9Jke/LhPjdysRUS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741620534; c=relaxed/simple;
	bh=nBueidwRThvypYoq69Ek7YGfmubXwFKq4nAK/8ply4k=;
	h=To:Subject:From:Message-Id:Date; b=cRR65o1er5o5fpzTMrHxtTDpXbkBQNqJUbg2rH0q7z7G+0qr+v61tXhdqr5tp2MRpEpXL0bzIhf7sucAwAyusbFMZBZUTSHxw94iZlgrvT/EVcLn+HIeynIMDj9ufb7ZpAea+Ae8pv/lMjvdgy5zl+y95ZCwxCrgGcmubxwUZ+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S07ACgJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S07ACgJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741620533;
	bh=nBueidwRThvypYoq69Ek7YGfmubXwFKq4nAK/8ply4k=;
	h=To:Subject:From:Date:From;
	b=S07ACgJPwjBB4ZrnClgmG7I/983lRSiEgzf87E4ZNCIcEFh48ckDerf5mo8wBZP2i
	 UtxG17jV7FbO8HZcmFjmW8x40wPLkrUWwbZRMl4HfYkWnth2xuIeA10C5Is+vQfeid
	 LP1ZYeChE3qZUnMOaEMzdTSvLWu6SpA/lfFO2z/OSGQQZLItvUWDRCun6m91DCCPX+
	 KeS7Ro9TlsphRvFfrTRksz8aifGStMSbWnOT3Xe9EiGqVcLWWamUZkLvYCHRi5hMHC
	 1p23M+7K2OB2orijAkawNXY3A/e5j8ELptoP+MPEZ7Tju5FQQDewkoagP2GUvmwozQ
	 SvQgJ8D0jQPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9827CC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174162053361.30252.12286280500868137563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb9ad73ff0fbf8492464b3a12caf20991e0882e0acb8d5491045fdd66792b52
Date: Mon, 10 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741620533
