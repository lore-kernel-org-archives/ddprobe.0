Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D2A4749C1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785270634; cv=none; b=jNN7zHfsXd1S3Wgiul/gBhJLmMnADH+hdlgugsETVJlel02Cd631JMhDyJpX6Qr97xaee2QTAthQAHA7zQ1E0RTTt9UtXRPkE5VZYfZL+HZyMBgAecrlTgyzOKVACk8nIBtrcDw+r62bRPryx0L9Uf+6S88fp5YEDERV1kG0sZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785270634; c=relaxed/simple;
	bh=FHJM5naDqOEPKyJGsPJGd1J99UOTPB+J9fUx3vGxT64=;
	h=To:Subject:From:Message-Id:Date; b=YfUGmGBZ4KqP53md92+Z1Szq78WrL9dSRVXK8p8tLDWoi33NGgVMTABqQuZxxK1vBxkRPa2wLgrjqQyXpL/5f9qV/MIfO3o65Vtzhh5mLwQw5UAH19qDEv3yS9yZrTWBM/iLRoWdEOMDBnb4A7qzyQZ+IicdZVfu+EOL+g70UbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5GKkCki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5GKkCki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD09C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785270633;
	bh=FHJM5naDqOEPKyJGsPJGd1J99UOTPB+J9fUx3vGxT64=;
	h=To:Subject:From:Date:From;
	b=P5GKkCki/BsEnbYp3qt+BGoXk8fkbjBeHB5/ersJQpiB6+O2fxOw1UZ89VY4TGLoz
	 q1ampU901CQPzKFT4ePldJEbX8mHo3qVDwx0EFUCJ1J9qbidcCgZUA+VwSax6ugZYt
	 RpzS4gleKTeXC1e89bg+pQfYXsPPMCIqGr1SQHn84Gz/U91N2esMns6JxYqwkBBJEd
	 wy7WJ9TduDJmxper8Vpli2PT7hEgzL8kuXe3o+vfzmjEKPJv8lsObnawXdV1HIdLCt
	 +sMWhMAF1pspRkRTVDtOaPkKx7dJfjjGmK4JU8M3BPsRLtCKpOF5oTVCJmUrGOyiIl
	 IhoLni2UuIVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF2C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527063368.17165.9513457151566891426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d02cd44e52845c948e5985fea22db266f294e7a656921e25a4eac0b1728810
Date: Tue, 28 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785270633
