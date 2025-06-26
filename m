Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336741A5BB7
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750913994; cv=none; b=q72F6TCtUykEvYKXTYI0VcwYZTRFLk+Yx2Q2hwK5OqeELU9jnJQCm9LIqNDH7uFg5CYx0j8EM/zd6TSrjyMCs3oELVpGVSdej9HlpzGWlm5gkvkClaQ+VYPh5PW2/27B6hW+Mzyg01f3jt1AFXetA6MkfD7j3mOAMCQdX30X0QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750913994; c=relaxed/simple;
	bh=jTUv3P7VbbnWwN5VrbaKJL2rwDJaT8rrn6IzsFgyS9I=;
	h=To:Subject:From:Message-Id:Date; b=OFYuoh6Ba4yTYwCIn1Lvl3oZ4ZdZnzz38D/2VeKuh7iaTtaPAKbx9H5Q8qoU8jzlHhpHwWRK5Ofv+/ii/5bj0YnFtveuz2MxOXpqXaS6LVkhT5MY9MmDVbOW2flkgcQal3gTAtauBAJNURG/qBSOGVm13RLH0L0QFcvKKokeb98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc277mcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc277mcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05D1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750913993;
	bh=jTUv3P7VbbnWwN5VrbaKJL2rwDJaT8rrn6IzsFgyS9I=;
	h=To:Subject:From:Date:From;
	b=Mc277mcThtIC+bzix8BqY8bsApb/0TVE1CX8zff0nbdx+o7KXGmXSAi0e1QMPU4NZ
	 925n/G33qmAEbcnl48qJcthgNq7ILKUTJprYolZCdWnF1jerN+h8JUVPXRKKeqtUk4
	 cf2ECgDxG3jSfCHcI+49NM6XVtW1Fj0K6rgcP1vrKnnu4tklgwITz9R+a9xWxZes92
	 4ftVcfTyOvVhWuON0zn9EB5GQuRJarJHOQRCEmTWe9j/jsfMKGc1P0UWYlHbYugpin
	 KYRb70Lf7lM1VxUWi4ehHsFmXcg3Nj3OYvGr+w7nN/kMk8ulChgwUZbXjHZR/8tzIz
	 dXsjyuDz6odiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F37C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091399359.10657.14010352948609423826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1f60f8b722233f24c0f43492bcf74aa8883e1d7bca725c55b3614b874a5cf9
Date: Thu, 26 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750913993
