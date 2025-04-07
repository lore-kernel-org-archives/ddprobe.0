Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D0515B554
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744063794; cv=none; b=oIBdN6/t2tihxPr+jvZShIeDun2s4wCGFKCH8JJHN+0DL3qfykz2572Ax4/sXBWuy8/N6r3cXD+kLDcbPa8Rkb5u/1zhgb+jggisaY2UKyj/t03iWMBaCCnEmyn22Z0Aa+5CsJ3C0XeNrF0xciy+vSoZ4QISe9sMhupBkG+lmic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744063794; c=relaxed/simple;
	bh=+oqOgYyFXHR1F2zHwLP+af2KoJS01Py/S8DEQYe0014=;
	h=To:Subject:From:Message-Id:Date; b=To36GevWt4rIPbjU2TxpHOll8Guo3uAmjrv740ApjRxmEcOfy9Ut1gGyuMdCQVbqIi5w4YQlSIt7O8xAExnrbHlF3TDN0RJiZX+GHnkHrnygbuImi7tvqOEicsPDIYi4NLXpzngv1f3cFTkqH/7oKuJixfFO+w+wumEKSkO29sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrTlL2Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrTlL2Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3589C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744063793;
	bh=+oqOgYyFXHR1F2zHwLP+af2KoJS01Py/S8DEQYe0014=;
	h=To:Subject:From:Date:From;
	b=DrTlL2OhN4JrEJrNSNvdDh73DUYjN5JYIL5ZCFcSwYMvak5pWwtYqPt8BcDcwKdIx
	 8hO2DLOcBCs0ragYDDdSfsSYzyBadkjp0HfnWlDcfuBGCeE2e36/VFmbN+1EhC91Bc
	 IC113Sk/SgXv9oPmS2JPrb27A+6kd+ZELRXNPyMcg2vU2Npoky7YAicu/UAGCGnLUp
	 ZyH+eCcGH9TP2xoS7XeKuKrE4Tjut2kGXwPRlzoL/j8tLU6k/awJ6qYJem496jXsoW
	 GoQNwAleqmblZMYIjWqZxr3MBeftC1B2r1PoFNXuRPBbapTJHZvARj13LqnZ6f/yAD
	 dpeM6BBejvfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB82CC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406379369.16491.5933545447506240881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e9b499df688ec6054f08bd9aef47d3d85de8d5757083332bef90530852440f
Date: Mon, 07 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744063793
