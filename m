Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199903FD156
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774543494; cv=none; b=WRZG/Q+fOLhFnOES2aIHK+r8MHrTef2he6K0TgJTpB549J49ikXYDlpqnRrkCwYHs+Q0JQufJ1TaVU6H5qK84EyIeAhnZnSBM24LAV0QzSbm7hx/tnucNExbMrPafIX0AvUyOb9pLmfhgULDLgJX8Y9q2mBqo96rzq218dQ4kbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774543494; c=relaxed/simple;
	bh=3kYbRp1krf3WJcTVq+uHxPs0YfOuVivfaofZLv2llFo=;
	h=To:Subject:From:Message-Id:Date; b=idpAnsvDTo2ZS6i5vCfwRb9ibdXKFAAarmL545e2+hIOaimvlDFDK2k5sKCGncCMoMEEdA6vVENtoIJdRWRoeAAIPekHl7+PInKPZ1V1fHzyZ7Ol8t17UCtsP0mhrlWE3TAOSD7r1bicDTdoc4iiC43TKrXPypkLOZDS4+P6Yh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7Joup25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7Joup25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4331C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774543493;
	bh=3kYbRp1krf3WJcTVq+uHxPs0YfOuVivfaofZLv2llFo=;
	h=To:Subject:From:Date:From;
	b=Z7Joup25ZO4XZi61WsIMBnPFckTZ9Bk6AKq+4vCPicuHKBF9CI+RU0nZEGLekIdtm
	 Fm35h9VCjECcBwmoA56j3SRKy5CxZM5xO4uNOj65hUZv0zILVpZYmv8eNx34AaPsKJ
	 dLRglPHI01DGBvjpSbBacgm1wyyskqbSy8LNpkWIBYaD+5/DQ/1iOZPm2OnxuIOLD4
	 5yNNtY8heA6TCreb8gcrGgIrhWFSPIkxijvrLj0R1iLzhLmFMEx0tczeGmnqK7zwAN
	 k1cR+hUfuRyLbMIE84mnmlL1i2goQGiPwemm/7SJnKJ6mmkH6ZEWKNbAnobE6OLdVc
	 N2/GQ+rVPYlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136410A88E5
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454349358.19952.13876553362559354450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a696522cc594dda2163ccb32649eecceea1cb0900ff71b4b91fc50e59e2906a
Date: Thu, 26 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774543493
