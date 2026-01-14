Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1234426AAAB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768398834; cv=none; b=hjXwIwdtBRaxpsNbs2wWCKpYrmzTYUIyPSlYp/QVZFF3rhGxM9fcWNdl3TrvsFcdYUOdg7MUxj2zks3nSE6AKJBn3uyCk14dw9ySPE9znrkKHrf6ELxqhYIvWli/PuxiOVObJcpmeObQpCKxPpkxUuDHjNgL5gfktcdZqxsam68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768398834; c=relaxed/simple;
	bh=Y4p3rBhWsQ+PtEh2L/jL1jBLy9RrAvEqXRogmZD37wY=;
	h=To:Subject:From:Message-Id:Date; b=flmvYW5KqecbgCsESbCNo3OzLdibsvO/EINVbdAw+oiM8b1eBycHCxGc9J3LsfzbUYDQDChThCArt0yAeuCZSGq4t9t9JZ8in7Ik4W9OQufiy6qnAC6sE2MZVUFgAqpeKfhOVrSKBiZydPjcTxscjDp2zSr8Y3KZ6MMveilKJ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKFVEdcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKFVEdcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA8DC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768398833;
	bh=Y4p3rBhWsQ+PtEh2L/jL1jBLy9RrAvEqXRogmZD37wY=;
	h=To:Subject:From:Date:From;
	b=ZKFVEdcDrY34HkYHSghiLOwe7XcQI8SbPD0DUOyAV40KmdUaaLWdMdeNzC8/OYdjH
	 DubgpY7HRrucnwbKh7W1vR2KxGoTJibvLN08P3AtJBH7E6lLqX9cCO1L5axYKlFqw3
	 DZ76PnlDcxPvGALlX6pffA+9lOvHIyV44KBZ5peYbv1gz6IF2FqEAO6OM6R2cNelho
	 zbmAfbl6cyHg6Ur5sX0Y4u3fG1euBGgrcH+1nZIzfafZgUqYvLM5Vchz8PXum0Auj0
	 ufQ+HdHWm7amvhEulRo87+QdiQSWW0t/DVZ7z4FlzKeOLvqHtwFWR4MdKEoVfYfjLA
	 adLcm9stGQPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98539D37E33
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839883358.18532.11239519344514017324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c1c285aef27b90b85bea24d58cf6688f62be666caa0fed5dd354a9b2e812fe
Date: Wed, 14 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768398833
