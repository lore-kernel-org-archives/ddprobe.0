Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECAA2F12A5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775549134; cv=none; b=cnhmuvI5Rwc4fq6/KU0+iV8mUoNgSO5ECVk/Dc4Hqq810v/pCKxkm4hlrUIHrR6Y4jBU9WnJdCaUj6E5mT1ONFGLuX8VMaDrLKoY+6Ay52Ke+CzBfSW/06+EO0UHJ8r/Lm/kLpp20Pr4TRxa/DzLT7kW1NlUMHvZ1PZ7JcOpni8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775549134; c=relaxed/simple;
	bh=gfS9VecjCJGCVo2+KyV78ulsp/Ze7Py0TNFYPJsqwxw=;
	h=To:Subject:From:Message-Id:Date; b=A5b8Bjj1gYLGsm5/xEMQ3Cskz25/f4Ql8WnLPfvKSQ/L2m1RS3ZY40vdyza3Zw75lZ+lSAUIW9OLK2gVgLrHF3v2rB2A5ZTVScvsNPr97OTE9EDmiVpYX3843X113a1cw8rbgD84S2sNwOzSkNs6h282E7R+ycBXdDEPQQhVTEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgF9PsJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgF9PsJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2BBC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775549133;
	bh=gfS9VecjCJGCVo2+KyV78ulsp/Ze7Py0TNFYPJsqwxw=;
	h=To:Subject:From:Date:From;
	b=DgF9PsJTFxuaXOQJMxt/+MOWQBi0CMoQWvWbtwsGWq/hK/bl6UU8EpCIiQ7fP8ceY
	 WWPZEc6xbiDvDPQlVDURMjRjQCrcTN5jlwNFHFT16MXYznOMtKYbXvPjmyApPHU7xD
	 RqllT5VYFcoQBsk41W7uZWA8I5eOTA6PyvS4LHeyYywTXxMzw3qWV9DHOrp2Dmj3gm
	 JRVe/dXC9YgJWQ/G6DEOkD7f6/vtgyA6GhbYm9Q1CitAmRDLkHpZsk6stSGESWu75t
	 yFO/JVWdrbKmKPa8WWz2OqQ2zRTtQExGuImGAlqXYt3BYa3CzdPQk2jpLrQsuuX27y
	 DLK3ztCMEhb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E2EDB7CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554913368.12342.16116749793000249334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7050dbb933d9b0ec2b2d408a3203218a521f17ff6085686647d1138d4d488e
Date: Tue, 07 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775549133
