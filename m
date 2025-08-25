Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DDB2FC863
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756134595; cv=none; b=kjFflOIjVinnPepEtAOvq22mmtG1aMk5voTHrjCLHP/+HWK+TaR1liGA7eXrFHdCit32y37gXgsvvBQXhzf7uNxAS9rsh61SVSsNhsRh+kmVoyTFELN8+jgmnzy8M1OCPyUMj6MZl4nS3WwfhRZfsaetCFFsRF+R5K+gxE0+VjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756134595; c=relaxed/simple;
	bh=bXmFhRIKyZ7sqz1SGKF00PCC70G0VMkotqjZTk3HwtM=;
	h=To:Subject:From:Message-Id:Date; b=ooxt32kGmHWMpO5ndRbAErtlea7q02nSZJ8b0iX6E5E4oe/MJfhqJEKvQFRgrw6w5YVWmr8E/vJPi4t0vwO7xuJFEbQgFLNtxOQYVrSktQwn74S0Vxs2qxK5hKR4xMOyBw3jHmtUZ88Dt9y2deDn/5M9MEApXctOb/b5RIpNFZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4w0m+2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4w0m+2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2EEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756134593;
	bh=bXmFhRIKyZ7sqz1SGKF00PCC70G0VMkotqjZTk3HwtM=;
	h=To:Subject:From:Date:From;
	b=A4w0m+2nJvCr9cQaVko+LR3B9QfarF/xxb82dg9BBo7VzNMeWf12LtBsmgElWH/O+
	 uE2eytDivrKCofwB1EeS4tAxHJbYQQ3aoI1nQneQQimXYQCSLeezj3rF5eKkZfBkYL
	 Fyi8tl6UtJgZ85wLDBCliOiaVNOAApgrh/IDGW2AgasTXD6vRJm3o0MhPH0e84jXQQ
	 5wh7AkwMRR7MaRZK0eIWgJoXYsyZnGVu+cEnkOp6quSjeAPXmVcODcyIqIioOr8V5Y
	 pYlaf7uPS9E8EgIHrCy+kAnus5vObDSi0prN0+iTZRHSwOPlezW77aNn6BiIdpwlni
	 PZY67CGbSbMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC29CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613459357.13761.5530141144599426058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31774a144392af555dd12d5c7007e13c5f71cae9dfe825df7512742e4aa91fe6
Date: Mon, 25 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756134593
