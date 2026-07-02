Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E9D39901C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783029514; cv=none; b=XrrNDOwY4X2mKNKwuZJ+QBCw5bVWLjM0KaCTrrEcijCJTGEHm6v8d65UCikniXGNcsAdWTqD7fma0RSb6dWrtw/7YMbJr6/BNwZX94S/nJb6bpgAjnbi7SrAkwXYFC0Cf2yfFJ+9GcaPD20xsKG/TjgQAtJQoiqwU77MAHAF6yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783029514; c=relaxed/simple;
	bh=+H1DMwRCB9FIjpXCQjgN1XmLzyc3Bnie/1hDtERq1cs=;
	h=To:Subject:From:Message-Id:Date; b=NC404rOyOfSt+z/ZAw7Cz65g4nfzt2FIDeG4bjEAAn2FG4UnxVEtcpUST0RdcmDA2dI3hNivDyo3v7elvHryfJucwMr8XfronliJM/Ms4ql8vnRrG8S+NTkHi67eMPVrk2N49a7RqYhWOpDf6+HoLo9HOWb/MH5s++pU8SbbxNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvA9CWYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvA9CWYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB87DC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783029513;
	bh=+H1DMwRCB9FIjpXCQjgN1XmLzyc3Bnie/1hDtERq1cs=;
	h=To:Subject:From:Date:From;
	b=dvA9CWYg5vF45qXsMgmSvl26YyYJbPS94rHXtx2As9h/L+UDB038ZzT7rC6yqtJMr
	 nvKLjxM7+2/EpTjV6asy0DN0qi5tuO/7uZfFY2WEw8vGnAF9EV212iOf7UC2y6ItMP
	 JZLRF2xdTKhUxuJkG53Up7b7IogubN9yP692JpxfOqMrBm/BykOQ4ChxBvEJwUbO50
	 8U6ipCfrItovYMn5jgiVXg3xYx6TvFKw1l4p2oh0PzLiwRjvCH1XZFjC5qyQQ5WVEr
	 Yw9oXLrCxi4wDGEuCj9auEoFpzOtC9Z4JCwDDytOuMI5TnCC4ucHmH/KvSsrg05zm1
	 d1gdU1nmQ1hsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A80C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302951368.31400.18148220429607077088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049389e5b01aa386b775e2c688365ae109b588888a181fb2e08f8c9f904e67c7
Date: Thu, 02 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783029513
