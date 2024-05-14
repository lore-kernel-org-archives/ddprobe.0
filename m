Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BC717BB3A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715705543; cv=none; b=uVj4srzBZXavUhNQe30mXXbMtPGG2fYuc5eYGjx5imFglZxx6XcS+AkZisDkAG8IapuWE2ZRoVT3zwp/2mKsRCvLb4hChdHwvabMGlKpOM0oEtXVkPmXeNE0jz6wem4p7w9hlVH8kURvHLuUnX2mB3KAeYCWYiP1YZn9LDlNMkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715705543; c=relaxed/simple;
	bh=apWO2GVIWmHd9t6DkiOBrKJX8auHZ1CxK8RwCUeoKp4=;
	h=To:Subject:From:Message-Id:Date; b=KajsFm18ITN+v7Vil2DyOG6okR2vJr6w1QP13dwPwHSlBuYmk0+T/SFgUK3btvT75DGXtCuf3YL71ixO6KviF8Dm5nOfyWXWc2vffUhxHHC3wJgaHGuXl8O1G7sjr1EFd676rQ74av8Go/ZJ917KDMIprTZhvlAGd4JhvNmz4yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnwcawE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnwcawE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BAEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715705542;
	bh=apWO2GVIWmHd9t6DkiOBrKJX8auHZ1CxK8RwCUeoKp4=;
	h=To:Subject:From:Date:From;
	b=cnwcawE5BlI30+eLZcCfpJM8TKJnIcvOo2g7623idfZiR/9xOkDJ1p/lVD+WjN1Xz
	 04FGDDt6ubEky/0iaH6kWDcB3ovwfmlsVjwdtW0zCgjR6yvhF/ay4HUx0Z/2myzDYo
	 ItEeA4f+yptB9MtedpKOLnQYPhN9pLK8zIHUYmqdwUVBp97lClAaBZr0O95KG4fnLV
	 +6TuiFVBlOfOT0Ym/9pugSztgyCBZWAgGbIfsEGwOV5Fr1ihlA8xX+2SMwysDOOJCE
	 in3ThpFm7CiqhQR3+CPhOhNIFwXoPYbhfOW4Hfc0PxGuxgy9weTZH2fGGAjyVRyc3f
	 ft7rkWAAJhJYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28F0C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570554278.989.1686614236989567172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b43b970a5f8a03a58ceb663f41c9d52ccf578be8d459698852d98612225683
Date: Tue, 14 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715705542
