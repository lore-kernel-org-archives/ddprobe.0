Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B90E4A3E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746956394; cv=none; b=pR/mLUVms+lwOWuTjbmICoVprbrDInUsgre9T5r0QXmZpGd0Smswfu4d1L/SfhOIMdyqhflgTyk40Oy/Lb6nztXxW4m8/RsEqGz2N5/zHJ1KRSpTsrahudktyTBHpVffLNKvOKCUUgQyj+urwfMmBtMFshCZJlihzcEffW51UZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746956394; c=relaxed/simple;
	bh=mMStE8f9u0Lq0TIIIEv6VBz+Op7LvFR5PjluE3q6IMk=;
	h=To:Subject:From:Message-Id:Date; b=s20BvK9FWnYulJVTefoYNlPfJWoK9Ke1ZhVwAXbsH6D2xe4yVCr0chnRB2C86YGb1l5KXN4nyN0AfIFy7sqsE9ZRPmBkW1woEvlywG2bsp1TqiVkutq/qo+NiUJgrEIBYPAw52JplpzD+Oz2m2r429mpzt3vKkdAee1BFZLgMlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFtvsAw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFtvsAw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70E5C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746956393;
	bh=mMStE8f9u0Lq0TIIIEv6VBz+Op7LvFR5PjluE3q6IMk=;
	h=To:Subject:From:Date:From;
	b=fFtvsAw6IoqOf0+NV/3dYw9r1SMXcNwD8R/aOkYvTnVliSSPmSp3NBOYpja2UeJjW
	 YtMkLqEm8jqbQRyu2vSIuD+6/ogrMS1dUWQW1sxYUFJIRpmKaouGxg2xWnJ+0hWVu9
	 teE3XtueA0Z89DZrHtGGp2VY7ZjLxkeUXnffIwx4CT6VQVnSY6wgjSsjUQsmiyTK30
	 rfERer1NV5lAxRi3WxkNNa5voXO9RRwNsFHGKOU/VpQVwSWbTigIsPJPCE3teg32aZ
	 TN3OhomcNhbqXgCTU1muD5xJE660bFR+XlLTRcvogkCeSOfu65GE2+38qlOSu/jHDu
	 CyocwrqAX5dFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF9C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695639357.5732.282970850145124031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed351bec0b9096ed21b954f1efd4386f23c962992b80adca3c0383e625729a7
Date: Sun, 11 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746956393
