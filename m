Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476116D4D8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719863723; cv=none; b=LahkTg9lXzyGMCkDhk6QDDvBdZbYU4OGYEAzImDjSBb0fUvP+rS/EWeESEihykKnK1JuNgw8G9MXm4Jyy5z9w7oeYtAVfEsnqevsbocn1zt9s5zJUNM27cbgjYIsE28A/suZC8PGetwwhQaCD98pKb8qlGD2v3mLEHte/ocV3+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719863723; c=relaxed/simple;
	bh=TPDml2E1Ku2A2JHfgUp/SQtIXf8EkbBjpPtMVrRNtXY=;
	h=To:Subject:From:Message-Id:Date; b=egldoa5ElGO4CGBr6ifcm3uHuyLdhKU+nS81uXHvcvkZSbItkxo7aKEnBYSJbOR2JZRV0ZvGPHjfU8GfrsfdeBvuHv+X/gSsHrL+8hOGc86ZSQHjg5Hx5kZx+sGMc+n87cG8Z5DIoaOuNrNDQiEKjqn15aDlqxcTkOuxy7gkXI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+1e3X3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+1e3X3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E07C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719863722;
	bh=TPDml2E1Ku2A2JHfgUp/SQtIXf8EkbBjpPtMVrRNtXY=;
	h=To:Subject:From:Date:From;
	b=b+1e3X3smvd88iVt/twcWieq4YKajEIMULh4B3O/2mQv01z+MfkfhWp16u33LXppY
	 PdDlONR12XVvc2mYhtAiOtMYnuuNogP+5NI11yOUn+uAb3ck4swH3Jz4uLVOjcO8mx
	 043BB1X2pIb6ErNmlIWCMZ0ySsR2TXx+mSx4AxqtZFZbbMobh5BxLs2IWyBpzn9VCv
	 SqSDRcQGemY8RjWAQpzfd6OCkMJ0LRlGWe+/uaLuXc+jKrueEi35i0X1rbU8t0dP5J
	 OXEfwEskRTLEymajvRlDBNDH20MAr0lNRhQZDgEDZq8ZttUvFd2gqI+us1N4jw/Qbh
	 6aDK2fVH3ItBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC580C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986372276.1475.8208982947938747923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c61346a5b5aa7ab8d7a6ca2b1e1d95d8cd18227e2b30f6e56e0ff5aa4dab324
Date: Mon, 01 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719863722
