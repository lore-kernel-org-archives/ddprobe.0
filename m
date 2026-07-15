Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8512543F088
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784141914; cv=none; b=m1rsaHMJ7IUq9Ta+xnMGx84LDUSbs5iN1ByS8WPxRkq/Uu668S8hOiLD7cs9cJv3zk9YNa6gCFvIoma9bzBHZoVPcheMSSQnZdJJ59kyUgu+hkyw3FFVPbk8fZa4B9aXpBOUMkvPWZJqSoH364H5a6A2hPmVZ6gfKZqhE2lQ1oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784141914; c=relaxed/simple;
	bh=dtYf43XxO5QgCHyboXH8tWjrlsjAkeX9HPdZWpUGS+s=;
	h=To:Subject:From:Message-Id:Date; b=M/ELp9aEvswgi1nRRvihS1i7cBgCtEofmVL1lLckVmmGkaL48jSGZZUYcTjv6PnUW+H0TLTE4/WuuquntWi41fvM1uIIRLpfhVnxDU3WJdRLRW+UVdEhUmIzoXylkDRuaRaRus1pPjBc2BItTqsZurj1ZNAbIyEqGZICxPQdEpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMep9x/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMep9x/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784141913;
	bh=dtYf43XxO5QgCHyboXH8tWjrlsjAkeX9HPdZWpUGS+s=;
	h=To:Subject:From:Date:From;
	b=PMep9x/TFZXY9LP6gCEwYINO5QrNY3bj7DxQWwUbmxDI9/gAN5Goe3wI8yIxoFaKv
	 r5op3dBWqTiPpIHQBYrPaNAh/OIXMQ6jE2LohRKtRyBPW+lK8P2PzzZ+RZC759qbPa
	 gV44+p3mBcrt/gz1hRHOV453vBX/42cmVUo+SfcEOJpDFXmTQxuJA8CdwpM4/0MXqm
	 A0O8PYsNTO+nVkEr/IcvxoSmQug+npkP+588EWBXd2hju6eo9lkRb2RzrSMnEguImR
	 n7PgX7lRF92lc7p4GigutnoNi0darldDLCWWtSmY9SbyB7lPzhDf0C/jZoN9u+dUwz
	 NkqISct91W6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B17C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414191368.18793.13818424758662227708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72cb3d56e824a3735adc8e47c86d72a6c08983f8fc4954bb1a0d074b96bd880
Date: Wed, 15 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784141913
