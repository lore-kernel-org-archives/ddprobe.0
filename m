Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599FA243964
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782966514; cv=none; b=WzjXwaDLkTk7FO/tzSNgpfH4GlicVnhGHHP/O4x4BRtxCEI139cx1GQ+sCJ886g0ag7NlmSeYzAWKVp3Td0z04J9B8hnucQQJ++x//wWARt3QDsvsBlUGVWJTgycT3rEyJO9IGz0sB89mz3GE29SwzEjxKaj11Vl8UDDMFJWXAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782966514; c=relaxed/simple;
	bh=FyP8tm2zY/RT4omVOTbAsIsmGpqGAXZWYxi7pui77Zk=;
	h=To:Subject:From:Message-Id:Date; b=G4j14nhHeSXAYTS3+t+PvbfPofLn5jK8wZw020q8pfcZlEKVRCs25oLSvmvpMO2o3dGMUJ8INCdnRGAUcSoWH6MRGkoCFkfrSagPSbQp1kWpyr1a12agXGdgGpgMJbrpCVophxZZ0JwhMvbQ/pfc/h/T/Pgr+/W+COxSptm7X5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BonNSvWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BonNSvWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BF7C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782966513;
	bh=FyP8tm2zY/RT4omVOTbAsIsmGpqGAXZWYxi7pui77Zk=;
	h=To:Subject:From:Date:From;
	b=BonNSvWDa3a7v5C9vQ8NN0d853gHkzbMhqTrdChuh6SnsS9mUXr4LxOjX7O6lnxdV
	 pBD11UdJEZj2VMSCMv2tTRfrv5Ov+8Pi3xLvO29THLqLpdtqd8EufdTNB+4toTDrIo
	 APFJxaV5Y0ATxTW5ylm+eSfgyzmEG9HOjGrcTTdrstcbJc/opvJWfxZo2AZgwffxYZ
	 X8IufvBymMAZWJRb4drrTtQNh+T3+RdPwRprK9j2UAFSQrJbmh1y4YxNN/oeJ/YmAQ
	 cQeJbrS7UdgOeLx6y34BYxJJwLQxcMJx/aHItq7qtCQQIpSq1VdvJYYXQ2ueQTYOQt
	 MPYcjTsD+4nsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF779C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296651368.15716.7179072580238893112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4041faaa9bec1ae760ecf0ce03a2af173d248079857678c026f3ecac8abdf9
Date: Thu, 02 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782966513
