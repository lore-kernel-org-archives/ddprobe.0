Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85B237180
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753825194; cv=none; b=ab4sKovVwxQytiT56dR1Q3Wopb30TWFKVkfqDIeOjQgYaFOxXRQnmX5d/8eTtYS0+t6hWIeLHpugF7HSRKqAuoJHUS+YyvhhHpQ8623PkycRkwLRB49YmM+R5HaXCDRHtKP0ibILqxHzAD1q5Ry2LFSeJmNte9R0NNKL13kWxms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753825194; c=relaxed/simple;
	bh=qQcnJsv9nJ8eluWsLdrHJR5l4mlL/nC0hK5/HuVGZug=;
	h=To:Subject:From:Message-Id:Date; b=urGL9B22CmPxj8xeqHPN6XcMCVAfObxNYPBWFYFgN9YD1QKrg6BOIa3pZCSRkLWZhsfh22+RD97SvZ0US+SgYYCt2OfWxIRQ6xIo8PiT42HXfsG+xXNHLdsT/DSXIvVhb9sZCUxzyySdm83pqDPAjrAqV907Ftch+UPf1VLIrps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBweWoou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBweWoou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3283C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753825193;
	bh=qQcnJsv9nJ8eluWsLdrHJR5l4mlL/nC0hK5/HuVGZug=;
	h=To:Subject:From:Date:From;
	b=vBweWoourxqyriZpLLJzBvHAaQX+w8WeDv7ssREgM+v1P4ecPn3eaLBIuhPAELdVW
	 JyL1Y/bKMAC4w1gXS48ClDyDFXjkxXZLItr38wXEVdsroXAVrvTb78a2sNDlk+paFj
	 eqArFEjD3af1KBub2S+rwjraXHu9c+qw79aib991BP/6zAIGNwjgF8Crk0XhaL7kFN
	 RjXm27bhXGQKAdr90SKaBzN5V6dNqjKwjKwE0iuwDEHiejmjUa66UGbeGPOKt5Owez
	 Kr9xHP0LT7Y4jcv6rG77OAlsQZE3HufdJtqRYvviVXkew2bvS6MzrRmBxP9o97WxT1
	 PyidywuDndgVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210AC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382519358.24875.11240775259347115592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f239a792e4cb312f3f411bc6b20d1a7af50f55d5f7af41149680b66683a388
Date: Tue, 29 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753825193
