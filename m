Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D22B279358
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776011854; cv=none; b=tq+ttrF+dOM04Grk1V8F66SFUEXQEHiBfP/mnBlR6S4FMjrSpLx5IDpPSfJdaWG/m7jZOSs6PZxi9E2iaBmia5WgLBbp51GVRHWJGpgW9IDKRVhXFCEjSZsBHR1VDsMiGcFhrm1PLYPkGHXde/4XjsM2vH6BJ+36QSJUA3n8leM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776011854; c=relaxed/simple;
	bh=W1bwV695uNZZ5Q/sHsz3mi2p+w69Q/X0GzGIUEkKrn4=;
	h=To:Subject:From:Message-Id:Date; b=NFL5lWzkIxO0I54fGDGRuD0rjuG2PEfjyWt5qhfL6UqIoAXxc+MNJPOdmAg8Op6yVyEJf7fjZOk4RIsqR3PBtxXa/y7HHKC8ZC3ZDeNMEEF6fre8kzYZ5kr+YUqz8utN1zS4g/oVfdYpqb0DNDSmJTJoUM4t/hzDcpZrX0ivhLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i53t0Zg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i53t0Zg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B959DC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776011853;
	bh=W1bwV695uNZZ5Q/sHsz3mi2p+w69Q/X0GzGIUEkKrn4=;
	h=To:Subject:From:Date:From;
	b=i53t0Zg8TNavqkRS7/12/WiBEW9I4FX4u7Z7b3Mi1RnSgAaV3GTCDxqMtCGAuPo1Q
	 kj8SwIM9oYqgDxzQEDpKDcpjyvSPigx+aqWXF0XuQ48kP70h0xHKfQ+EkfmOJewY64
	 waAfwtZGkMtNPDkbqvuGqVCOQVS5DVhjaSRspbrxXqsq50AFMH9ytPwuL9lmrimLTg
	 boyS/OSEdpG5GBBnK9Q33xwCRkqrUpMzgd5YjTy10kxspjK4ISBGCnAkkZLyR4DYIh
	 kb3j57sEGdop5rgsunc5fUEarc77V5iDd07AvVT3BpOPGTDf8wPC5cpBPMNyjYhp5r
	 0YuNhp55O4O/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB687E937EC
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601185369.4474.11559853806699965750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdcb5ad805574f4d2fad799d09c4884d65aafb5ce5d8493142e3d2e0af725d7
Date: Sun, 12 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776011853
