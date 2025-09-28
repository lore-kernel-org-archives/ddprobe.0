Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7D1EEE6
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759087194; cv=none; b=M3Sx16ggh8Dvu9Ll0rMQBr9PcBLZdxD5f/yzi5ougV99kyomCtDRVAbb5Q3zg9DGy3WHrclXSRAvePUwSVGMtQhNGeZiC26H15xWTswZdBebPIZd9/hhhJMnqy5MguboCH7sz/CTZEje0gPOczG8pKFibzEJv4oskQouYdtDSp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759087194; c=relaxed/simple;
	bh=Vk4dF11rQ3jzqspIn/rdx7cg9+TDvYE0ypWA4lv6OyQ=;
	h=To:Subject:From:Message-Id:Date; b=kKpAS559qftODIAfQOa9J4qFxDwZ9i7Cw+epw8syPbxXns9DSVtKvKafCg8CTSFmObn7BQp5n7pTWuK7E10ey1ffEJ/+ILrOQx0KFXor5J0MTCbhChNT3Kz30f8EMK+gG/t3p/F76k+4CcCUL+2Pzd1BHvuVQf2ggrvZaUQllBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUJvsN5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUJvsN5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83CDC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759087193;
	bh=Vk4dF11rQ3jzqspIn/rdx7cg9+TDvYE0ypWA4lv6OyQ=;
	h=To:Subject:From:Date:From;
	b=uUJvsN5U1VavCQ7Yd66A+TbZdxIBupoQyMrOco3lmQAtqV4Mxf096uSuwJVwHh5d9
	 CGRWftrUwmMA8A0v4xUEux+wTxg1dj/iq/vbX7UU4B6XU7jTYe4cG0vF98mGfDjhzl
	 DM+no0VYJZQzhg5qTEUlnLfHp8jnQrhShCawc9gePoiVPnJyiBXjSuof8Mp9tpdEJv
	 XZfKIBNFF2wyoQq6w9mO950JCvcqDFmev2B8ZRSSePnx+TQ0gTJW9kc4GPKpicP6rc
	 G2EjdqaAgOLWhE/Wl46xqmMfYGsgDkOt4UQPONyVusMmNl/PSUhY9mJVqoXGMaYryu
	 kq0bYpNAOVtOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B80CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908719358.32142.7153005802877738842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69ff4dae35a0828620fbc5a3780ff62bfd9e6061bc7e5a45498804a63cd0cb1
Date: Sun, 28 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759087193
