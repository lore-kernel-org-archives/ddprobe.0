Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA0D101DB
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716159143; cv=none; b=oqZMBNGuHOjExzfi7a5ORYFQAjMNekb3OV3bdjahgl00MTtBDoKETuLKJIK8jilHsba6I1Wf3uSUS1G1ylOMNk37lEk81cQpyR+cSv6Hjt0NvU+icy+co2uKBkRRBx/8mbL1nBIaUa31hOQWqEneR+OCO3QKC64wPO0PFDjqr6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716159143; c=relaxed/simple;
	bh=uvULIL4qJ8wuBZZ5v9sE5TLPVj5BTYavFfqw/c6yL34=;
	h=To:Subject:From:Message-Id:Date; b=NeQOwrdB2U3B26i9pXh6ZTBGhiLz221NH1P52QcQAoDMIi6HnX8viNMdfsVp9A69Pf3gjAr+8BQe3jNsQEG4rqEI2sx/bQpzMMJQQu5a7aAaKfNxCNKi3rjDugo+zanBWLB6X8G9E2IimG40Jcyo58oAwH3aGzj/c3n2fENTxHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOoFIZXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOoFIZXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE20C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716159143;
	bh=uvULIL4qJ8wuBZZ5v9sE5TLPVj5BTYavFfqw/c6yL34=;
	h=To:Subject:From:Date:From;
	b=rOoFIZXW7n3YtqaLOHsS3xfJOUToux8Ji8yTY/LzZdksafVz1AejQEDZSZ5SaKHVF
	 A7NAiBWFf+QQshweYbZodRoYqO9IhsTs+UcJxQXxMkFzpDk1uOVqebJctREAUR4Zt9
	 Wxo9uUQaXuaJcXQmi4YHPWx/oM7Ch8sIoulKc8rt7Gwz4f0UWlIeM6Oqeqc+dlrq0g
	 ZTiQZbpAu4acUm+wuP9QZZsckky/jdidbggRExqlMERer9ztt9Fdy3+ui4oYAirCld
	 FjrpYKacFU9hVSz2ou584IThoJyh9jTE8cSfhHSTjK7DPnaASbp+nzf21H2jfGD58v
	 zEPnBHRaFABvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53BBC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615914280.26077.8581967485986457399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bfb343738c0b4bc559d89921c9ebe9aa7c3ac8c1830b4443931c5c423c395e
Date: Sun, 19 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716159142
