Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDCC33EC
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757338194; cv=none; b=VdJgNK9QmRAZJD6aGG5N5rZbQHPuL2ljU8vfWENXS3X6o/FdvtG3d1K8nQOp0ZIyTAQgkYf1XHouSn8ZBFGwHTih5ChAs8qcLg0dhh+aiW9btX3NLtwoalF49BhDvs8KRLExOw3aRBJma4EYMWsAM9sQ/a+gBRuLz0voyNKQTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757338194; c=relaxed/simple;
	bh=zxR0Pg8zFVM/YZlh79IsqZ+FJyKa7Sfexu1PE1hs6lg=;
	h=To:Subject:From:Message-Id:Date; b=dGJdBwe1wPwB2QEvV/SIjxiZw/ialOb3J//RNSL5KYHA3+BEulGmjUqKAItRqhbltEqWeJb8vv4QUno4HoN/GRdnxNUXzw/vmRkfhY5sJvij4czE9Q2dLVDFXif4AFmC8l5vjTe9mGxXlz6F5SLFgg4GBxEpfU84Kv63zIrNFqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwHfslMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwHfslMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98105C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757338193;
	bh=zxR0Pg8zFVM/YZlh79IsqZ+FJyKa7Sfexu1PE1hs6lg=;
	h=To:Subject:From:Date:From;
	b=mwHfslMywJMAvkK4juLZE8IfVOjVl0WbxDmN5J5EIElorqqkmq2/C2qtACVY2uGQe
	 YN/DFPl0Yi3N3jS8EFNZp/gwzudE4HX/SBuA09PCUPpHbcFGMPV8LFAKmgecttjVuT
	 q5NI4ClNoFZ6zC8jzkgWVTA5rfBJ7YhNSJ06wnR7e1WK3vTgmGzdiySZ9hzVVaF/mI
	 BMYzDwzAOojNMnR0ZBi+ewoUiT60s+zbMhsbVV82fkjpl8oIfBHyxqV3QLfDdPsZON
	 KttkOGYnMGm0ZgADUYN2NCNFmMUHsvYTeGds3buHPyrXzOb+aPOHY/FrFckpWw/RLQ
	 CQId1u0ZiIbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA93CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733819357.13890.4083659998115153662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2589d2e74097c5062325a52c93632f78ba17c642f026d8ea8d38da75b966c65f
Date: Mon, 08 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757338193
