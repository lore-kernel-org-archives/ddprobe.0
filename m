Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787B21C9E3
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753555194; cv=none; b=AWiLufA2Td5gyqOGR3GDzuOAFXhDWBAiUtDIJEAqB3dgnJIS5lmpHSkwzE45BpcCb8PbFjR77TXRXoprd72imrAuUMOhrtACPVJe+mXShgt/eCg8cvggDqTY/j4Uqfk+5zeQjFtStIJxcRSqpwZsANxmH3DS9I/u3q6fSQhVnMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753555194; c=relaxed/simple;
	bh=l+7d7An1luU91qy/hd9lOh9a1OhJjNpiDf4s2HiYcK4=;
	h=To:Subject:From:Message-Id:Date; b=ARzoU4bTYEDuMxEc9cw21e1TNdEyRcr+2hplLk2A3J2+pQ1lpO+q1dSERm9+ypQlaywwUZRcGmhq2vqP+E8jr2ydcjZE123x3Djzd5cJC5UchAMgNPkNLL1P3DysK4L/TDlX4ArJfYGrAIS61JC0CuzIcgucUQsE/uMaaauVLWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi3f5C0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi3f5C0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A900FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753555193;
	bh=l+7d7An1luU91qy/hd9lOh9a1OhJjNpiDf4s2HiYcK4=;
	h=To:Subject:From:Date:From;
	b=Hi3f5C0nP26SSVvlrbJqG6C5/mOjfWrZL5UBSPEn+LWtk8EzQ1LScfrPr9AiKkjbC
	 rA3SNaqSGzWff+XkbyOYotI7T7AX5edYvc8Le/aIw+us6raAlHst1Ybed/AmBJQTpH
	 vYg3QTN/qrO5UexPCX3PYuKQ+dxsJhY/HosDJ0rL4F9wdlxrHxVL5PqkYu2OSQqJOC
	 yVA9yqK4XhY/kQUAcKDGrP8wHDbCBq493FDCwiI11Xz/0CQdK13K6fDxkCRZg9Cjsu
	 0hvy3tfjWTm+FzJFQY/iX6sor44VLeuaYgo5TZPA9ZHb0ANZtLr4lfCkOUr5+ThYvU
	 FZU5PcqH1/Vsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E52C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355519358.11496.14455587222137408244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d4a1b3c5a39b50737928f0fcde56d5656b0e70f8a7fa960130fb5241a6bf81
Date: Sat, 26 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753555193
