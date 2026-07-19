Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C3C2EDD6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784447914; cv=none; b=hkUAaKXbFYSB5q/sLuvYovFo6maI0Y+g7WuuyO82T9/HwQ1qbqcWfpMH/Fyv8OxFGXI8XDDNcv/N3LRCNE0MQOLOiKtjMEJnvgsYuJFPSBJH023WZdUaqpymscEDWv90Fvyb2B2wz6Ze5DHjtt2u/vHYlhOM5rH/Q/IUQV9HJek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784447914; c=relaxed/simple;
	bh=f0H8cN+ApC4PMUethsIIoFfWWxUp3uSg6lRGAweEp78=;
	h=To:Subject:From:Message-Id:Date; b=E/y1TP281DHlXJbGohfpTt/L2wJPva9+hfFQf52CGNtstXaC92BG7z0Zktv7T2u6OOHvunQxWXkengcZePc3gSViCHxqDYIrMF0vOfWNo8SNwlSOlddjQ9WM4dGmZgNbjhbNvzC00+M05lKoD3cLVjcd0/d+487TgUU4ZgsNsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEj3C3xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEj3C3xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA57CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784447913;
	bh=f0H8cN+ApC4PMUethsIIoFfWWxUp3uSg6lRGAweEp78=;
	h=To:Subject:From:Date:From;
	b=fEj3C3xSAWdaPRRL00qlP2c+LpbpmT+OaLD4oSgeTrA1cl6f9/ws8NoPdeyhMA6TN
	 XIjqjUT3iV7NTAbWP5haU+dKzEYcn6MvLz0rNg8zYf/rEV4ln+had+Ev1ToHt9TxwO
	 9y/05752MfQ+C0/0WpIuxjfhYpzZvWElrqyaedsM+euPyB8n+OiWpTnaURmhGuioTp
	 l92dHr83DoyxX0qkOZjXFERzmZBFNFe4ft3bj9M38qldYI0ku0Hy7oup4nw764jjLR
	 whLZOAwn3H9wj/wg/RP0lv6XobaP6TIVdcKLxDSy8YBCx34ccsU+c0Lc9D2dsf8O0J
	 Ic5JPdy4ENr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C2C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444791368.15116.17518925597764281668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114c35f173347012c162bf64ce519095ae836709bd850ba6ed31baea051c17a3
Date: Sun, 19 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784447913
