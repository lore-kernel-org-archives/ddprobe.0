Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F06D2C21EE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781230594; cv=none; b=gNAZbkU2qIPXHK7O1dcH0ykTXJgaQp4EgsJI8bXlBSmaOv9ie1ijWufixZBNCWpy4bKYYmKsg93z3NOiR+6Gsi/gO7PTz+KXAt8mBLmz/hVzqWalcgM7FTsehxeptlRrOr46CFCw8SCMUxDQjX2e9vkwL8lPga0KPNFw+jc63tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781230594; c=relaxed/simple;
	bh=bWg5uBFlh8e55VdwAd/+uEsG5J26425IOXcavqXHlWk=;
	h=To:Subject:From:Message-Id:Date; b=QAIJj1inVEFc1lcNV4LDspvFfkDngmQ4EdL3PYgCV3eAKa2CrIhxnfR+657W7VsWXH5Ek8W6caADtvN/0D0It1CcGTK3askHbf9T0+5uC2UjerEEUhdRCfs6gZd/uRUJ2dhh0ItGTCEk8DL6KKI9erRcBSoDMSW/ml2bNWiyEMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+reBiVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+reBiVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2243C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781230593;
	bh=bWg5uBFlh8e55VdwAd/+uEsG5J26425IOXcavqXHlWk=;
	h=To:Subject:From:Date:From;
	b=A+reBiVRZiKHUf2miy1v4CDyV9bLmYXlC25GEfuX8EuXTP3WgdB/slrlxLPDDOEbA
	 +j8Kj9Kj0BINM1JbCRmgtCd3KvtDzwwGnImEjU6BVZHb7SlWTFyY4KNSs0rZ/hwihi
	 Q5jSTyC4RXb7gMVx0WiywzmtpgRKBWUNhwWO05O2SrJ3+TE37329xuy0GWkwmIJgsm
	 sG5B900hD/hZWrlJzut64Nt6X7Sv/83ylGR9kLBGmWdZCKcNTpnECVABvDtPxOv1gx
	 N5R5vZvIqQySHnThmtDQJYnaW7e9nIDLIj1GuviT9w+xvbXm0vNymPaO9UbpHdDYwJ
	 TPyyTcnxRm7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FA3CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123059370.19261.12292324848531420205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47f23ce31de772f328eb78f4c84a29bf36ac836f9cff25b4d2ba52ba618296d
Date: Fri, 12 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781230593
