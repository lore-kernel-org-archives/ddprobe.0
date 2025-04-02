Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5418A93F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619794; cv=none; b=BTDa9F10J9K4F96GsKPYT8GmOqVG+kiLSa5kK6epSf2jqHxoX5qnoLsHGjNdwh9hmoQwCND2QEvvhCxLNUKBWKyT2e3fMIC7YRMPkFiFkXQSTNoUty85wSmQwog+TvTNDuxMNTlLnUltyhGmJngbFOd+d1Cf2WUC/0d5BkUrc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619794; c=relaxed/simple;
	bh=smFP/TjBYZXOQxUZtepCfZ4ElTksweQDiv5umiHGUrw=;
	h=To:Subject:From:Message-Id:Date; b=Dq6tNArDUgGw16tgl6WEtb1DXobkMX4Wp2zfBReX7inAXdoaMoQHbmGbJIri2EeddK5dK2R/+ekE6LI1lBLOn6EyroRIuAixzDhNz4HgGs3Xyz1A2Zw3Bjz1zuDYKik1wBBfCDJNw3FpdWVoYO4EEzdv5lLT7JXr/LZBq1aylTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1Jhyo/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1Jhyo/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A95C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743619793;
	bh=smFP/TjBYZXOQxUZtepCfZ4ElTksweQDiv5umiHGUrw=;
	h=To:Subject:From:Date:From;
	b=R1Jhyo/0dmkp2nwMQXzoLCxWS2+ofxKz8zcKmvm4vfNGgbPzljnyBG/mM21ee+srV
	 VZY0XMpeERR2TcPCoL7YTGSm0P8dviWGPKxOxnAa8tV8N1Q70uUmFQ2xNSjtj3aT75
	 7ryd2xdsjMl8wJwUpU87GhPnekljZLKLoFjKa2LBByDlTmKASVv6D1We8meWbFRrHk
	 YTpjeVtpixjBXHkAyJIJQja5aL7VMqKIxvguBbeVeHTm7+PceOFhveOGLMoreZqGRN
	 cEa+M3wFsFA10ESw4DpNHBUcAweedjF6Iq4jIT+35S1AVu3z7bT5FjxIBCQnka8DYb
	 F8vra7xUwu++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E268C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361979363.28109.5010842530427281171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675d8769611ef7e29a2b7f03e56cdb90ff349f471bea8f952d889efc0c16f3c5
Date: Wed, 02 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743619793
