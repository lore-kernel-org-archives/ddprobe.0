Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDA9306495
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756745394; cv=none; b=Sbaq1cbjBaXRHDOjOavJrpe9PPyEVmKuSqEWgOhFcMwHfrtLq2gL53ZkvZiZrfooz579ooIbaU6wh/Esy1YXN7D4usorRHouetbxHOvD/AdEieb50K9WIVBjtGAW6BP690DRT4hQdZsFCxhS4XoGs1ycbiTwwIJSdQk0IDBZiGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756745394; c=relaxed/simple;
	bh=8zLR9IHUze0qqwwxlMNRUYKGOY1ethlv0XR7S4AsIbw=;
	h=To:Subject:From:Message-Id:Date; b=H7nUwtJLmfvH7XCr47p8p88/C7z6ZasRKU/TcN+ie0psYcNomrg3HVlyK+tTiAzBBsOU9AKXY4bVioOe4quft2zNpIo3AOcY3HG4OI4/egb4tvrl3IPkHRGE5qh2S7XvHfVMNxNbD7FSLCJCIMNLlb7pOYm4fzxdunnN+gjPjS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L35xlGw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L35xlGw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3233C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756745393;
	bh=8zLR9IHUze0qqwwxlMNRUYKGOY1ethlv0XR7S4AsIbw=;
	h=To:Subject:From:Date:From;
	b=L35xlGw2LurwRTJVMWjtKViizrT6AW1ie73r5KKnTeQEWOHznXJ4Chr2x9ZKUXTWf
	 3wRxP6TMCd/N6SvHnmDzqsCt+lTESCQE3dlfJJxxcRqOA55i5ckocu/d3CirGUGv28
	 MoHI24oqFzBAHxUs8/lA/CKUh0WSaeYvkVD9vANp2woV4oRc8k8sZj9sjZZ7RqcLDg
	 X8LmRQba0iH6OswWwJZTYc5LQJ9cCW/Yt6LknCA5Fl63D9tn7Wv+IuO+tOkck9TCf8
	 oGLjOHfh9dbNib3p6zO4thW+ujWmnxgf4DvPd9UsSlk/xVbiLpPf9o6aKnqvu16ME5
	 DSezZyb2C4GpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F3CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674539357.19143.7254419715035578153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8498d1517d1bc5c1a31f556243c387f9b53e298f33b4793d33a65bf8e772459
Date: Mon, 01 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756745393
