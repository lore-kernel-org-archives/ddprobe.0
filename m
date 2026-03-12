Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DED39BFFD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773314094; cv=none; b=U+Ri5FkN7gJ/LkAPVd+Y9ZiuukZil7HBKSCiXMpt/3eGuymMn1pK1c+FYL7UnVAJ5M4ntzYVhyS0CEc8nouiCEzf++N8FEdhkl6vu54ef+VqTb1ia2IRwQkKGtW751vyJCc2L0Z+OlUhNtABmrowQnQuO14TeX4nsohe2cxERFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773314094; c=relaxed/simple;
	bh=R1QSBiKwC7PAMTImA6vdUKhnIzyBNunFskGJ4ETvC4w=;
	h=To:Subject:From:Message-Id:Date; b=aDdgaZxMXgVJnqeFeMIWdCaIX8tvd2hssx1TrNFEuCUbWEU/KFnV8EcV2mINirL6Q5Y8sZn1TRW9oWmbCvYv48QJ68BJ3d/m9rQs5xP+MukPMAGhcenOtTkqdThUS5bg1J+vnYFJjTYT4VkQn8f8xiq7rll3WCoBT+3IPuszi+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0u4MaFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0u4MaFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E315C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773314093;
	bh=R1QSBiKwC7PAMTImA6vdUKhnIzyBNunFskGJ4ETvC4w=;
	h=To:Subject:From:Date:From;
	b=M0u4MaFYoNbYB6UnGG5viD+VNffb7UHIwjSItCeUiUvp+4MGfHA7TgI4TDnwkpU+o
	 8SkJXmIoHza5BHlrS0Uv7vArRnv+uRXn0/TfGKuA+BKA5qYGL0Z+crWqEQkDb5tUhm
	 /R8TbpcEJSXpq4L+OtkIOshwzL00+mCG68n6uRmq5JiFwiPKkDAXmy1WhH03SnqFKP
	 LE8S/8Ngjpoz82RTqoMtNYWyKR2Nf1cXhymEA1i7wcc7zNFUmVBhBV05BjtVBBvjkM
	 PYT8G+bWdCyFBfxR5sd2KYvysH7w4zJVKSTBqAehnnZ3Homi+RnbaX6maFr4yEeZRL
	 0L0a/DxXKgdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8B105A585
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331409357.11510.5472657370458033230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e553fb4d55038cc9a1794d1b73c6b13afbd271ceee034914bc739ae04bd2f3a
Date: Thu, 12 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773314093
