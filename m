Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260761D54C2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756343394; cv=none; b=iDaxb3mCbd8rsdbmMzL6jvsAw18FWl25Ob4CTbniEwGFFi1HJ18IxMViLBsPEFXRfUdlIsyJhXuFlNuuc7JLED1v8cBimQhRXrCUJrPaEZK6Lo7torJDF/PZu7YGDJ+sA2PQyQz8dmAC/WKOQKOirZwPOCY+5PAI8I3B8ZlYL7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756343394; c=relaxed/simple;
	bh=Gj8biTfjQ/QEOiS/iPjV7mbeHxua96LeZwlCv0D64m8=;
	h=To:Subject:From:Message-Id:Date; b=BZi3ri2U3pZAsgvm80U9s83MKgxilHwtb+VGCyx05JqvwG/Up0oqRQ4ZEdfyMyqRLgCX9Aq3zfJyyJFqQgufcJXPpXN9T+Y389oNFOPzI3bABH6tQmDpVm+wAP+c4OqER08JNKh6FViffFm5T82NFeAOOGNH0ER3XcIwH5LFIAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au3xSkHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au3xSkHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F4FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756343393;
	bh=Gj8biTfjQ/QEOiS/iPjV7mbeHxua96LeZwlCv0D64m8=;
	h=To:Subject:From:Date:From;
	b=au3xSkHNTJ8whpmQ3X/gMcx7XvWaxgQbLFOWuSGwQdqxbNGxcc8L6R8XG7iFCbCDw
	 fUiFkdX6yox7/dkNLrJvR4bEqTWjyL02QTYEqKqqEY0kWCzmjQ3qRqcJqbo2yR4o6N
	 +qdABlRmdKL65rRqVzTL8E0AusNN9nLt7SzbAn/fGbXn6odnVl/Ns5UmJEpWRPKKlC
	 kOGLf/RFjqFg4XEMmUTqmxmVy0R1eTemnIZ+A/mLI3oJJeFBcSjx9puQ1tcQUQZwN/
	 BkP3kR8zjIzCCBOxQhpriED2aNFfI1yyX/ePC+Q/DVFex8c1mva2+WBjVHCm0RF2Uf
	 0GiyR4unGrfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634339358.19797.9363127327688531304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681ec3b8683cbb886ba4a2cf0bf9ef6746f30ccf5694184f401bd632ac74ed57
Date: Thu, 28 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756343393
