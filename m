Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E417C69
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719169943; cv=none; b=BJLkCI41nKsmACfKBYrdHgKqPxJcB9Gkz7xblUUI2os/s/NCs7xmA3s7KNcyRLJ7zGs3vbXO1mr15PtXVreshn+jbiNOPAH+qd6LhXWEcG27KCZxWW2qEcQceb+8Div1btAVOwpfuS/o/DZqgJaDcBbPhoEwddIya7UNhETuiwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719169943; c=relaxed/simple;
	bh=lIV/Ot6k2NHBLcgYjAZYnsd5pzraUqVsWXbdtcNv2a4=;
	h=To:Subject:From:Message-Id:Date; b=hW06E5nIuliQ/Y3dquTyU1eUmbxubmWQ7wo2jn9H2gv7SDV3LM7Eka6/JPi3olMc6MhLR4YyO2RC6oMDNDDvy0SLA6TZUQlD9PJE0tU5qgMM875nHksYEMQwoFTsTbdwN26ZQI1qDgmTuV3ByoVes+VCV/wnyl6lIGk9YecQ3RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyITWP4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyITWP4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2F6C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719169942;
	bh=lIV/Ot6k2NHBLcgYjAZYnsd5pzraUqVsWXbdtcNv2a4=;
	h=To:Subject:From:Date:From;
	b=NyITWP4E+UiyuViLAl620y9Zn6hettQ0w5hk/uF83h9fKDr4hW1Jf26zNhsn7aa48
	 Ct68Zkm+m6cCy3bvLRDjB7pFSayqWBodEDZvgi2JsOTcpbUSAsGRtCnOu/rR06iPSe
	 x+Q/U8NNKSk4cBhb12Tm3eqTYUNaRR1wJUVPVCd6D65Bs7T2ydJ5q5tt2GrbeqZBCQ
	 EBSeJH5YF5qBWhZBIHIA5hOcQpJN2a0YGZxeFvQxQXn5BKCF79EqkupTBfgvPFe4LZ
	 y4A/cW3Ko2QUVOjfr014nxMyVTE0BOTxHHSNR26YW5TxmB9hcklaOraGqRgv7GMlUQ
	 gRceEjDS9eMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA20FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916994278.25080.10303531606368869240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9406e6c780f50ba73fa3b8c6ca6b20f4c7ed7b1710bc89838ed30b7808afc7
Date: Sun, 23 Jun 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719169942
