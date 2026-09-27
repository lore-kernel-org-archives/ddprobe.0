Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E72231A23
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790473834; cv=none; b=Qu8KwbJWdEjVbh7WwxzC5Bw4TNrUCVTx2HRjbu4JjjRhFjwFuvyWuaf/132rT5+xIdSR/k2S9EXWbgj4/VAOIMWaMZTo1Xud0TtqSIiNF9NjHTQwsgFZPEKabRRH/GLMZC2sNC2+3MPOE5Ev0atnaFp7y1+WdDiYiTbO/Fl/bPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790473834; c=relaxed/simple;
	bh=XQMHWzAikpRuz+LOcyVpR0VHVOKI1gwKwSWh1EwsAd4=;
	h=To:Subject:From:Message-Id:Date; b=oi/yiEyxbFL5rs/fg5YRe/R5s0AJ9tnDC/xzCj1R5xXS3v2/7MShC1Mq6esU+pfr/EhwNaWq98NbHTwx4gUlbrbIDBaIhaXMh3QEUf8k4aPDMtCTMjzTIN1Juj9fRb4RJWvj9Iv7+bE8zP1XvXs8l3W3Q0gVkoWprShTiIyiltk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMgFoBTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMgFoBTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790473833;
	bh=XQMHWzAikpRuz+LOcyVpR0VHVOKI1gwKwSWh1EwsAd4=;
	h=To:Subject:From:Date:From;
	b=FMgFoBTARojTgpXmMSZtpq+qCIVYP9eBMSqH1n7EUhOFQ7l9EnqFuSRwmYTIdV4hM
	 06qJsB4K3vV4gcYyOC3qp62jBAF7FjMaFkIANc9H80DiPiqE4NtJsADjOTQH79gvdw
	 mY7bpbrysbp56Z0MiILrojv29p/ov4vzGPfcTElTs2N7Z/nsMIcL1UjkQdAaZwVAcc
	 kZlYqCS2Y9JiBIfpRPuNQVUXvY4wYHqJl3N47x8DAJ6T/p6YgzRiuQtEkUzhMTACLT
	 FkLjlvHUtuP6rlU0SgkerObi9UUKfHZo3UkbQEe7EkRIDF1mkaOSEOzPlUjA84QiLb
	 QSyaod6XXFbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02ACC9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047383368.9872.14588482858909845854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9d84eaedf0f37e47ecf04a7a4cef961e33f3dc8fb3bdb6abeb9a974cfb33f6
Date: Sun, 27 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790473833
