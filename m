Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65721CC68
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762330194; cv=none; b=HRXJ+45+7CONAqRMcDwt6oECtNK8nrkhz3kFmDth1QJ0j8yhgqaQiuAfXg73n4ptCPbxTg4Y4nJZAN6ufJ8iUJgRFvAsFKHN3pvQn99jIeMBLTTuhagad6zn1W/Hat0cXaPuNz03Tr8aEo1TppV4lVWrHB94nBNolSsWJmC57ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762330194; c=relaxed/simple;
	bh=PMMATDolw18pY/jRYaZBHfgvtpIcSttBgqgk+XQhOxY=;
	h=To:Subject:From:Message-Id:Date; b=dlFZcoLQeEtjZwbj0KOI7EXh2tpZe1MA+dS3RK9kqF2ufkWCdUIJ8fUFQiJqgFVO/MnqjptHaQFpFFeefRdCJ+yYKELfRrAcKDuhoQrGpDTJFKiHNpjh+0Cx/njpKQV3Ccfs/U5so3+0cfdDglitH1eW6o1Vg4DfBkRjxlag0kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTiNiT4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTiNiT4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE343C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762330193;
	bh=PMMATDolw18pY/jRYaZBHfgvtpIcSttBgqgk+XQhOxY=;
	h=To:Subject:From:Date:From;
	b=bTiNiT4T1DBZDjPb3XweH7vigNGQJ8Kf5BCvvXEas9ECXrqNwv9HjCMvd592+0YIb
	 1pCBzhaP194rxBUE4vhLWIEBwStkslsGPL2IR5W/5Sm2FlXQX6KsXeY6Sip/2h0RGh
	 97WBc7/MLUX18sNRzCMD3T2bG2Hv/dVRxZSldO417rVAegwcyl2ctl2Rkwal9mkaKL
	 gAEJGrnPXQ9yPXua4F4aFk15Tk/oceiTcJ2W9UzieX53RVoHqTRF38OBAOPlq8mFY1
	 brEAsLIQyO/vXGW/XYX+O2mLbtv3kJn2vSUOYZlgUe67HlZVHVS5lqxpfx9JByqhVa
	 rxp3VCJUjLATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDC3CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233019363.5329.13797988039441768954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095c965ff88abe91f1dfa069d4a61c567f453749f1deb91c1ec15e9b640e78cf
Date: Wed, 05 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762330193
