Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7753559F8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782691114; cv=none; b=QBOmsrNMDr8yjNn5mZ92Y7sXgmr5ldV4gKM+Dxu90clHjz6AYaz4koKillv17Qi2EpNoHPyGGnMgT6pSgeJrKww8mbPbQhBhTG3ihz9BnjgB+jcx0bfC/QVA60rEJ1uWJWl3b7lbvuHf69bFfvyE5T7a3WlJTRr4HcLSWFAIhWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782691114; c=relaxed/simple;
	bh=S9zfDW0XWUUD0cECwNdiTuv5eu9n0Tjgdrsb6bRy3Bw=;
	h=To:Subject:From:Message-Id:Date; b=UsdNcgZJR8jQwBbcR5Kjtk9cGqwiOqNzzOmZGMq1k6kirp0Nl0/zO1PdOSxHMAFWWPjPL6QB/mw5QNUJMiCDOniZQLwOewgvA+DKb2clpeK9RiQqEng9dSN2blDOomHzxJJebScA6WRpIEoHa8hmjZKNQLQMbUiY5QpAvmoNl3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkoYyUz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkoYyUz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B7DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782691113;
	bh=S9zfDW0XWUUD0cECwNdiTuv5eu9n0Tjgdrsb6bRy3Bw=;
	h=To:Subject:From:Date:From;
	b=kkoYyUz6HA+hqPq+KkIrrfcLWaGYOFEoMUnvKmb/8lfkLboBbxv3NAsyawERU33sz
	 Q41vMxKaayxe7K3bjOa7G3vvo9MlKmHcjV+AvxKbnNWfBSnSqh5/PzLfSMuIOkgyzY
	 aEvnYH2g1Rf1CPSYcw63RQFs1av9oaLOT8E987A1hVJtuWbYM4ubi6AP0Hem6loTtO
	 GIxHsPVXyP2Xr9liHDGLyvLLBmpVJnYlKbTHdYgHVWD/6w0UuiGFrZQSM9iw6eBZaf
	 3qccE8NRM9C0N1e/s0tAu14ugGp/u+A/aJt4f6ztbS+CmJKF8Izgojqx9PkYWX4v0X
	 LzFAVJlghL9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8459C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269111368.23862.17349680435877484906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470d31a244a9fb7078ac5fcc4cfe3b05882ae536a870d95c22f38a29b0b569ee
Date: Sun, 28 Jun 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782691113
