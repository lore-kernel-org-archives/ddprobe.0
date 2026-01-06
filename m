Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0676C7083C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767659634; cv=none; b=swdm8ZjgBUBevTI0CaDKvASN3aiyC1mRgiCufcsKqSGV/qj4daq2TQhZ+SkzXAxm/CB/KTpB64DspT07FF9/ViEcxNxAYY003T6Iem3lGFFZLmJpANQn+ZNtwcuOOlyS92ZPJMab0iUyBMsOG/Swd0/DkHqKSnKnS8uKNfn6M3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767659634; c=relaxed/simple;
	bh=dTQa9BHw2G/mrjS7aWPpWaGUhh7C2f2bRZD75EoJWTM=;
	h=To:Subject:From:Message-Id:Date; b=FjIFySaaYPTjW0Ge845ep/3rTDHtRTzCMH18cvxLgd/DWI4lo07MJYg3Kz3ZsBo9GgtvliPw7OMdLblW9vuw3sRqMxH+j/A4qWS1wagcJLXYKS7CloCCdpZM+92NF2KzMIlzohUpG6B/PjZVUyZhzMUCDRBCtDUhr8qsElIRro8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRFgYY3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRFgYY3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1062C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767659633;
	bh=dTQa9BHw2G/mrjS7aWPpWaGUhh7C2f2bRZD75EoJWTM=;
	h=To:Subject:From:Date:From;
	b=fRFgYY3aeMsJXtsFVPNDax1ziwqm+2UBDLanrnunHTZeCn8d0/0azi9lHTahISfjD
	 jBeREqTL1JObwc//uxOthkdhk0l4r4gx1ity6PIp2e/ZHEASrQrkhKRUBeEPNeAoUB
	 CQ0EZqYCxwEbRE+Od9TZoDxuBcLJXHl90XuiEKa/LtnqSDs0k5PTZIEnt0PKUPq6xn
	 JiqcFYtLPu5iLptb7zx01hCrMTPinQ7+UaucqM4H3UjURd8Nq/4shH7sAWHg0hRl+V
	 GlFPwEMruCyN4Rhm3mmiN7ciKrKdWLzXW45iDvU9H2osDC3NFR79UFIhaqy8BH0A0e
	 WllkFJKg+ZkZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C1CD0429
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765963358.22863.13356441572865371261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84c93302b034afb3cc09c8809f089c5bf81e1951f4595f7a5fe5ee45999acc2
Date: Tue, 06 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767659633
