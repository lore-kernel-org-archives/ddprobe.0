Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A2629408
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760248194; cv=none; b=oeLX2TgdEw9fmx6Ruiv3tqd23GAckru1MhVd3xHSLVJpkQQeRDAXFIt/KKSORHiL2D0v/0qWMJcPTfIDGocVTz8kDnPo8JXfdJaXdqbULdFr7hw1SHG58LgwNSTo7aYtm/VIePSrkXsFBRQsnimaLDCtpDi4lB/hNJqVGkgpavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760248194; c=relaxed/simple;
	bh=faVHPjksC0utl87UAQtnz+8W9U279H3hmWLz2Qz/E7g=;
	h=To:Subject:From:Message-Id:Date; b=tGk1/PfiMHEiX/zbjwLnU63qQrbJ5JFeEov59ES8AwLA20T4pwDqaaKTUYRGvSjgYt2XZzbsh/moqN+k9uoQgNff6kARAz/CsiRI8HnY2IFC6/NwVddgPm0cu3UU7Iqrowuoa27wgxNIYWHS/rb9ZSpnMpj1TZc5j1/NjiIHEqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST22OIwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST22OIwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C30C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760248193;
	bh=faVHPjksC0utl87UAQtnz+8W9U279H3hmWLz2Qz/E7g=;
	h=To:Subject:From:Date:From;
	b=ST22OIwY2t/iVxoTb29KGSNNbbsBZRoxwfW9VMWpjFOmX/wrxtkKop8vcrRfIBDXX
	 BijSiDiokU/QD5gqmeGVFSTdjTXZLOH+/AUyqPfQRZYPsP7hwoDN7bSUrSWCc3TMnv
	 aInUXPtGaV8blUIypKgTznP0LsIqd5ZmPVNBGYyCjXelH+CDzhqMrrGzm4lPbSKwQZ
	 nuREPXaIFQKR6U0kVBzVUP2JBmL9cXUrdjZVwJeqZgUFxspyge6Y52mQxt+GVXG8Zc
	 gl9ce43kBJf49csrQ4Y0BadABlU5arygH841qnlGQIDlAxKFeAZnENDr97to0xY1uz
	 46NF8e+ZUiYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92020CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024819357.19553.4577266982522874831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d627a7e64355ee2fa07c649570caf89dfe6ba0879075634a89a38514385ac94d
Date: Sun, 12 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760248193
