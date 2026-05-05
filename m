Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA213B58C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777949254; cv=none; b=n+89FDgjr+Yuzn7Bx2aHelzI0mnwEaVZ526L4UnCfyWXv2IKmiK6301C7RfMfoghEk3w1dEiE+yAuSRD6pkVad3Lg8dHQ4nYfZVFPImFcqDUm+M1aWf9IEBsZUWqcQuF8iO67UxdM3UR90ptyweJqjFCvKDKh09VaH86vCUP04M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777949254; c=relaxed/simple;
	bh=K7CLfYu/8hNbYhY2o2Lia8hdHRISV2OYk2BQ1O9NGJM=;
	h=To:Subject:From:Message-Id:Date; b=hFySa6PiFz7sJbZ4Ab68IKCP7I/jWFfH+MWx8VfSM5qIP7+8dNSYWxV393Yuc7a+2OeoiOIPQsmRR/2ZznlIN4hzJZxf3pdwEBLlItaKhF6GGqf6hncjkb0RA04G0gRG0n4J/NeSL3Za94VN+3pywp7lw6o0M8Ns+DWU0B4xhWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEg3BDv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEg3BDv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C3BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777949253;
	bh=K7CLfYu/8hNbYhY2o2Lia8hdHRISV2OYk2BQ1O9NGJM=;
	h=To:Subject:From:Date:From;
	b=aEg3BDv7UiMy4DL7kyMojNhUu4suTDbXOdTDKerbjL0QLXHikUuwBYBNmpCXGdFCC
	 CvbhxXsn6OQfe3ECw3CjbTCXLJJzB2h1m5Wkt+aBEChimKpG+cNHjhxbwcLtjULZ1J
	 kCs996QwpAoqb+sGwXUhSQ9cVp3AQMrVeugSq7kxiUIMeCRTPUWNvYQYwJYZhHzchY
	 Jq4kXYBLV9ts/xWS9fK+vj7zMo9LcR76JIRPF6hIUMaYC2JuNIn+kmU5Vs8sGrhvve
	 OorPoh2Wfwo+eAhWXGLyB0x6q+z3Wcvubd3fe18AkzanROpzu6AADqe9IXtDS8nkPs
	 zvt+Yo/jftKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA61CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794925368.8034.2379868110175050236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1040b36fc9c342b1ae1b2a94de0dc707995c09c97abdaa0639332d4d43106b2
Date: Tue, 05 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777949253
