Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EC93176E1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769345634; cv=none; b=JMYWyiMPqVHKLPBOMG1mOpMbklo8sFJVAEXpLgFOuqhFMSXDkyfGUEE88nx/W6vvFJL0glM0xvNf0/hY7aZn8ZqejS80okNIb12KoLTP4HlEMF2uVlFfHPzL4LWoWi+UaUQ4WbiVNSBp19qjAcK5DJ8UUH3QyfOLwxcdeCU8n8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769345634; c=relaxed/simple;
	bh=ukjxEsbAphocr1fsdB1EEQICmKDpyPpe940HlJ3+xS4=;
	h=To:Subject:From:Message-Id:Date; b=kM00iGOq3Um2Z38+Kc5Cb+3nFxF15TdCi3yAZk5VA/rO6QoKJWZn6b5ylvnBew5EuaxPOe2bQOUxp8Vzo7F7otFNjbJsGg6fO+ObMesUJE/oYn/foLLZyv+1j4a82XG8FAKjhVR09/6QRkAsTNxh0Gg5VZiWgY5MADxCwDdVIxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f44frT1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f44frT1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769345633;
	bh=ukjxEsbAphocr1fsdB1EEQICmKDpyPpe940HlJ3+xS4=;
	h=To:Subject:From:Date:From;
	b=f44frT1ZkHiYbf9oHSwSKvw/9tqbHW9gMlx93FktUiEdEyM3fKxD+K79abtd2af+w
	 huTe+QlyvQytsrDhsH6ANFkaU1i4Q4MDLFFF+pGvnZ34nUwDTknCAQ/rPMKkI2zAJc
	 5e4TwSoP3SZSfLfSDiXu7iqyynk+jlVhiCe5cNDm0VfWuhMOla+Cyvv8k7dQdMOES0
	 4gu4JCrWQeTgEcAg5CGf0QEmXXYrxDsNt4oPpcGSEuzMXGvLqsxKF0POSJSq8e9B89
	 hTDaGwCjnrDFjwGSTic79Ruqs64/4Gfl7o85czy/ITvO3tF1OdyPPKJohypLa9rRfq
	 K6kmcvu72H3Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD8E63C90
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934563358.6759.6743967594856640856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa80f95e6b1b023fe2b8371b444bbdb3f10f996d662f9e2996562e3f7071bc98
Date: Sun, 25 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769345633
