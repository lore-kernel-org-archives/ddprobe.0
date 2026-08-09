Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE691E492D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786260634; cv=none; b=Wu5TOx3+L2a1aEu6aLvhtjDf2PhjZJqhF5QoipZNW3URkMU0B21+zq1QL8xRI9uCBKgOMuLPf3Jk0JvsX8tXiWbsLyiO2DuAnK0Ii3TLSejtRMYCB+oVaGNV+Ng2PSKYGU8ZL5hBiNohqLa7kLnJqNpYH0HegL8AQPyHTeQPEA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786260634; c=relaxed/simple;
	bh=rH+335fWCOjemCQoCY+NDUqzPf5rHv2wY47BpFKsJl0=;
	h=To:Subject:From:Message-Id:Date; b=dUJiE9bT57v/KW4aQZzPpQkpLCn0x886RXP0cjlbFFDDaE/9OvHKlAjDUu2SdNbVYlYtJUOdhOk9Fn2sCEMwXmkkzQYKpJosPBeKeFv6FUYF6/4k6u2xvXKmEHeUN3vhLNKFbv9/AKEFlfX22M7S9f3QfXFP2LRCNlhffNNAXI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ8jQRZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ8jQRZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9139C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786260633;
	bh=rH+335fWCOjemCQoCY+NDUqzPf5rHv2wY47BpFKsJl0=;
	h=To:Subject:From:Date:From;
	b=lQ8jQRZlyRLcKkxAsHcf0aA62shPC4gaFuOr+KgIdx/gZODnWM154pduitggAqLUr
	 0sC9BCInLAF2u82heP3wkXX0UIWwAxyhU3nYB9h+PT9jqUo/0OVvOTIMODEperuvoi
	 PcT3E2wIrhB2Gb9GgOHYHkhq2uH1MhLmQKE5SnPqA2gUyzqth9jJzKmSPfD6ikU32v
	 W7CE7aSMkN3YGW6Cf/N1dwYzRrOr7AinGNZMgWH4vRpoJVCRhGsd8Rzqq7d3wyr43q
	 JTET5lIO9kIXYVH8unsxBm0Dhe0uqOAUE5V2Cf4hoQkeCuDpsaH2Ndme8b4o1uQv6Z
	 UBsAnnyiFLYMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2510C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626063369.31437.2611015211821874223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7864c0506950b96d70d5c299e6df1039f9a562b7a9d7ee9a0d35d91ec2f5b74d
Date: Sun, 09 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786260633
