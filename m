Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BBF29B224
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763001594; cv=none; b=R01iwJpMpC1P7LQ1jjOfpQuIl+wln6+WMWqHCbrI7az+iAf7H6SLgOS9+UlJydeBRq24Hj8RffQ1G7E7yA1Jhx+vjDmSTkZryUWu3IKO6glwVMmPpN8HDAu1wDh+SEus9S0VrgjqaLQcvRNJU1tj2UennziNkMwIFWaHKZpw84o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763001594; c=relaxed/simple;
	bh=INbGhXDg81heatzV1KRv9lI71jVssM7TB/q6ZB/bPbU=;
	h=To:Subject:From:Message-Id:Date; b=CkYHZ2hb20RYsQS2rjGPZUqyW4gQZgzgCFmHXZk446VZ0kNM79Ywrf6af4VVCKD0SjSlHPJe468/vGyf8NQIMoaXTR2pV03LJeFCVQGa72Y23DX14Yu+2YPxHDojZ2+KCz1QOp3ft1Q2f2Qlt5IAtcG/XnFfsNXDHxToBwSrqZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dby0Sbza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dby0Sbza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A651BC19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763001593;
	bh=INbGhXDg81heatzV1KRv9lI71jVssM7TB/q6ZB/bPbU=;
	h=To:Subject:From:Date:From;
	b=Dby0Sbzatz0VAQlnjIiaYsnde82FUkDwxaDEJcbULWclJ21k/btZmUiwj9h8OpPXU
	 pPGz6imHQvQkumyQFTi8A/34QQJXh1t0u1snYF+4vt83g0uCAxRNXtgwPb1KiImFm+
	 vmXIwLgUn5DQK3EBnj2Rx3b7pYhSLmAPHOFn8KpmJcRtp7OkKoMSjXbkoMy86Ebo8x
	 3xUWmwlePR0CaWCWlwhU+gDHti0/3UtIYtozqw/EuYlUVozXqqbpbxFVecvUhrM8r4
	 4Skh8R0Kt6LCIFDcfPc8pK9Frt1pePkj/FU/DoXmetBTpnW/miXE3WGPGvPKT0gap1
	 RE7pVr30mBzrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB0CD4F3B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300159358.32125.18305458034027101729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104caf2c26adecdd871bc9bc102d060c07b2e71695686b8bef3c0d41e197fe89
Date: Thu, 13 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763001593
