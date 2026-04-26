Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218AE1F16B
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777199854; cv=none; b=C2r9jPuEhfT/SfL/Xkk73syvzS85JMyvN6ddbm5d6eOyawATSY0nNefK1aqwHYMn5ywiuqgzeCOQmKphfpwy7/ila7pPZy65A1QVLTSERiJnzN9gQy9BWuJgR4hwkUH33BU7usLlqSX4A81IivKDbnCHGhf+ifEBQV4xQgYufyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777199854; c=relaxed/simple;
	bh=S69FndznR8JXzrOmSQlTaJdQtyLcGZ7x8RPWSp8Q4ao=;
	h=To:Subject:From:Message-Id:Date; b=bH3m+VzLWDBdNj17lFr6/ApNwSrHQeiAnkRyJMKjvPH8jnuD+2DQLfSlcAl4VrWIWk/FetMs+OVIZRuojKNcG2O823BeV7lO9n8J5sdKviNAKC9hDx2cdLDBzR3omejfcYFBxuVozZRShcEbZA0Tb2tAP0vDk01ORJ8A+DjOUVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7YxiW+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7YxiW+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1056C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777199853;
	bh=S69FndznR8JXzrOmSQlTaJdQtyLcGZ7x8RPWSp8Q4ao=;
	h=To:Subject:From:Date:From;
	b=u7YxiW+zBZ74EMm7AoSDCZV2NLrxvHM8pBXfG0PZvtohI4Gjewx1W4RE9fsLgJ8//
	 sOfrV5F8O5nvj/Adeuts2J12Paupc/pUdJjKes+QZsBkxJ6XHR8jGq4X7cBH1HolJC
	 0A0Pw1VhnV9tU772YCza0cxvsuvd5DoE6AAL3AxK2IdKLVVwfYq+LkCaSzStGVaCzm
	 5DKqRUHJuphg2Y1yVQjzVaN3cpk30K0Cn4ZhgjmD9fVZ7Q46Y5CH2+V1WEmAyTAJ8y
	 G81RuTC6P2mghkn+CQj+C7eYyTcoRsDJclOgA3ndfdcio0d0Ock6Con+Nuj7ssR3cU
	 w7hzOIhG+Ryuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F2FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719985368.17992.12484026260801764580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3a050370ae9fc57578408b64aa4d3d977a342aaec264557b5274a188161965
Date: Sun, 26 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777199853
