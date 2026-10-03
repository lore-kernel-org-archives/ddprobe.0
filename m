Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A82139DBD3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791020434; cv=none; b=Qp6LVfRyBPQiMaKJu/sP4z1IRRTE6G9ZqwP1X/sZBzL0HyHbGGFXKBjhQ+/2BsZRJ8t6Cv8zPCm5oEAFKt56sL9pLnrCy6pGKQfgyW3YgQGL3d34FAit2rzEfT9bLicUew43H/Uf5rgpn0j+PJnoNKnbFWyeMUwY2wB4vVtAMwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791020434; c=relaxed/simple;
	bh=rRp9P/YQ4nfW/qvTuDn+34pc+5ZdlsJ83c5orQSSlSM=;
	h=To:Subject:From:Message-Id:Date; b=W8MwOPPQFIGWHpx9co6JQtkx7xfo8MqhDFwact/KsLYDgV7m2PS46G9MPPdHyfoFYXfLFIyC2RG0iLnxzJjTTQNl92pl03Rcu/3BcCsa7lyumDLqAIyTZaq+OMvyJXa62YMMVg/pZpeZAJysysaqKdfVTZ+4KTm5TuqT40QdnlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5OFfaLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5OFfaLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD433C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791020433;
	bh=rRp9P/YQ4nfW/qvTuDn+34pc+5ZdlsJ83c5orQSSlSM=;
	h=To:Subject:From:Date:From;
	b=Q5OFfaLyNgyCg4GeydThHE+B+S+51QSE0e7j6MpQunN7wzslbC1oZhK/whDkgTQiR
	 rCnl9xipf2o+v5xz+daMaZLlbXYon2UsrIXkPihE0Y4MwUbRoeHCTMQv5MkyRTuAQq
	 kM/cf0PJYqoFNSvwqyCcnRrk7AE3pHK3za7XDHAeQ9M/9rLGMjFd2uDGxzY8vI/vYT
	 vzbJzrA8BYxEX0e36hN+HsgLPAj5p91mwHE2hRx+z4GFAR5pgWKwO6+D0ckBv28v2x
	 hyGhGx+e/tXztRQ2/pYJRfeBIafrJNHPyu41sUJa6hhObnePmRy1cE1Xcbs6OK7lX3
	 L2WYvrMm6P6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA697CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102043368.14889.9854242314045769723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a34ee049487d808daa17558b25bc27579770d6fdf05627ac918f1392bbee272
Date: Sat, 03 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791020433
