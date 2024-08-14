Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F0F146A7D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723676154; cv=none; b=TRdgcBd5vshMHGP6nZg8eCI1HeczcL5fG/Yke7oqXOXu0q8wMMJF3v/ppLz0VEKyZJUVwvcCBnkkveoT3Wuzo4ImnWxOyKrgN1Twal5jvzN5Uu+buBOrNL67Ijsa4cPUzcMgqlRELReGTx1IJRF4kKtgQLvzX1OG6upJeAdBt1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723676154; c=relaxed/simple;
	bh=hnTDK22/mymHGtZQ2tgirY/koAHotFFLjmpzC2JSaWI=;
	h=To:Subject:From:Message-Id:Date; b=udUkG9tv3q6MJs6DHo/Fa6N8uDo57VOVejsIbtRezY6i+cLq+WDrjjwW4VUEwp4VHgiK5/7eLqTyK4EsbcSnr0F4XgA9C9gpRgnML3Z+EEcgHlLPmBqWY9dykyXakre5nHe3RIsoBi8g9UW+r7wr+lgZuvLHHxUJZbFtcXRxXHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN3//JXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN3//JXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCFAC116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723676153;
	bh=hnTDK22/mymHGtZQ2tgirY/koAHotFFLjmpzC2JSaWI=;
	h=To:Subject:From:Date:From;
	b=ZN3//JXr+26OJ9dmesexx/DLEqMKhU8WKN+HhT95FLhDfp16WpJhfni/jngNWlwW1
	 CIUBCHG7Pb8aHId0UVqSLcN5YtKqaHfrTsrn22XfWNeIkPBwRGilCQzB+kKK962XPN
	 Tk5rlRW+QwaAuRSFR6Agzk0uDO3xLLu4GZf0HmF7KuYbdkrvVjM/IQYW1YzepU4icG
	 oevDOejlvPCjWrxvIA3YxSdhxqFqP1gRTE/sRGPNdQwac3lPbPL+AFZPoY4Fd8wzGH
	 AJPYKnp0ydwc6vbVN4O/BBzKtUgOLD2I3tl0lYy8TBgTzHjaTcAgeX9lf9vkftlTer
	 DGq93Fk6m+kVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9735FC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367615359.2196.5341741155641338266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba48d2a3255e10df7b1076059ec8b185edf772d1db71b534da4f35c2d8cf02d4
Date: Wed, 14 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723676153
