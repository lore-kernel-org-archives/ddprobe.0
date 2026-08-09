Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28103016E0
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786299634; cv=none; b=fyuuY3VkjtfAPl1PDbn7RYMPNhGQdgeEpVx3Epdn44jOf8TttDsu7yVUkOU7+WDp12p/SsZ8izMhjzB4kJFFbCu0SIRGUOB2wHwX5IKhYT85anp/erN51Ls/WML2ad6jJWWRxhHmb01CjOMeLMwbK+8Em5sr6K6KH1AcE/6M8Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786299634; c=relaxed/simple;
	bh=NB7OCKtwBBDe57miILFJrrHe4YwH1vjg4lz4fJVAQCc=;
	h=To:Subject:From:Message-Id:Date; b=tweOk2BTOdznkAQrUUjOr4G7RHDt6kILrjYkzIZV+/q4KqUFWDWwflzEa8jip3WSiNlcJIYg+EFKPT+2fATvNZHF+bSq+FDha18p7BvfebOqnc9mEL1bKr3bKdseqUAbj2SbVBMogMQ4O/Gx1/9yWjuHYam9aUbNzi1sdYYrp8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V82nulSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V82nulSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC67C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786299633;
	bh=NB7OCKtwBBDe57miILFJrrHe4YwH1vjg4lz4fJVAQCc=;
	h=To:Subject:From:Date:From;
	b=V82nulSCIa9poUL7nAaZRNXO8mds3YqS5bzr8xDUKt/pU4w4TGttSOb+70l9tAdTb
	 ENFd2unM6zXgXmjg8tjWd7ps/lCeo8KkqXsdjo/40EHDBPUAqJzRfegrUKpmWmpXNv
	 UfvbADlV7AKR12RfUxZylacSlIdvZoj7upQ5ya/bDGswYHDt5xoCGOz7y0Y6XBXnZV
	 vzPPSn5Itgo66If3kgtfeSdNXZRy3XzMHJS4pm3XhSwMsFX3jDHDLEmBNx4hGZq7JZ
	 dU9shkSYa2PfSzaNJ/II682yYFKAk1VRFlPMVLav0Z+gB8YM55TRPoRB9/7SrJwaHu
	 5p0wbX7ZYBtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C0BC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629963373.16507.2535238819296202852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d136675d502b08597fe3a903084615a8396d558677b6555414cb1de1373c72
Date: Sun, 09 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786299633
