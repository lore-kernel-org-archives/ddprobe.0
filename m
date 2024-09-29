Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A0C14E2FD
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727603754; cv=none; b=dbeVKDSUV8Q8UTxjZf8sdkbXLruCR9/N4GMubkONlIn0MFxRkLhjBTZ3xS0PRGc5z/hhVpUWlfi1Ubd54AAA4LdhB8+WWie9Y3yb18J3tVskrDR23Oc+ZnDfdJb9DrSGyxurUVr1G7dYkNoiqM72M3nTd0CDBaEGQVxWl0RICkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727603754; c=relaxed/simple;
	bh=wZ4HyNxDme/6kAkzIDVUXmVyMCtJRCh97Ftq/EnBWug=;
	h=To:Subject:From:Message-Id:Date; b=VYUdDl78MHf2866B9ULQVzvYDSTAualsJQtCNSU7Qh6PulQ5hUAiTbKs/FDJdreUBaToNY+gPNrUbc65iGHnBfcBBF1AEGfltM0lCgMkOqMpGSgdMLQVqXU9POLgWQLC2y1IV67r2MKGnRC9nT6+m7w4vCUr1XEE1OHuklAIQuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAHe6CJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAHe6CJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FD8C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727603753;
	bh=wZ4HyNxDme/6kAkzIDVUXmVyMCtJRCh97Ftq/EnBWug=;
	h=To:Subject:From:Date:From;
	b=LAHe6CJiBxN7tVTtNRJijmYgoeCC+kUQgjTE87MN4sPpYnHDIYXnm2e4XHegDMurw
	 Q3Gw7m3XLvDcY2oq/R6sDsj33SaSaUyTKWBO3yQvQXdhtNZnJPtrILJ7+HyatcUQbt
	 XnlLm9gHGzCO9Y35ek2YrR9JWHN8Dg+v9YUx8xhtIlptqFgBzfwPgL+nqNHcpSSUR2
	 /aoLVko9vhP5FM6UV9vem3wAx1NC2zv2HRkKhC1PMJ08xmLKxabLN1SzHuM60yG2Ul
	 HADSwhyweP13uicqAokHpBysnCc9WvEJIM0lvvkQ9P9QXPln7FM9FdCzsf1ZOZTz4v
	 kw4r8OKQrhqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A091ACF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760375360.31463.620139530534905050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b0f3a07da121efd48fa1b384e1f49d49ed0cdd591ebc694afeefd0fa22e216
Date: Sun, 29 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727603753
