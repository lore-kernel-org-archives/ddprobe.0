Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9263EC803
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785348034; cv=none; b=C7gbpuRbJ+KEVwzLyLbdr1/s/TYnrmIrhRifDYbKWTJPAuGYPSsnYPVM6UOoD5bS6uctiCsxODnnoOLZGxJiO+++pBtjvs42MlPgHv7Da0p1c3kjaZFFMPohgeelNMe4hzMnqqHu8Ha8xBIl5a3ks1AsHDh9wL2lgWxpSg6xwZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785348034; c=relaxed/simple;
	bh=7JiCix/fmVbyB0o9rqHkfWFqc+LV3PGEvJM1oVwj4EY=;
	h=To:Subject:From:Message-Id:Date; b=bnUvlwXvTBw5doqj4u0LUyC4d05qdz2a2W4FwPoK5Br2yK09mqdIIagxkoh2biWyfN5ZnAV/w2Qhmga70J5yzy+7SOuIMi8qpCjKsT0fXjfWdS9CtxPez62mSxCgBv0ORB8oOK8/7T4pDk7DOPto7Qx/NBmMocA082liwzJXDt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyhMQpSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyhMQpSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB963C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785348033;
	bh=7JiCix/fmVbyB0o9rqHkfWFqc+LV3PGEvJM1oVwj4EY=;
	h=To:Subject:From:Date:From;
	b=oyhMQpSNLRE+1aWpY24UUwBMdYu+X+VEDVsek0JYbcf4OcTIXoqoMAyvenUUlo0t7
	 Gy2p/gTSL0ywjWrj/qacqK6WlT7vuSX6+rxLcAPI94QlOc0ZFPMqby3j1ibxaqbfUp
	 6zDOl3nSPBQWuxCODdI6jzc6MnHrzGT5tahMnrZ1oDstp3qRLX9lvX7maVsVKWYo8T
	 bW1d8UwQnShQPaP8i2uqbwe2OvItKs+z0uD+/iCGO23FZROINfWHnrQAeeRMlMjDPS
	 qAjrenlNqrKVef/sDgnQihAyK/9fDRi9ASTFQcEMzi6Gg7gD5yyR79lAIW9czxUt+h
	 BbUgYbk6lOfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F75C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534803368.28640.10456383423450611151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765d07f7124723a55ca5afcec69fcdbe3786b7d3af8f3a9871ea71d277eeefb2
Date: Wed, 29 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785348033
