Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8940855
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786063234; cv=none; b=GsvX0DliyC7+qo74W0Y+RKCwKub7b7ly/dNffwqoBI9LydMlTMblMvnAdLC2GVmS9eo9PckGvdaYT7G4ZfDvw07ahtZmgistREYGArvAaDQgiujugOk1r5uXsFyJEA7J1wah4ZJXX/5mlx9KJdRxsF8YqMbCkh/xuPHHyeCA26M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786063234; c=relaxed/simple;
	bh=m+aTIsCf6JCPrd1iGYKJFmrhLEk16JNlLini/YIzab4=;
	h=To:Subject:From:Message-Id:Date; b=tjhCmko0syXPx5yNlZI9edkxj5QfIkk6dNuhLckO3kIYZdEgNFiauk/ecWMCkRa4VSz9Of/yLhloaN8QHsz1HG8WcSejLUQII/tMRunhxfcSA6KCad98watwsT+XfQzjx5Jzj1cWDaka0xV3RizED5STAOrdQl2PJXJPzD2PSX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSDlE/a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSDlE/a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2576C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786063233;
	bh=m+aTIsCf6JCPrd1iGYKJFmrhLEk16JNlLini/YIzab4=;
	h=To:Subject:From:Date:From;
	b=DSDlE/a1csqpMABfal5hKqJQUxUIltXcuBtrIZoJ7LTGtiYVURRTtVBne5cbUPgcI
	 TO1oynLGRhmkPRyngK8tttAjjTw0m+yMp6tLcYw9WFlOcOeyrJ7O7jBGzERAVqS5vc
	 hi76AZyy4gfw9/J0ha+BoWorcYlz8rkglQchv/6ILCIQ4Ycr2/WETPS+IP7TkYWuUD
	 kKt4GKA86+6Bg0KCxv+sLtA+sHeoFrU8JlzeIaa2n2NGbH4A4jHlpZ5zhoDl4DhLwD
	 12YXI2olhn8T6f6TJK3qmiqa3PCjU/c418sRjCYVbUB/b4hpIDvnqaiPJjMAQMMfZ9
	 31DfbPLaZjzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB08C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606323368.25703.17665306296861406921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2956e007caa0ed4021009fb429e67a4c68eb077cc8c2a1e951ddf6b93a36076
Date: Fri, 07 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786063233
