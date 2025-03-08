Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4920AD528
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741436934; cv=none; b=tdGI8p+N+EcP0PZhmi1yaUSMrgbMmohQysdx8JYh3roOwi3oyUiNiLpxsO/ImGETeW0KzIjpPDwtjoCRMsHf5C3oFeizfzhWbFOq/F8fGLOcNUU8LBO7ClVrCE30dgKVUCQ2a5qjQ+Yb/2nfz80bgSm/jUgAb2Y1JQ9psVwN3oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741436934; c=relaxed/simple;
	bh=Jlf6UBpgN6zziH/mTzNtZxWzfaxKEOWgn3tw9SnkVZA=;
	h=To:Subject:From:Message-Id:Date; b=odHF7Qh76KCI0tzNSobvFvqYVvKonzlTfHOCB4rOiAlI/aTOzCWW1U7GGJMaAVJAWqtMNwpkRlIkRMhwBxy+h/O499cRfD7kYQQGxN/MNG5+ywCT7nkwfO6QHXQ/lw9kYoIow8lciP4YnJoUO9RSWv45X7QDjLj4l1cwH8/dtJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tElcAldC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tElcAldC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B087DC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741436933;
	bh=Jlf6UBpgN6zziH/mTzNtZxWzfaxKEOWgn3tw9SnkVZA=;
	h=To:Subject:From:Date:From;
	b=tElcAldC+UpbhM7YTHb7vrRqtJp4vLdUmrkeXHzt/Ci6MsDJAQdh6lZbYCQVKoICb
	 w7lisTurBVzcokiSeSIdHNcvc9eqat3Jw+u2owVd3ch5uyRjBJXcIZ/EMbqYpmNiER
	 fP14MYb89wxtE+597BPa++hT7lgqIkODHPAlauCWeylnT2+ZikiilgCYUzG7HTIwEu
	 Ry8dkLSHEsl3YXD8P9VP4D9c3de+58jwKiAnKAbnSoN1TlaAGjHAmmeW+zM2nOCmHa
	 PzeqNqsOiRuCuloRxqJRF1fTDlaDNAz4MlCzWKy2xQi+o+4Smg+2W48jqH7P0mbHce
	 Hy+I9AFOp3KuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C05FC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143693363.24504.9957747779587071901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbe07215c5a2ce7065cdc4f0a81ac494c8c53698cd9d305aca47d491cf73d0b
Date: Sat, 08 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741436933
