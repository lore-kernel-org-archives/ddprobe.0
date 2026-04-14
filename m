Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184453EC2D1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776182854; cv=none; b=dhAr0me6NtVS/apA3e//HmQAgvzwRl0GGXMl0VJ/UtLO7iQw4x1fwubZeuS0ODMb6elFErMUMRyseNzZANuflwiQdHaja/TtbVKEHxaxsRmKL4Doyi5SGDsq6+dQuNYrwAMmR3Ux5TZshQu620HGP5bIPcyRyucUuQR5Yn2Txnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776182854; c=relaxed/simple;
	bh=YRFrD0wGIvTsheA6NXtob2rCsTrinVn6gcgcco1WjKI=;
	h=To:Subject:From:Message-Id:Date; b=CXXEkRKT+Stt4psLG0LbRfn3jRwdfIbReB9UeE7E7cqWVuqaPLpTCkoPZH6D1ZhWrTW7i0pGWDCGWzmB9AZXiuCgDHIL15Cx2RNnjsV30BQ7TwTCjNRnw7L5bEw2YnQZ8v7cua28C36uRjgKD49dngnhxIiC2ttoDdKbz9rldHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhant5x2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhant5x2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD5AC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776182853;
	bh=YRFrD0wGIvTsheA6NXtob2rCsTrinVn6gcgcco1WjKI=;
	h=To:Subject:From:Date:From;
	b=dhant5x2kri0TDAHdiGMZXj2SxORiONDcygT7FDufRMec0jQC5YIDy4+u7cefgZoR
	 Zr+y4jXNaUc4EUwVx6gijfH38SBhCYpfZQbyuD7CFyabvcGr0CYHaclerC4MXMEnXo
	 qVD05MozXk//0Ue37jGEk23qMrDV2gxWrQ2iNbBuv23Bo5FQZXj9NxGxMvGnI/Ls71
	 lfuhhdyZG49vtsXvzz9M8/jtA83AfnwUAZ0lNbMJjHTZ7GVgCRBHRC4NbwSOSXMc7i
	 Zc3AH4nQfv58b3fw5T3Lqc1o0cTzJNYRCtQkWsbXaZ6yDpVDvILe4qKy45bPVA6ZJj
	 fSuX3mgxJeacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0CDF9D0DA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618285368.10807.17404391778079901204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07072534a25317ff900f268c5506fe196153fdf7f48f2ccf7020c61292c30eff
Date: Tue, 14 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776182853
