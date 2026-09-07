Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B4C2F30
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788744634; cv=none; b=D+kmmmbtlp2GGAheOIoxNNoambxsCuaOAe/4tWRYMDJGeyuKuIpoGmSa43fZD/pbB/FZy5dC7QBDrWNaI74lQ0tVrCgZFSqpBLfmy3+nZUTCIw39PBqROtPOgd/vsEyNo2Ef/v4huVxn9ySTjVi3+sUlr7pNH7QGphTezXzg6Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788744634; c=relaxed/simple;
	bh=0oG++7jgk6P/xVw5PH9uwYop2iVFJssxUqRDofuMf5s=;
	h=To:Subject:From:Message-Id:Date; b=kwBTsc+MD23X1+ct0XDm/EeKb1kEe7sYboD1ouKV4JlYNv+6fVC97GxfpRgM8p677BaoCuwRzev17osMsfY7If5KB1FGaowrv46nSGKyWQGCHS1DbOCyBF9CGzZsFyw0duXkWZIKbRd3JdzIS3yxD9sbMU1sAf7RKbc3QAOKceo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZlD4bbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZlD4bbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC145C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788744633;
	bh=0oG++7jgk6P/xVw5PH9uwYop2iVFJssxUqRDofuMf5s=;
	h=To:Subject:From:Date:From;
	b=aZlD4bbgM+BDpZ1GO/7m9Yann0+/ylFDJcRJz8JsqZnLEmUZzRRKI4LYaSHVdmub7
	 GFr64BkJZk50r9KRHZFXut6qVBrYvs6nFlDIKiUbbw40i5Eqh0gcP8exTj4S7F6APt
	 yl0M/I3KaFCB8bgCE0Z8a7pcJNmdLx+ut0wjnqtB9jPNCdz4+bJPnaD31DeCDSV5VJ
	 pasOtsCJA2q8jiuxDfV3lqSwY3xDPAcPxKRqFDEoSSjx4U8fY4h4BtfciZFBHY1qmg
	 7wd42OsrsrrcZQ0MMLifGvdxLTUtuLCuLiGwbUBPG1viBqJ7bx7xCLLPUXWJAWBCoe
	 SGgHvdMBScYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1094C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874463370.6966.1521461052788659291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febf03146690c4ffbfd73ecf0cfc41648173dabef059cc32acf8b2f961ba55ea
Date: Mon, 07 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788744633
