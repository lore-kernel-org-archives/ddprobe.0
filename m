Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BC0202F71
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743009594; cv=none; b=RXruSy/A7sIejWuj1pRu0yhMX+/VKJuA73hrKxopwOUtlZIhS7sJk4OYzOUsfW0Uc8GCViFLGQdf8vkGb4JrTd23B7HRTiwDofk/C+nQ8hAxBtSouOvmfdWXd2VAwj17mdA+sN76BCzcmLRImnA0Dtxx/eC0s82KVWqGR1e/lBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743009594; c=relaxed/simple;
	bh=1bA7K+VC41ALEQCUlz/0PLc7R+mjRlQxkiFwTKGqBSg=;
	h=To:Subject:From:Message-Id:Date; b=Xe3gOEapB5zw9GSYHuB+q3mjL5GwhhOrFWMKImYrKWA4UB2pxC3ctqSk+m1G3ORfUjtWOUdJTMB5xC/WR06UfcmuAafQN9zPXNmXyoERVxv1yn7wByVRiuZ5FSmsdsoaO7VqX6w9c6M6ifNS23Dxe3QbZ3KUe2D331xmg4b8F8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaxN7+yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaxN7+yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8160C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743009593;
	bh=1bA7K+VC41ALEQCUlz/0PLc7R+mjRlQxkiFwTKGqBSg=;
	h=To:Subject:From:Date:From;
	b=TaxN7+yMX0t9+eJWB6/MXA4AVZJ4gbys2LE5xq+mj6lDPjPwLtcFmHfMc2WELQbyX
	 XkDW9zHyoNX3jnE8HeVulxSjDVWDwE6JieSbDf2FpSpi1DXrWk1uHe99UfO3EpMJLe
	 OWuL6G1/PDvGuyOLY2X6i/yEPBe3GYlsEEzOWouxUv+prW1AbTqwxkebBKqsr4Duee
	 4XycMl2qrEYLfrVhE7l0nYJtOEbAPj8xHTUEI8EsMZbV93PY60MnD6ZETf9d5Qj6hZ
	 rJXRv9pHQV40yXnVsBMfErN46jbLQLH3CVJGqUxvCXnsNPDc5Y2eKJCF+xsBEkjix0
	 Y8gifvEamuSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A054CC3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300959364.9575.6511599086060599064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6205ba71e9a4175c4b66589a8b7c922c86a00ff065c567fdfda2fa7c0ef869a1
Date: Wed, 26 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743009593
