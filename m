Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281AF139D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727212554; cv=none; b=IXn+Re/S/nNobY5ROBWt5jU3nNkvvR1q+gd/5iWeujZJFGFhLAPG8vdMNJ80mUdMC5qyL07a+hhQxXnyb2FCfDrcULrDxF00Yu9yNI6tt1dRfY3ms9kIYCS0/qi/0KM4wDs1mVpsBEMZ9VMgylSnSz9aONgRCBcBt8nOs5wtqhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727212554; c=relaxed/simple;
	bh=oWEqWs8ylv2SO5RCEPYtOXmF1euUPvH39Wz0IK5T/VI=;
	h=To:Subject:From:Message-Id:Date; b=kFE4bFjXOJtB6fUIXfLNBk8ZI/oUkKT5KivrhY8DivJhEkp1iZRkQljU45uAovxTxTsshVcvSH2D6fCwxeXkgZHPO88FRnK0kAJKlG7S6eiaw/5JNg1efGmEtpxWhVGiJRCIUMJbLQ2KnqQ07euiuwi6rVi03CSBx70hGqt9v3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COOtvTzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COOtvTzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB4BC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727212553;
	bh=oWEqWs8ylv2SO5RCEPYtOXmF1euUPvH39Wz0IK5T/VI=;
	h=To:Subject:From:Date:From;
	b=COOtvTzcb9OPcrdEZQcwLaglokxKQ7bIyRk3qkVoZOsOjrLb/tPdZNEaSLAo+7tqi
	 NTQtaaKE/Xv4bJ1Z5UbHl09GEpHko8NmQ4FtTG8hPv7nvotpA7oXG4hMBRlToS4wgN
	 2YOED+0jlCyuC8c+u2Sj/jXhyNpeyUXpxGjdfHJw1gP31gQ0b502jqRUNDaeyKP20M
	 hNqcVMNK35mH+6Q4NFXptEmiLKgFy2yBfXORBjkTXHfCAHUIRA0le8ylqmNmAvxsb7
	 FomxEf/2tnBBAeM4oR605drTJsa1c1jepso1aY5gy9HhakG9aTGAwBdujf1tndoMo+
	 vtRSOMt285o2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9965ECF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721255360.12208.13494915404358164681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542515f2f902bcf167389c15e9b976dd3805857ca113ace36c5f8ac5f284615e
Date: Tue, 24 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727212553
