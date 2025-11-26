Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF5A8F4A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764129174; cv=none; b=Wsa7zfDh5XMfLK0CpxLJwyTC+pIfPze4/i9EZUGDcaS8zS7tEGMjQs3pnU13Hy+Tcw76oXSRhCnvwKdIl7yF41mobge72nxH1UVo/GIX2P/4bYY0nFJ6RDaH/lL7DJ7zreoDJp0VLTcS2HYADHHtPPgsPDgiCFag+IkHqtFM9C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764129174; c=relaxed/simple;
	bh=c/IO3MmoznwWMJFDC0IOWIcCme+ihISKYuPNUAnH0q0=;
	h=To:Subject:From:Message-Id:Date; b=QD+SSYX7qVAmS0vFYqymG6a9+BU2OYG1URcubbaZ2WD96QaFYjctZUhlg+Gtid5XDs3Qjaja27FYTH4ITv0ltQaO49UK8Ej33oyuuO2VevB4vK0pwccscVGl1wkIg1lYriKSn3CkUp0hHgA7m1ibLkIDB4YIN7+eu+bX1viN+40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btiVIUul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btiVIUul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD641C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764129173;
	bh=c/IO3MmoznwWMJFDC0IOWIcCme+ihISKYuPNUAnH0q0=;
	h=To:Subject:From:Date:From;
	b=btiVIUulOM8HariOFS/nbgOp+4dTHNIhHRpEkFXr8eowy6I5BkBo5nlZb/riPzPio
	 My2k/kLSoWsXzzYXDRqw6MWmn49jLcu/IG/vQAUyHE7kvycKkpYJarYBxLw4VO2v3J
	 5Fq4QSS8J6jgxPl3N4m71WvIWrzFZUsCbB8kzWwfnWp5WFq2YimH7QD5uBXrNV4QFY
	 vNlGlNMPeJBUe9l/gx1flnSKu1NLlX1RAwOA9NTlVMpsX5/skC/M4zWcYACUIftK7d
	 d6eAHYsPxq3zKtDkK7jrkdM7NvWqIqPmSwdwA4g4X9hg5tKKKLOIsMnz/wamBjWnVe
	 osGRTUA9erDyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F5D10379
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412917358.9903.10249826680754429622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b0383f84bbd91df6b2ecfab5bff7475b6574cfefa7d0f1e41d05b6e4928caf
Date: Wed, 26 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764129173
