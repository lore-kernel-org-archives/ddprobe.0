Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6A4C6D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748135994; cv=none; b=H11FjQzEoq6LateiATgJxmeseSvDMs6LRrjPKDCWOBRKKEWoR30buPGbQJ/fCX1/pD+6y/acn6/4GP0K6elnPPifmL2cDwjKmOAki4iljoH9HahWC+do3lHFujkQ0WaSquQEfvpeebr2TQP9/n8OWEjs+qHdqXC2kPpYvf5J/Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748135994; c=relaxed/simple;
	bh=n/78gyjCJ+Ym/UK6ObcKZFasU8sftBh251CEV6bSVOQ=;
	h=To:Subject:From:Message-Id:Date; b=a757TIwPMtuv601n3iFG+8p74h7xUNW+ZkXSa6q22ueUM3kDUu8u/8Akweb3RWNVDV0yTeW7Si61+6nQRL35dHIQBPuxqyT1iZdrxgbkCdwW39HlwcoQyg7VenJWLi+BEipqCpszXut4D4lKl4dXfZ8ChXKtpAdSdAIq8sZWoLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH05z3ZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH05z3ZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B69C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748135993;
	bh=n/78gyjCJ+Ym/UK6ObcKZFasU8sftBh251CEV6bSVOQ=;
	h=To:Subject:From:Date:From;
	b=KH05z3ZPCOHdte3Ftrh9Uf5D4CI+LhX3uDvNygHOp3BRkWdNW14zmiVdBhJhUFxWo
	 oB/OJyPU5+JO4y3a0N152fVLtXe527vrgfHxKkxTfBtVJ9r0v7Dda2+IaRTDxTBK3H
	 QXKz30tFW+xz0w9sVshDvtCDd7BEqiepb/01WOD+cdCt0ZNCwqX/5IMTiHT0BMcSmb
	 DMBkBvb5wfYUrwRq6AjUls/M/1m3SH0sQyPBkwfRtJIMGXs4bkauMh5KvrU4rO5VcS
	 N9rW3qQfaK5Q4g7HY8AqkDLGuFOkbPwA1P6AdaakXBzjkUdwuI5r/8iZYZ2g9OaC4C
	 mVPE3SS5mU4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F4C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813599357.28606.15354331346754986381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e082274ef88b11a54abaa3d04aeec98bca3f267acd15d6c1896d6b571e65df
Date: Sun, 25 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748135993
