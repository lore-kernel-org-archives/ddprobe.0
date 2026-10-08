Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3784F489FDD
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791501034; cv=none; b=Te9TFEaWLkzdccxKTM1gw/MkTkfNYY2HL2ZtQ+W0WC9sMKK2X4TGTGZT4AvD9C7ZHmJfo6vw+MsQR9YH0O90qbNLAJ9JlN1zHk0CAKixaF5N5D715CYHAsL5RcXVNHmlAruGJAG30CKOdCGmVLSJsHuYABsHnKlfCzhaBg6BBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791501034; c=relaxed/simple;
	bh=Mrug8WjzXuN7gZR+noUZ8Leh9f0vkJ6vN7jrkh18IAY=;
	h=To:Subject:From:Message-Id:Date; b=fiUIv+Nrbkk0oPkU83jRSGSMnAl2ZPemav9U7ktZI2uz9uhlAI7ntfL7glZczAeRPaCSxCx9ie7guMAdN3jCpqqCU3WocwYb8I8YRt2aI9uDBt11B9nshBla+hJ3fdGd5fRom0TmEZxsqGCtbJqLRd0ME5+wEvCk33cVWkw1CtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnsVaX6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnsVaX6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDE8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791501033;
	bh=Mrug8WjzXuN7gZR+noUZ8Leh9f0vkJ6vN7jrkh18IAY=;
	h=To:Subject:From:Date:From;
	b=pnsVaX6nTcO/dhr/pTCgG3KsQ941lGzOqy/Jice3z8FzGt6w0ml2nSw5TKevoZ7c+
	 SauVRH5kcKkSzMSyt+S15iGckDJXQ/8UJuuIB1w6iAAwZOCCgcgEeGYOc3BBnCZx7d
	 F8/cT3kluPbSPr2wrIcCt4eVNhWd3vpMCP7dFoeTfgNkURLTMdsBl3lNtbqn2o/X8y
	 pKbvSG+kes2I5NG6c7r95O1UOvmvAIVa1E0GFm8Mb2kdHLih3x3auiB7urb3akRhZs
	 p2yEcb/cbaq5eLyikUGuHKzijbV3dqUrB9VLoifZyI9YEH984s14R5mTfJEmTFXB0m
	 uI+ebFUz/0sPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA761CA6013
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150103368.23066.9490068310908715912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169e674ae65dcf0ec4a329f127c4156c11fc3984baa5b03e4897c8685582c644
Date: Thu, 08 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791501033
