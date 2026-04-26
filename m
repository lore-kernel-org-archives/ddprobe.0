Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F03ECA4E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777170454; cv=none; b=sQui/rsOxmYjoPz16FjY47uaCc65Y+sBlJ30WfAysk/wRZkvucUIg1IxnqCukaXUzT1wSOB3MI7LkEt3IQwtIFCv+BnTOUOVqcmZrm/jfmqpOplqW1MXr3xSt38jBNa+4udIJt/hlbp6oOGDySURg7sh1MC5+xz85oMcPMx+2Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777170454; c=relaxed/simple;
	bh=Vl+ynvFBD72UqGRUhrRmk6HMyjaaqBF428MZyP8s3WI=;
	h=To:Subject:From:Message-Id:Date; b=W+wdMuLtTRJtjisOMBA5fjBaK3zIGv/qBHCaIQKBgNICElTMxPq3uGyeDiMTs6CsCxqn8QYkm/IhO3ruza7+z33kjBHoWhGKUbZphIQmS8XeDN8GpFGikUDgdvVjC2m1TPpkDBnC9ooJPbVWibjjuxDFD4q1ZhnmIq39zGGsQFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLXs41Lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLXs41Lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1211C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777170453;
	bh=Vl+ynvFBD72UqGRUhrRmk6HMyjaaqBF428MZyP8s3WI=;
	h=To:Subject:From:Date:From;
	b=YLXs41Lh1lhmqDwNF+H1/sNT3zfKOonzDLkayC3/C7bExRuFwkxvOpVRSKWAvpoEp
	 mGw4J/NJhTMEanq+gaE1ACIV/vv6aqp88TNhBpLJxsiLzaF2YvkJ4T/n4c5v/XZ2Cl
	 fnmd9FRLnZTGHoELd1YKpj3ZmfoyIjgmGtkdR2MulFOrOaMj/gde5RC58E/rKr0eyU
	 u5icykSjWIYSh8QVpiYQ6f2U5tGwgMwLCNidqFSa1IO6Spu5OvbWAftGMSXSz611WA
	 zL9hKkrsggajEzYSQNzGkc5Kz2Pe8Or8jvSM4OxidXrl8YH29QGvjsdJY/x3P9/Yww
	 t1GYUXJ9Gxw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF857FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717045368.12654.9325853487528614622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74e46b8351fa7d089c4ff72a0baabe975b5c130d53cdf97598bce6ffe105e5c
Date: Sun, 26 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777170453
