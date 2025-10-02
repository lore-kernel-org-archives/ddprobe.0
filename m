Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EE234BA47
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759386594; cv=none; b=l0LQv271j+NeUf+dpEk1y8NUkDMW+HySgyh17ZojCt0GXCfQ2zfCBLfuAekXEP8Xxh/I8pY2MaIoSM1twdet2Z2jJFaAJZHrQ4UVZbvvHEyHMkecf1PBqIRchaDpPAVuRycImt41eTYdDsclF/BQY3tPY+Gq0x+fx1PrO7QEwLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759386594; c=relaxed/simple;
	bh=RqA+LtEaank7WTnoL292oxIwwfVzMk6yO8BaxICALHE=;
	h=To:Subject:From:Message-Id:Date; b=YSibSlXCHuOEYLVkbfmFsgAF8irizTNd13F/+X/J70K0ZGVVontAh+4y7gc7ggXSFfKVQC4UgRJ0zO91S+zLhwKhpN5AY6AlS6LVnnMQt+gQM5pSAGpmKmt6rvQinRZGIHMD5aApFfgiFrf6yyZ79wm9UfM5+hCR3gTVTvUkoMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIMqaijL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIMqaijL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A43C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759386593;
	bh=RqA+LtEaank7WTnoL292oxIwwfVzMk6yO8BaxICALHE=;
	h=To:Subject:From:Date:From;
	b=GIMqaijLtDyrl636hW/fJyX5JTu2SFSEUNoxYEf9NH5rg3a4uMvqdSEaO7RnAWIDn
	 KLkwsGd0YbJMhAwsi6sDcTdI9qmG9bC7zq1YMCBNOZo+m+VD4t7CoFoC34rTrjUUoG
	 4xV5hw8ME2fxzYa96CYnVrjOG6Sah/qy/rSc3HjV25zFugA28qfVnsvC/FFgN5DRCe
	 iJ4ij4zuAdJPV55IWUWfXXBKZyMQ/JiQeTZWTRK7nQcjDZf5cpf6cVJY1Aijs/nrnQ
	 ZJCG6gtrNEGUGg/R+iOyRFdYh/cWamO/YsWqbavvUPhEkgcmR+AZC8KT7kPzq8CB5u
	 Lmtpt2BNQV/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C10CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938659358.24735.7987531014632686359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bff416fdaa639b700d16c37ee83775f2734a923f44ad8579f1904eae789d673
Date: Thu, 02 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759386593
