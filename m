Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414127081C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742620194; cv=none; b=EkuMEqhwJhpMi02/9aoyrXKeZ0uUc+h6Rq7aRP0qOkZcBFRvb078O2sOjI4TxREt2oylzS5S6tBEODWpRUQ301kBX0jdH5BVOwVZb6jRJ/p5NeFYygoDlQGlH42nJNC7aXGN4/687XV7+YQnYX50bkLPFAZcoiMvEKiQQJJ28mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742620194; c=relaxed/simple;
	bh=bKGiV95RgnI6BNluiH02X5t1V2o5A2vfDN7irctss2U=;
	h=To:Subject:From:Message-Id:Date; b=DTcgfaaMCYBsgPaHPkrBEsnZnGdeeP2Ec4cJ5Wua3uHFo8MP0et0n8YlCHpRSERZdCKrAwhnVj5mWY6hjkjZQBwcoVKuw8KgcZW0LB5wN2PR2o4WmksxqauZuz4VqMyOypU7UmG/hNyw0jYzRZ2+4zw6jQA2VoorsC19R0NQJow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjFUfivS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjFUfivS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742620193;
	bh=bKGiV95RgnI6BNluiH02X5t1V2o5A2vfDN7irctss2U=;
	h=To:Subject:From:Date:From;
	b=BjFUfivSxjizZ1QpmQ5GOscYrCz+favtaz3hs8JOOE/sMZslpk6UxWrLwGnIj16l9
	 ovQd+aOL66QX0AeyviB4phrr6c4KpcsnFE1/mCBPiWtvYigiLue/eY5GEbClVOBZzI
	 UpMnVHXdbavSY7G1Ig8mxpheDVNwm+EHUHV/ffQaEWkteGYLgexQCzpnoUeLct6684
	 ItqvFnr0lfPXl7LqxjerM/mpWW78I/4MyRyonRMjrBVP94pithbFec6wnMnb+LNmCB
	 FXDyERA6l8fIJ5kP7zzDmgwmCIIBfYmGMqjbCr55Rw8xxhrCpyc0WNeMxd2oX+BfuS
	 hiTfHsZV+W2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4AFC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262019360.30914.10248681894251720265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120ef91ac56fde6a4fe87da9bcea23874b2aeb351cf17eb1eab275bbbf13788a
Date: Sat, 22 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742620193
