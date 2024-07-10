Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5AC443D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720604783; cv=none; b=Dek4+hVm84NGL4mPQ8AXZuexhRpV3k5GOAb3oNQdlHxF2PTe1A+FojDiZ4dc90O/XFmfeWWzGMxmqA5Lg3tWsmUjU9owPq1vYWGL4ShWIOq4Rw+nccG7zV1m+of9iN4zgzLPk3/b9frNEtOU4Rxy/CJGMtKED4oolmbWIy9FCO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720604783; c=relaxed/simple;
	bh=RLRNAR2Dk8kj5xWIAKOCEoelNAMCR1YMBIbyLoby1cA=;
	h=To:Subject:From:Message-Id:Date; b=bLODq6OQBI8iw/pRSuKzfM1ujxCEiy9MOn22iO2lNCq3BsxYLesoXqDSUl3qk9zv+0xEdRKKZDyFHiu9CtbOUt5EisBRiGECHakTIaMeWIMIja/kJ3le2MtwjkdhcVJF0bE9Jl3TW9ICXUWUvUVAC7eC59KxSsTvNWcP3CLk5WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIJiZ9t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIJiZ9t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14477C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720604783;
	bh=RLRNAR2Dk8kj5xWIAKOCEoelNAMCR1YMBIbyLoby1cA=;
	h=To:Subject:From:Date:From;
	b=vIJiZ9t9rmw73IPXmVNC/MugIoyBr7zbi0gVdBTuhgniV21dwGpXgYlcEZpBM58q4
	 R986sW+ZpRQAjVtL1lxgXQT1J5/P9WskZuD4UZaQYvAzwAiQtij33ed8qe7iB2zqgt
	 pYiV0oBv5VI86+PZLfvkxZkCxpZXwsQ6g/xVGsED1hph3igq+wd5HFHDebfkXzxMhy
	 th6tTUs/B7zemOqvLyG65wVnSKPdGItWaVo9pUQrkyX9llGuCJ17jEWYskYQMlt03Z
	 jQFRdcRViFfBoNeJ9mezMe72z90AufRWrUjsqKJP54dp2AlSTwSacyZJw2JG7zyRFj
	 o7rKlf0IgWHWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4C04C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060478290.8991.12148958201023900070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cddf10eaff625e227c19a36981e2b9fd081dfbcd7c624f936b1647929401f0
Date: Wed, 10 Jul 2024 09:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720604782
