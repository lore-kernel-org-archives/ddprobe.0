Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642FF2F877
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714922543; cv=none; b=PSg/wvULYK/GulegvWG3XoPS2DT+kjCh7DwHLEj16KyIO7HfDCd9Ugn4MQv3kKdzXhjJBw1lHDiVhppTNhmwRmBBKIcGEbHNq+KJHfD7+33X+hlzLnJW3G9az6o5EIz+Ow5b/vI2+vVQvHbXaJwakKmDzZCQykjh72D0Gvb1HLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714922543; c=relaxed/simple;
	bh=q2HTOvYGlFbbeBmwPAwqNuOdOIKEzz69wUnfKqInyAE=;
	h=To:Subject:From:Message-Id:Date; b=kFiq+18PKU7f7n/t7BMmCElmEQHdi2kH9BOF99GS5phpEAdu+LtOR4X1VxsRVHiIWrubdJA+It7ykQKBg9GnQCuJwmZ8jrKvkSXL/0rSKGFmgZhf2yfDW1hXVTDsnk0vWxLVyukEew0SMqeUQXaWq9Im1+oO/WWOjKk5gNlqkGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruaPPFoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruaPPFoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0BFC4AF18
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714922542;
	bh=q2HTOvYGlFbbeBmwPAwqNuOdOIKEzz69wUnfKqInyAE=;
	h=To:Subject:From:Date:From;
	b=ruaPPFoGelQE+DlthoSykWok2V/cMRWtSsx3GyVRL25OC/iQ7UVtX3CtRbtj2TRjC
	 8J91rfRyKj/kr1boEDD1QVdKx8Lk0JyZo5lovkt6oiySOZ0ECdWAPUhjx8+4FlFYp3
	 4/bJw0N9PdFMyER+vGUyWUIW4RMAhI/WntHcF3dZZu0AyAhowBOWBL0Oid4cnGjunF
	 Lf0yjWWGu4OqXDl8xpUJygpjCWvBSm9/MBEQyVdiI9v/dGSwmuzmSHDXgHR+ZUH/JH
	 ZEHjjQFRht5WHAM7Wwkw2JwymUcWpkCUiBPP2xXHV9sk6Y3sN79VjBPhap0sYWfGk4
	 in8z2pMRbHAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3493C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492254276.3365.14072486401724639191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e743d76df4e1a6db96c087629f9f822943ae3ef29f5ebe8a46b67eaf9abbf7f
Date: Sun, 05 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714922542
