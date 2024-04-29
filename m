Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45003257B
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714363943; cv=none; b=kJVibhpHCpMLEBxj+HYyWkwfbiyR1YxpIqp8Cys531fb3uwp//nFwINSHyaMEn/u8ErLtxtGIvrd++e8ODPmBLXt4A2lOSd/mNBpx1DdTXrOnw9yMQLyzl2hioeBi3F/wImZvCrML8Jv4qYMEcChQAHu0XqHZGrMmTpaZm8FvsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714363943; c=relaxed/simple;
	bh=bT/7hAL08kTEK0DQ842QcWNkWC8vpfWREkmDrJef80g=;
	h=To:Subject:From:Message-Id:Date; b=c1AHgT15HWxc5N+r9RKp2eCPsrmsLZvUg8B3VOVrjnlRlHVltemRgi5ENlQlEmAaHXEVRRxpfO/8vc/lPxB9m7hHXBXIM/jOg+mmAw6xN6LoZUh5nWwE8hSRQJOqoJwe15J6ZapBMjIW5smpFnfPzQw8INoZwkLnopBGrh051uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rp5vfwBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rp5vfwBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FC3C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714363942;
	bh=bT/7hAL08kTEK0DQ842QcWNkWC8vpfWREkmDrJef80g=;
	h=To:Subject:From:Date:From;
	b=rp5vfwByDDwkDS+UQktVsWFtFZ/B68GDMMZ2+ZRUaMA99jvzV5uYjN5iwtlHc+22/
	 Fn8S6Q75tWwCwZ6IhYc0oM3zGf62hSG4UgIcgP0lyRFn6ITtuQ/WDe94zqcKZfcurF
	 b6rpnrJ7WXNfqGOgp2z68yVKWujKDbej7coUJ1iI4IS7zwAkgaSj1urZcJ8N4rWawZ
	 vtL6Sh5u3aAYEh27Da14+k+YPDHq2PKENHYcjrdxq1XqsPObR/NqH2my3G+VGnX1FP
	 AOG8fiMz1kSG9mTVmJDei12Ff1/Zq/OcXFYzPhP87Op6LvUvMDD2q23qsXp0BVoIpu
	 xFjzhiZVLg5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2770C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436394276.12547.4084775152418977608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794082ef0c086da98c6752ecdaa01955f166fedb46004ebf646132d1b005f9a2
Date: Mon, 29 Apr 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714363942
