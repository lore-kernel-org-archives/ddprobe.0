Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20837372ECF
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774475094; cv=none; b=JC5R1Fp53LN6aEVN187SMvxa9D4gYP5p1r8wmis7pQTjFtahC1z3b8i/w6TOM1E3vqfM/p/9YrPjx9zsjk9X6x2s1qfODHXKXh9yZowER2fejGGMxogZWqt0jnm0rKBFMKQKOTxJDqxZRU+fsH09sCuQoj1xUYsPZ4lYBJ6FDK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774475094; c=relaxed/simple;
	bh=iCcQruqI0mmC+N7U9j+MO6faHi3q47xUgOSB3LNvrqU=;
	h=To:Subject:From:Message-Id:Date; b=nppOMCvC2m0RfX3SAszc3gcVHeuprnNJ3VzP2/q0O9UTUjRatp2O+9otsmlceRy2aV8MikhcMYIdn+TAG+3WtJ5WBozNSXGXO2YNAXO3eapuRs2bdEXHwqL2lrOgu9RgNTIKYmz9v3JDrlCMTt5TcVzJf41aRZAtASKR2Im5Ky4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shed/z6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shed/z6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774475093;
	bh=iCcQruqI0mmC+N7U9j+MO6faHi3q47xUgOSB3LNvrqU=;
	h=To:Subject:From:Date:From;
	b=shed/z6yY/yMfG9c1KFIlcHMWrFkeSxb8xoGlEB8q1elc4XEzEEF59RlR/QXHFLCE
	 O5QIcyFnf/D32+k7WviHNmAJjkkj2MfPP45V7o6tHRsWpVUi0tkuQbznab8S7TOs0e
	 etJMZ53Qf/fjedJiMjpFydaPl1PD1At7kVANTbq0ZPHoNKqzihenDJ2lK/oGf16S/8
	 DtDmoVSA4MmqB1s0UaIoS1OS3mHZm0SI3KLTUHcI2r2q4VLN6A+qfNiwv7Pci3jk3u
	 lqcRBQ8251qBV8aC+UTh8BzMxQnTwCpgxWyzZMN97r5ppJClB/U2w1awlJ4GgLjaNr
	 3SfAH0otz5f9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B41093168
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447509358.12987.1720660167004585657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19a1c4819cac1b0caa04ea2b0fabc415c657481a0c4857bd089f5bebb5d2cc2
Date: Wed, 25 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774475093
