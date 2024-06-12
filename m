Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB4316D9C2
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184503; cv=none; b=iFlk9lD5ATPWUEdy1FfrmcQIIIf9bQTnbyaPTAO7F3yl+ZmUBv15nPi6LCd5ak2dxz/g98akWCQDFytPkQORPkGFJuh1F74LqS2PGmmE1+M5nQe+993fjZLjUk1MdHah6YjJ7wB2YkhPWU02qiv/OFDcPLN4w5DX7T4bxwM26Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184503; c=relaxed/simple;
	bh=HV+vsQiLCRmILNj34mD63zPnhi5v2bwFlsmLVVf/0cg=;
	h=To:Subject:From:Message-Id:Date; b=LzddyBiVUauDfo7HIHuKmxseN61MUklAqCDV/E2eWKV7xC5oFextet9XXE8ukLSppD8lCzw22xgTxo+yc+JeEwnDRJkPG51gCYcdhj90s8OjsPHmw2P7WVnhT+7pQcpNFurUNgOOU87qyXuO0N6JnmLnwjxVX/L78MjxcB9upfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzjRPxkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzjRPxkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E556CC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718184502;
	bh=HV+vsQiLCRmILNj34mD63zPnhi5v2bwFlsmLVVf/0cg=;
	h=To:Subject:From:Date:From;
	b=TzjRPxkf0ZtnTpkN9S9BvkJVA9+sLtLNasDdYeZeeZQYCc27zT1tcbJUQKaOr9mz9
	 ZJTZZ8Erm4FGT5wQenp42WnTVXMS7yPgsHNHh4VcUETfVpuwQdYN/Amk1W18T+YL6z
	 xttz9YS2URi4iR1BVaxfidcZgtz0gBW68PAfZophMgT3fKJIvFVaEbWheM5LgTy+x9
	 GWYS+SF3fNXhZWz/jruR1/Wo+fFJMTb9Oi76KFmIxVmiYxtF9Sv9JAu5Hb+g99PqrU
	 +loivUXmohlsjTSF6WAqoU1twPjYk/SRXZFmvRDwhxTm/aXJjbFWyEoQu4r0pTHcIo
	 xGe2xvFgRM6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC550C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818450281.20819.17001719211881080278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8ef6d99e5d6a226d0281535faba1d82c8cf5a703186094bdc0082bc08b509e
Date: Wed, 12 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718184502
