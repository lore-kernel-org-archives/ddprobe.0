Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3561A83E2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745504394; cv=none; b=d8lUaGcxHgVILvloN2cCDbul82AHGTQBzUagNNqUbbCD+aSMLUxvxwfVij4XPuXiWMdbyWl1rFI5tQZwUyL43jg754Tqwr98/IjGk6pvdBHaZiNEo0KzhuSTmQn9B2MnqmZLgrg/aaLqLL8EsHubs1iu5MGlERv5ftll8jIoQUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745504394; c=relaxed/simple;
	bh=yyhTx+G9SR7iLdXFkPSBjsl+dj6JFU5m4tkg0fv9bts=;
	h=To:Subject:From:Message-Id:Date; b=QKkitYCiH2lmmfcle1Mk87GT5oeLOS9FjFdj9SLOFvvb54odI6ZChyFd3MK2bYuNsFcYOFwGZgPAeieWUyC19plcpSoFE/xJkEGhwhTHh5fWxR1wqXS80kcv1gT4RNzwRuopyAPm6Z4oayHUVB4RUe/ylwDsplMWA7J9GTMtKFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmO0ecJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmO0ecJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BFAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745504393;
	bh=yyhTx+G9SR7iLdXFkPSBjsl+dj6JFU5m4tkg0fv9bts=;
	h=To:Subject:From:Date:From;
	b=BmO0ecJTy7sMw/DpkzQq+oWuHDdAsiT9hLDZoCJvAzZIhhu7LPHgDLxvppRBYe3ar
	 UH156yqrMpNVEzIofofBaNs1A07DjUx6RcdIb7UgKmGhu4xjnz1OTmwf54Zrtdan0j
	 /ElcubkkBftCIHXjb3rySpmUz1Oq2fO7zrTNJB/iJ6XKGlhithVaFj1Z9ireg4nsBp
	 6+ehBEjInKnJfqIWQWwK8d6PprCuHe8vd8/4/hXzUnxhFQwPpb6U3L6RSpgAXiI3cX
	 2MeDDxCN4g+aekwyh3uRfqq6dfCXa7bdn7vZW/un2v3pA4y0GmotICHawqBMEfbRyO
	 WM1Nm6r7NL90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7AC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550439357.17864.11910731003416295455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d1c022b24881c61d457f44e0a59d940b7c742ff82a71deeb958f4fb5047217
Date: Thu, 24 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745504393
