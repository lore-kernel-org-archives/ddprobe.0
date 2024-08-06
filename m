Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EBD1C461B
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722948954; cv=none; b=m3ivBLAphQXB0L6s2yGJuQmt2yflBq8Zg6opi9aUp15E7MDlnPRzWBsjJU1qWos7LCDRn+no8/qopTde61GsgPG1nXWVHLw1TNkcjGXBhqQYc5cA3b32lUM349bkNTRMxQEJh0BB0zg3C2vD1FaI9p3Bbepp/fF8Yyg4CQMgyTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722948954; c=relaxed/simple;
	bh=LbWYrIV397AkFq3fGljF3w7wG0Xa6heHvxRdsbj8m0Y=;
	h=To:Subject:From:Message-Id:Date; b=qWXfA8IrGmY48T1tjC49C2B5+CAaVj9DUxhGCnnyqMLvu2ygaV6SK9cK9PP5oUMguLm1+dz/+nvowA6tVt76VPsccmJiXOcrtX8GrCaIaBfc+AeTAJNYUZ5B/9OVbs590Y2vGTVmiPHXwHFLPkGaBI+PK/HLGBiNGWyP2p4te7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R61/VG7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R61/VG7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53C4C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722948953;
	bh=LbWYrIV397AkFq3fGljF3w7wG0Xa6heHvxRdsbj8m0Y=;
	h=To:Subject:From:Date:From;
	b=R61/VG7fEkxTu8hjQcovwwO6j5rERt/6kB5gLDknN2rjBJjRpL3GPKo7fUydHrreS
	 RBtqPYBA0sPH7vpBt7hwGsyxobNYt2528eRdyPbQRWHKM9GjZOXUNKTtz/gyja9n7P
	 a4ohPckf7nk7Hbrt/aO1GR0ljgbhcMHnCYIBUFuV1wPrGwvpffmMyPumsQvQQre/1K
	 2wKxc3rMhWzG6nbD0fMFXMoQOtGLCBmiCV08XI8V/kU8tPYbiPWIon2ER9YXrBhZlb
	 JIUDVr7G1j2NW9AN9FK2imVAKrf8yD+HcACxj1HdTuc07Q3utaid73WcnBqoUgT1ki
	 yi5v4KxCWgEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D830C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294895363.11647.8603322754124688487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ead97328f6fc93b406a4bedccd3101e675df2771b98965e2726a1b5c017ae7c
Date: Tue, 06 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722948953
