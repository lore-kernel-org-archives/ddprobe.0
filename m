Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348C01F92A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751193594; cv=none; b=AZUgsh00rG4xUdhZqkoA4lT5rLBEfEuCwn63Xx+IHXOjfHwh8+V6c34SC+QZG9t7DHE3JadiUfJToszjP7nAdXLojjtBNvWQuhlhf9+1FSpXYvHOHMmKOUMm7EdyomwCTD+wfnvmYzKB7lRlAA67x1iGVFyTFsbbPboMPntUKaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751193594; c=relaxed/simple;
	bh=1o42zAcR1qQbmpMxbVylxmbCGYZFb8VTQsOSd8B6t8w=;
	h=To:Subject:From:Message-Id:Date; b=hY166guCkiBBUV2ifi6QZMd0a/BofPDqNEkTJn+ZfIK65Il3XYj6J9MZkqWuCKr36zlCfBVyLWu6OBt96ZQMnsXPKMyrZMrZe27JK7qGwqP24rRHx5Tz3CROgdx93QBS7L2Dv2BtED04dHSCsQd+4MhiSpZ0AWQ4xf2/9gUIa4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGm27+UU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGm27+UU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A06C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751193593;
	bh=1o42zAcR1qQbmpMxbVylxmbCGYZFb8VTQsOSd8B6t8w=;
	h=To:Subject:From:Date:From;
	b=gGm27+UUCmZG2x0oIkCJyDyKSuLWNdLdJYcb/YeawGgV1UkBaimqGFZ/IF9QVpDUy
	 hjB9ECDg5+4FcEyO3S62hz7MPy/bzQNeN5b2VjUnngeOe4Is5v39yAQLgdfsecHTJt
	 8N8EDh0R+gEyfH47unQBXys/5vDhErh8/TWp/NWFwOgrNPkpcXZ39F2BFqBzM+7IYH
	 5MZtZVDHjblF+VIrtLB9AsAcy/XXKDA+dSB1nIQZAE7SLrL6cVZnTnHJTilI63JN3r
	 CJTUOpAUAFmoL7Gun6/dHQIbbTzWaas46YaK9JqsDLrBIBiY7rnF35Saaoe+XMpFmH
	 Ee+n0BBAi1Z3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E726C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119359357.9888.2317784090461961491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098853543c37555f5ff59ad90b31b98c3f8a237d47eb6a0cf441dc2121b80f3e
Date: Sun, 29 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751193593
