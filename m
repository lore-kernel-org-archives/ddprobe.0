Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E15817A2F6
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778327854; cv=none; b=JbWQcq2LGeDKHtSf0pCw1EhWQWGfPddo/3xps6JdTqGdV2/ljDNN6KGGdDQnIfq8BhiJqmGpNrOUrAq476WuJVXUaqsk/l+YQVcbAy1/9P6eXjv56AQlf2jDFzS9wzMNlUxAhKunpQUbuntyB0ZZIKuN5hAYpYjAV4SOjnCsWQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778327854; c=relaxed/simple;
	bh=+a9AZDlZLLN1jzyV9BleBs3sI6b4wE1thCbwApL3JBw=;
	h=To:Subject:From:Message-Id:Date; b=Q8pbs/JB+syEJCi8Hafb0urb/zHX+5ViHcrwRt2MfSIpLyRXWrZb1Ta6g3Dqj7riHJjsjU2+/j82uS2Q2na6N/lpdYSXBeRqybrGx++FfnKH3/VF9uOt2FA3ru5vJ+uSTSqbx504p7Z55dP3PlIwDF4K9yM3QHhhovlBuL4DlJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCULbsuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCULbsuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34886C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778327854;
	bh=+a9AZDlZLLN1jzyV9BleBs3sI6b4wE1thCbwApL3JBw=;
	h=To:Subject:From:Date:From;
	b=aCULbsuTb49FXAn9l/7CnWv0SmvrbfNRhxhrFbFDl/r7NnQ6oPcW2Z22cCeuYBcn9
	 9LJmDMULQmJeqCn9h5ns12dS8jyFu0WUqVkdbdUxutYBlMeg8A1iQ/D6HaKM2ScvK8
	 hShcnzAyvyECgbGUbai8HUurqNsYZxfb7Osp8k7hU1LZDxrf4hablT0w5B9fwvhcoK
	 KUhWooqqijt+89FVPOO85x70xyznuJ6qCqCUACEWPHZq4PoMp/slxcsR9Lz2fM39IF
	 BWCzosgU2pusobY0KBn3EpUmoks8+YB5jvHyBR8m+sGX4PR9l5yPKObNmME733yZnW
	 GN68g/NHbfyLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D808FCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832785382.2230.6607249319198600504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f575c1eedb98f216bd95cda771cae0540c4ffa4c28add3ad6c41dec6581269d
Date: Sat, 09 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778327853
