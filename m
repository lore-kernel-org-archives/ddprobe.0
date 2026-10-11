Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8197A305660
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791750634; cv=none; b=RGooyRBKz3FCC29479v4OplU/j/X5ch8um53CyaRjcxryKzZGVcs+6WKmvqPw2jPVIquOcQVP+QugMgzcVa8Zeaoc1LXsa0gWRw2u8Vhf6eImAO0E39a5jcQJs19zcMQDnyQUlTCVp4oIiTPv7MklCTS8thICljQzUHbmdVDXRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791750634; c=relaxed/simple;
	bh=p6ZQp7FDCBOqTKnErJ1s74JVXiZGpxXSt7N8x8G6cng=;
	h=To:Subject:From:Message-Id:Date; b=PZCpvM0KhRyOjiGSX+w/EhP8MkgNx9Xhw0sgda9mq8otTR1YwfsaCO3dtshfnZoUp8s6VoR/3edRTc3hez1V5nxsBtgeT2C3n/Q4np7IH5+CXzdykse+9aT6Sfif4g4jHpk1lFaisHuurDlcm4a0CbXJdT/18JUXHt8yLgHk/p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2fBGEO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2fBGEO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F1C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791750633;
	bh=p6ZQp7FDCBOqTKnErJ1s74JVXiZGpxXSt7N8x8G6cng=;
	h=To:Subject:From:Date:From;
	b=h2fBGEO9Dm+0frmizGdgsrwWoAMj8Pzt2fqBUrn26YK63V1shJCQxLZkaeV6av6Bm
	 pE/9ZDcQeBCpxsJ2SFW9jfJROcwyPaXzGnoiNq8Bp9M+uQyJ/fTBVBYjDlDpeEQnru
	 z7jcEk/Hkrwj2kM5yyof1TcYxh6I7OIGUeaWjPNIE3YQ266X1frva9nk+jlMfXDVYk
	 fnWpZsFicDG13RbP5H86+VmpOVICJbP6bXciyCC7qZYjHvgBJAIUmH+rCnrZqQvnnC
	 JXTDPJoD1eeA5qvU8XswcEZxlhHlK5cPPQHt8hMFG+bCYiAQwxOwtPBq/7j/nRQcK1
	 37KloaCJWP+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B98CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175063368.14888.1111335945844244032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2e3f5c84ad8dbbc193082bd4fa2a1f8b135badf346ecf6874a3496b80e0944
Date: Sun, 11 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791750633
