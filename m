Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B4E3019C5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772143494; cv=none; b=rWyyR3/JMR6KGgZvWYOvNQQnpfaL3QHlEpD53WmrSP2gjA1vidlY+tYi5/SYrqUlppbUF3g2dI8ZiQJda5TmJlxJ6TAkPGOHgv1o+RV4lMCFNPfjHrPcX6MxxYZYsRV56RVnjJnt1rIBpwtkdXYM4cS6EeuHe5xOA4hBrnOh8JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772143494; c=relaxed/simple;
	bh=8oUtcFeVWDbQN+N3bCJSq8dSgzErb4lXFXE0rnUxvzU=;
	h=To:Subject:From:Message-Id:Date; b=NSeMh9sv9Np3zXNU862W3HH1DfuO7YnWkQix78GmH2MrGqOATjb/klsBbobAX8jD78zCUjNlPqLLQdQfKfKDcltvd/QV28C1p01r6wpvWdYWEGt81byDxewgiKz7ZEBMjKM7ZfACXYHZX+m91AFApmGFG1kUbELgyFFXo0+CYN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaCS5rfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaCS5rfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6390C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772143493;
	bh=8oUtcFeVWDbQN+N3bCJSq8dSgzErb4lXFXE0rnUxvzU=;
	h=To:Subject:From:Date:From;
	b=LaCS5rfzD6E3V+G8s3wOMi03dAk+aMOJgvlYv2DNuyIGcuRfdRlPQJOZAL+GR3XeQ
	 hPAZywXxNOAHdxStzKSt7BBJ+W8S2kF1cob2VJRUnT+NF24XX/MeCzTpLfSF6z6C2O
	 WNYLrsqBQPoz7YrHlgsTGBgK1KWPmE7keX1HBv/r5d9zfl7O6f5Z79B3whL1VMAeiA
	 TesG4dUwehl0GIpOEiYmyrR9P73ZtU0+iYO5qYYh44x3GbcP7IpJ8+cgN3Hn8RPPAD
	 0FoYt8Fc6X5rtJnn3BM9VMvXlkFSnnwm+C9gctrD/WJW8DE56Sgxh70ig2bogDv6ht
	 e86d1yzvkviwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A37CFD9E1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214349362.29670.140322404619940489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7470cc3f7c9bf1ccea4fc5f8cbd4eeb4a811ce4715e454128b4993a41ef3c0
Date: Thu, 26 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772143493
