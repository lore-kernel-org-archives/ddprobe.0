Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F4E23AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750810793; cv=none; b=g3lnDklcci/yS8al++9d1Co7aKSYxneyjRxFrk51KfYv0xVoU5QvxyYdGpnT2iZYDP7bsBVAwEgIdGzrpKyAl7arD6BEaykK/zmRSVkvFztjqlIEYSQQmo5QEuulKPivFkMy73yzvHQ+cnIj2yfOpWuHLT1hEwNNMgrGsI1qhFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750810793; c=relaxed/simple;
	bh=VmkJfwfqea1fhhp+r6Vcnqaj/57oiKZnMloUd6R8lA4=;
	h=To:Subject:From:Message-Id:Date; b=iHz8PpDMgByrNnVaA49+bEesFZx3kyYuuNJ8N/cing1ny3JsuYPmQtbVlhp2nDzlt+jX39TTFDsYIwVGUzrKvn4OQuDPDs7xvsi21AhR9rlHNr+8ADIs8d5UnLjkVPhZafdvIKi3sQNgeGonXPC/SNJo+dWVvAq9T6+nD/n16Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCMwP8vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCMwP8vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750810793;
	bh=VmkJfwfqea1fhhp+r6Vcnqaj/57oiKZnMloUd6R8lA4=;
	h=To:Subject:From:Date:From;
	b=DCMwP8vSeVQDvN9Nq2XF3RsRPJ5qgM7ZiaEp3bhaZnWG+2h26FcY8chjrX5BiqQhq
	 1VaoLaXCPBMvi8Y00jwyPGpMHuPyRL+baGXgBSXnObT2gWQciOGiVj5C+JiP0CaxrL
	 4TVwTr6h8A1IAmu+Z5W6TSHcUcxWrhveOfCSrCcQ5hPvQW7WCdcC7klkNmX95fZ7O2
	 JzNbXVAPqnjHTpVR2bsRlehV7eUzWW9Gk2W8cLL3SrQ7uvE7cHqbQhC0gwPBdhNId2
	 +ziTjqSmy0dHSXwEYpqhYhCNZ69Y292hIDZ/Gf0UNX1E7jyg2XKi2GRlCFf2hKJLiF
	 QCw270Z9zpCBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C6C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081079357.27898.12891967118287165727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a0a9debf99c2bfd605ca2f7abf4702a1cd6db1c06855bae26aeb494e03a1b1
Date: Wed, 25 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750810793
