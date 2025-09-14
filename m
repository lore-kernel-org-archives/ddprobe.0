Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1202264C6
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757856594; cv=none; b=kZUEihKQCu36yytftUUZVYJPG+BFkLphFaWVIr2LoQQHswVePBTa6Wdw3or9I28dHDSJtKPBNlUCuFr7jL5vuVv8tNOT9R56dmH0l8ndtr6Oz+ysXazgAGT+oALaL9xPbnPJ2DqOyHtCHK9Coz4DTulgXzl3Z1/ONFI+Ncevkmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757856594; c=relaxed/simple;
	bh=ba27llCvFX2o+vHt/PMgGoyhHYM6W4x2VKaSrs8ttfQ=;
	h=To:Subject:From:Message-Id:Date; b=N1/FpXjaEn35YK1Q0L2KbhwDe1MwEkb5D9190HXevU03dqF8Uf5BbxKjmscz+vsx0jTb5fvhutde9qdVbRNdP22QE9Q/FnPZOLZ7kCUG+/YUnFeIPCPuHl498i76V2694FAFNg82pSxhG9mFuYgtL17Cxr1CVYUNEsxUb9izOVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QopgkfYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QopgkfYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3DEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757856593;
	bh=ba27llCvFX2o+vHt/PMgGoyhHYM6W4x2VKaSrs8ttfQ=;
	h=To:Subject:From:Date:From;
	b=QopgkfYZUErhgKZ7DS5o1nMObnB4AD3ZhfdyyIvnx1K/TOZlC9vWJFE4XyC5ylSGz
	 gXsxQhhiaYyk8Rm1Wfff1fTxcVqAjLKIWV734+uo2mTD4HBoChX9XTBUlSpnY5oXOu
	 HdvQIa55x3bCmLSAXOPkuUKHw21jTcsfo1fTnqyktThw81aQ/Nhc7esqazftOSR1O1
	 TynIWDSRvnkQTDMGrT+Vfy7KkzFll5ZtRNNIKuzPu4nIlEmQtfnGDDHQB4N2SXP6Cz
	 H+KoMaggF+K9irGwDyaLeqUkCsm+V2Lq0u+8S4A8+91JV/2gQFCXu5M3dWuM/E+Idf
	 Rne3mnXJdPn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6BCAC594
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785659358.25004.18187865869844986149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded0df38d4fbcadc952a39ec68e8d6758dbb0123db2d5642436ab9ca0353f29e
Date: Sun, 14 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757856593
