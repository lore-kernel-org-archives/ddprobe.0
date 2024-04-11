Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2934513CA8D
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712816898; cv=none; b=YlYUjwQaGGgjpRqcRc/aUrspfziwq+F8jwaxlTkLoKTxgKDlM35mnpv837yOqrWwjpXgBM77kAkKHqHQs3tePNnwVjT+93sX+HuchuZjNajugU38Q9s92cYMsuWpGahF+KKTlN0WeRAm3QsYTNJ+0AF10UCO1nV8VKfa8+p2Yb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712816898; c=relaxed/simple;
	bh=hidl+bRDHSb16Xc6r/LQBVuujvfSopPouXUpbcYy55U=;
	h=To:Subject:From:Message-Id:Date; b=I2bAHFhxVCbBCeqouHRzzTiB7gd+mUQGMFKVq8qp4iVcFTxfNrNiXJSki3UO/klZR+HmrKhk/nOFGDHEEJ493RXVDX164W3Ew3AcBLT2rkK5MArUwCYK4NqUWCqpsGFQpLsrHVg5PC/u+6rOhmwe1w1K1R03Ocol2XLqXpUAP34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwGdeZiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwGdeZiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B02C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712816896;
	bh=hidl+bRDHSb16Xc6r/LQBVuujvfSopPouXUpbcYy55U=;
	h=To:Subject:From:Date:From;
	b=fwGdeZiSX/t3HcyzY6NBZCi9PEYA8mlEgKY7e1WtBt9RUXKJbRfu4j/hUpMTe7QEE
	 lterCZ2cUbQv7iLAj6xC5grJ+weP0djwqtZ5YtoJJ30wBZ+h++trEatayx090zzLvA
	 rSuZ7DQ3SPlbwn+bXC4xxaEErSVzO3vtmkjT5NLFYp0ObzpFUSeeFj+h62a9A7J2qE
	 gXccwkzMGoxcp+a9papmqi4CGtgt4haKKCtgU782NXGw/n8Et5fIRqV5gRDrC0csPw
	 ZZp2iQvmZWcN4GxHZjp46LwsA1gdBuSYSGHKlQKrknjVJBjeWHv2vj4+priZ0F94PZ
	 KA5XiB7KepRIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A9ACD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281689642.20195.10406363576451603408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafab22195b56fcd5f2d12125d787b0b325ad42c81b96540043d0790425f6d69
Date: Thu, 11 Apr 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712816896
