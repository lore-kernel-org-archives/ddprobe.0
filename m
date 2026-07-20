Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED42944BCAE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784569715; cv=none; b=dOkYX6WiuAXvNi57lerxlKUjEgUHGsmasIre9b0/kacFQaYmB8G9+UGaSEE7VVJQnVnuWidmGR3LbyAyMMQISV+el7YMmXGSRUS+SnoEyPNYm98cO4Ud/xse0b2bDmy1+gq/Zy38eACQAgfErPREW2EYbGdGFzW+vyRRJG+i+GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784569715; c=relaxed/simple;
	bh=w8Z+bhIAaMPolWqC4iFB9QcoPe5b1fPID610p04Fmso=;
	h=To:Subject:From:Message-Id:Date; b=VUO304INaUbXWIcs/wLl5ZuTxBIPv5qaZeD6SLuCBW3uDKV9i2A+A3cQLzsJmqrh2Ol4PTNSrHHADTwqvc9EePSsTssB+YhbkFOsNA0Cv1bKDvnSDMIEOs0PbtXYDe5Ilsssj1iPSyLjf8Es2t+NQ2eWIePIrbu0+687qUgiS/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO5JbdNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO5JbdNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2167C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784569713;
	bh=w8Z+bhIAaMPolWqC4iFB9QcoPe5b1fPID610p04Fmso=;
	h=To:Subject:From:Date:From;
	b=mO5JbdNgM8wmvZXbEVMu3yAtX2ZVAbDlW0/Mag859CwrfURTt3C6RAtgNlMCB8RC1
	 SSdmpMotiOnpDO9QiGYLjCudbHtdwmLPzx+XaGrFNwg4zJy6A1UagXiBoTd+JIMGKL
	 mJ+HpjQfd7WIxIvZAc9NOw3X/dCPPv1xmqPtTYgrRj+o67LppdCfR0ANzaVQ6hweSf
	 DxJKXRjLuENbqhwpDRJCCJrEAHF147Caf/U1fDG/x64SekcMnUtW9n+VUt6TyFXSne
	 uGbilHfzCupy7cmf81XYMHP9YRS7pT1xxPs+yFuMvexn0McoSX2LvmDoXAkC7u19o3
	 dtziCM4bA8OQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE250C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456971373.15564.9643807326904255381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43beab7ac9b63304ac9fd9173a55e6c266b09db53130d7f28d2b87e7c4b77bbd
Date: Mon, 20 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784569713
