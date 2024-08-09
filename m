Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045618C918
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723196754; cv=none; b=NsfaP3pqxPs7meG+8qG0TMD4Bp2OxngcaJmH1lfHHErLmXjN03XAsFYC3XPRW9v/EGleJqU9lTXZvST7tpNj1tOei9yzRspte+lhE3eKgWL7zzuGAfrvoVWGl9ApzUktkLkF+NIjv4eG54GNVTVbz5ixDDzw2crsxm1nfPAUVqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723196754; c=relaxed/simple;
	bh=fRU+qHdVFcahfaK7OGoTBnm8MMIGsPM1VYYHoVsvXIY=;
	h=To:Subject:From:Message-Id:Date; b=mis3FyPsGS0Pn4L5GVh9oTi1tcpWHZ8PCzilUUebP2el9Uz74EDpTlTCLkCMINDhds28U1lqCmCJa8bmzfPdSKd70tArMe5rBwWnn62C3+3U+TCNIizUuS79/LyPXqMW6qp7JzzmkhopjDSSoIj6tCUICIZmwvRjIYtMUqYoERI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHhP6W6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHhP6W6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF45C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723196753;
	bh=fRU+qHdVFcahfaK7OGoTBnm8MMIGsPM1VYYHoVsvXIY=;
	h=To:Subject:From:Date:From;
	b=KHhP6W6P5jDoWZt81KQ6DeQ6Seqsqs1Kdh7iQOiyZ7Uy7aqfZNssusuYnoKM2J0Ju
	 ymf7Wel6DjveJfcE7kPQ/3KSK6ad3wBu11M9p/y2JLivk49raz//bLsHiSvTmxsFg5
	 mUtGCjpKHBKo1UoRPMYHuFTo1MLu8XBE/gi/USnxDVZxrc4Cn4HdvxsJCK8ICXf1Nd
	 EMwpErEZlcdM0su3R1Kj58vRKCkvGxOj7WfXVF5W5nM0hVq+VPT5GtoZYI/KqUxnj2
	 SbqDB6yn5wp19GsO/VqV7sa+jtsdjK4wX24+CLfYuydNnA21zP7OnSjHr63+aoqpwE
	 iZQiVJZIxU+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99027C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319675360.9383.835564808832609819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e6a51610eea382654efbd0a58efb40bb99e20ea9a32e753df7a0b9b1477ac1
Date: Fri, 09 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723196753
