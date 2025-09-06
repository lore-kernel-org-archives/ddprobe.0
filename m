Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3988B286D40
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757195994; cv=none; b=d5mAbAUHYIzZlcQKsR8BCSEYv355DvMkKJX5Fnc7dG9KwjcbNVBuoVNGwktbDH/TPgRGoBJ+je40CZ5NweBXYyPkP1p8fu54UiD1qHDtlqx07kA7BbEOpeRnfWHmuybmDJMYh9ESSu3dBmkJETxN8Cej3lAHqTQVMk6OorKBJnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757195994; c=relaxed/simple;
	bh=1auQhALG9DlXq9JfzqAtjL7Yzh/IRlZFopwHTIiWsoI=;
	h=To:Subject:From:Message-Id:Date; b=a9vyqOj/Mnf7ma9M0tR1cScmDldv3FFr87ghyMm03fLRFytIVpz9uHN/0+aFKh8is45MZMtPyJlhYDpUgg3X3C18FepmUz0ywB0ZFAfPMKu1qKq+J5BPgZ5mblOH6mWFY39n+4awHnpyXD8zfVYdxN1EH286HsF2u0ILR/Ua3j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4EKAG/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4EKAG/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90C4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757195993;
	bh=1auQhALG9DlXq9JfzqAtjL7Yzh/IRlZFopwHTIiWsoI=;
	h=To:Subject:From:Date:From;
	b=A4EKAG/0OwPcLJLdPnha5PxHrpVfxW5EK8CVArGIuGwFUFV6eK+T0rtFFcGQDFTjl
	 J5RsCp7CF3+ikJM3yupjgH5kfBxqPQV9yKGb8vgi61wo4w/BZYBh5BoYv4CC4Rh17K
	 V/fIrHOlx/ct1oxWlFQsvExLOwaAbnJ2Fa5kfA1yJHER21akmCIU4cwK4nckoLTIJ8
	 1QKY6SMr7Z0KqcKX8ROYyB1o0QVktcSeBbkNq0Lfqn++y76MfI8Lug3MqEbhgTgojN
	 MZE7DKjJWbDdfun4KvGdDGdOb56zT6N5hd/kGs65xRXPkRvxmJBWDG44cJZDrwgC6T
	 gtN6G0Cy5mUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96212CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719599358.4351.7949012697721044513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7b65258a15ad869cea6f6f9656aaeca004e3dadfa878a6afb19c685b270b61
Date: Sat, 06 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757195993
