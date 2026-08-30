Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C6725B093
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788096635; cv=none; b=lSYu1Qe+4aynSvAo2wRXt494OnSXeZQ5K/o0lyzOv2H0blTI7cAcRvMgpMm0iYu9187jKuulBhhMGmtIIrThid9Y+E9eaVkGTglMdco+fvNeTEJhxkyekJk5TgYwS+f2GCVV6zI+M5LbXdZ3b61/n30amw0tP+gKJE01yrB0svA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788096635; c=relaxed/simple;
	bh=FKf4qEKMzXk6ughFib6fTDdgeTGp7p14dKq89459I9w=;
	h=To:Subject:From:Message-Id:Date; b=FhRRV9Oc15B5QYMdh1LltJVto2tEOOhnmtzcTWq2K6xaNK85a8UkuA0A5TcCWIQcVrJz4EeAva2iq2y3KdXaC4SQqQnt5ox/p2u328MR1RYjoxyASqyY0tysxbZoibFbiDX+lyps1TpGiT9KHKsYFt5KRph7lAljlp4l+X7HKYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfjJGEig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfjJGEig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D559FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788096633;
	bh=FKf4qEKMzXk6ughFib6fTDdgeTGp7p14dKq89459I9w=;
	h=To:Subject:From:Date:From;
	b=YfjJGEigXMKacj2eyNze6oRqjtVFMhjKmb+tPv2WrtTaLpr06Fy/vKb7v9r7mEwYL
	 b+YLqOxIxStoMnc5tVm4FnN+DFcgqHyeGpWHkUuC9cRadBH+6vUlN3rvM2KEzMLXTz
	 Os32W4T8qRkwIaM+tmJQCoLL13kFyPjxniaVtExXbAm0+v7Y+KZxhe5JvD5X9XSG3J
	 oo7ycL3W2XIUgCUtRoBEPJvHmaqbpePOoZk+bGhiuj08PeZh/2AlcEoewSIGVSUiek
	 X5v3PIj2LAyAEKtY7W7tmewWUmRhmOjx14MEjvxmt+vNs191p21/CbHCMcAElt/I5x
	 0QjKCvQQUCoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF928C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809663369.17517.8175834699753020843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb66e0b5ac199cc9ef1d578c1674d9ff54242c3a27f34361b3a0cd4bc6f6e14a
Date: Sun, 30 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788096633
