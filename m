Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A4E15C0
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754151594; cv=none; b=toQbLCKgRu3KNhQdC8qqac71Mwr/3+UX6M/N00M046bc2sdMcO+6fva0et84MCzgiNlsvSsXB0z1gNT1PFvM4glO8tzNbwxhj3yHxxcMYUrQu9J0MI9Jf2lmqk9sca6qdI5bw0SWizB266fJIvaqk4EMjjs4orWOZTiLr/nX4sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754151594; c=relaxed/simple;
	bh=FrUyXwGJ9zvpWbyBnE6GdlwAC0RB5D4pE/Uc0zZ4lVE=;
	h=To:Subject:From:Message-Id:Date; b=t08xexFwPyj3yR3qSaKdAgLeJB0n1BMkzwtWrQXCCt3vuKyfZ4CfmenPV7VlNSDapfxNHQKelTf8VQPERoiZDBxGGvevKnLsJPrv8E2kUACsttZ/Q/tjNL1NpIvTI1JORV5qIBcyzhtI4sctGkBLwld2xPzVIXlGE+XWJzwNjDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN46pPWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN46pPWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2449C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754151593;
	bh=FrUyXwGJ9zvpWbyBnE6GdlwAC0RB5D4pE/Uc0zZ4lVE=;
	h=To:Subject:From:Date:From;
	b=DN46pPWbQz3PdDPS6s+Mwg+Jk+OfocE1YcOTS3BiE1GPG6yTH76ZDQJeCw5zJV9jK
	 Q6E6DGsNAqHQGBDKsrnk8OJALONjsvBPM0pD01TFxYzxJMUMWq/zsZpDJGUURibvoY
	 kv70DzKi3DXQlV3RRGhVT4NT+rcoVoz93xhfJt/lpQ6qlzuh4XDUl4R+2C5zUOaHFl
	 uAUYvXAj/Saw40usLbufWpW+dQv/2Uz+wuGHhQ8P2nAu/5eKnC4ljVPfS8ODmNhmin
	 PXkxp6y9daVIm9JyTV3YS8DyY/TK+zSWmSMScoJTyo/zo4D9JA9vinxcM+2na+fimI
	 1mxVABkTpm+/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA6C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415159358.16134.17464222772231579024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17f87021bf7b563ade2158d1f32cc9c609876defa8f51a5cf5600e78a2256b8
Date: Sat, 02 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754151593
