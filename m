Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B972D23B2
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755066594; cv=none; b=XzSLEblz8uD5kd2ubX9PenDjJW1lK+OaI5GrN5AvUvOa2o0MxqyzI6eaILjruVx1moUSkSE0XNUUlW2uxktOcvSD1OeVh84gK2HpLVxpeoVyT27vq2ukxbNxMhcm1sJfJGxCMrUB+SNNL/XYzSmhfB1+B2HhJEktQ6Znw085Elc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755066594; c=relaxed/simple;
	bh=cgA2GkSVDrIfB55TTB/U0s8C7G6FI6Vz1yd/5aUZdmM=;
	h=To:Subject:From:Message-Id:Date; b=KrLOX2xBwg7damaC1lKXPGJ6B86ORoBqNGN9IsR/+EB2MLZ8BQc4BUdEpn58tATJCTTDvzXq1AE98dZ7Ov43YgaC+MXz3F4lEOXI7XzLBNdkJkuGZFfsJdhHaJDERtSqqNOYfqDVkGNRCH3gR9MaHYJWHDWpJgJMS5qCYpZ/LJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGulUTpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGulUTpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DAC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755066593;
	bh=cgA2GkSVDrIfB55TTB/U0s8C7G6FI6Vz1yd/5aUZdmM=;
	h=To:Subject:From:Date:From;
	b=ZGulUTpOSP+hFKoopSuy1i4xoycp6pwux4LB7szORX267VmTYejNq9AmBT1YSQpmv
	 +IB000fXIV4Eo3EXEJEOkhiKtsfg3CTn1wrGSCeeMJgjg2KuZVcDzkVE8MHLKzZo2X
	 s1cJj6vNmtqm1dyVvFlA9I83tm7+64FgtxNAVNV1laxwVQ/SFeOx5hUZ85yCAx4J3X
	 d8Pwsi+GOXjk86JXG6p4xM5GBcX0hUQ2y6dmy2+bEfNKcIObqTixABtBsD8AYYbd1s
	 mH3Grci+2j4goJyBZNcFSWifmTz6+ygPZEFQDdhz3OUKNGn0rj1KNLKfjEsq+Cew48
	 CRlL3PsstyFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA59CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506659357.28065.12389790318105889035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26e9af74ba9e433bec74743d6e914f6ea8bf7c461d42ad5d7400d49696b19dc
Date: Wed, 13 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755066593
