Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E56434D387
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761856194; cv=none; b=dXEsnidtSaQiM/FCz80ETxV4OAY0eoMhWSd86vu1+Ld67Zr5mdTgDPHDQv6vKB81zz45nnMcdJJE47j5zkGdMo3XEHyU/LslKJA002h1RUNv8VdIKJbNgC8KcAw3JfjFCGCi8in6u9x2ozuEOCNo2qVIgp9JnDsD6JruFWspMq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761856194; c=relaxed/simple;
	bh=SQzPEyK1YIbFNim25ejPTbwh0X1ouBRaWvlXUkjqric=;
	h=To:Subject:From:Message-Id:Date; b=B6NMGim+Ndfofq2uOrXfIIDesJNPZI+AjhTc6vl9uEZiEIKoYdrW7QEJjseO30Jm1aWsw1rVG4dCTI+mm8rys4bUkiN5NuWNeLVO8NKaXHJFN786Z2oT0vRvgA2Gh7G2d+keqJCBbWGStqqe0p6iFpbJOjL5hohjjFID5dMaQMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6O4XvaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6O4XvaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0113C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761856193;
	bh=SQzPEyK1YIbFNim25ejPTbwh0X1ouBRaWvlXUkjqric=;
	h=To:Subject:From:Date:From;
	b=C6O4XvaUmkAS4jdVS3FkX7fzUXLmgM6yZvtot3uEvSEa50kkSTPWoc7OBxlyRFyEV
	 7hKjxKhpMjAr1B3s2D54gKz+XQuy2o11pThPq0yzQB/xHUKn9jKSNFtQsB8wsvCMmP
	 jPNOL7q9B7g/yNOdhJEjAsHFboMtDNWLBgfRX/1WNfW7FZ5OQD84qcprIqn3UI374w
	 S2BRqX9dcHanXHwt+Ut7yMkX+z0ORF4gVRzh97dhWQcpdrUkmWKJ6WS/dsn9N53Bui
	 sH09MIKrRqrGFUL+FH36bW1kEWKR3mx9MiE3ngJ0n47w04SjRJa3FO+RKVnHaqcgoa
	 E+s5MwYgrX7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2DCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185619358.17263.1933658229690646622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0360eea35c3a279e316d1c04100f214ea2f8b0821a5e884740107f6d5d09766b
Date: Thu, 30 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761856193
