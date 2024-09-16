Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1B11757D
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726510554; cv=none; b=os9lW5PuQ6MgUsif6tQR82GUSq1ARIBmPvEZlVfnjN2XP+ZqwtwCY0BJiwwLHEKvUYxn6WW5vVp1S/R+GmtMPt+rKyU+cvs2bIlQ+XpAgwX6pHmspSKvjEQLNMZOM4I84XAqxwluqxFXFMDGUxQ3EAUobcacrErnBxc/cIgxdTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726510554; c=relaxed/simple;
	bh=yHEZLnXG5ArxOphPWloJ/vYFfwtuPRk0+r82nJfmiLw=;
	h=To:Subject:From:Message-Id:Date; b=oC+wv9IySCRZDj2CukCAzo7dYCBFglhUDafVA1ByducCY3pjJhv6hRwad/yaOYI961DoxRwvoNd3g2tw/Qmj5LQ3Z8wZlFO3zV5oVKQosAcea0bVkcWq8dnudegopcx5pJyjjlXIL+OYupxmnSI7RQX7cjVgLdG5kurPQkFX+eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urmK8Nzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urmK8Nzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1874C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726510553;
	bh=yHEZLnXG5ArxOphPWloJ/vYFfwtuPRk0+r82nJfmiLw=;
	h=To:Subject:From:Date:From;
	b=urmK8NzvKa+1QwZ/R3i9nRXjLWAL8xXcNOoHpRY0WKsPuBJTfRn50+zUJJJd1t2JP
	 VFUwOtvaMHBJEBFgRcJ+zpwe7lXiCk/0UcH8ck3dqk8Y58pCkGErHTzrqFvNmqtRX4
	 Zc8DVTe3luRFqsxkq4hPhsnUZAdq931JxbaljFx1kkSF0SOcr1pGuJjNrnBb+g6Lc/
	 E3LwFB7QdEkv2j3hJAej/z9WavxGW5A8Im9NlAT6pwi97ADw+CGKC3K+8DQ0Q5WyQ4
	 VGPosYTMwoKW9ZsXj4BT44OIc2tD/xN+Li9GXnzulpTY1YCAFQo7qvfjqFHc5TLFX9
	 LSDuWsp9qIFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C509C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651055363.16029.5439721879542722742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f352d9c2829153d4ed961e383978f31c60f9a194229b17c5562eab49533a74
Date: Mon, 16 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726510553
