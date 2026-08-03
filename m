Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037211CBA
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785726034; cv=none; b=jGVPB5zZrvqV5w1AiCGTJ9QIfU4PTR+BY0UQFakrwq7LCoZyDIEX+aU4k/jYnaDqYZ7pbjIdPElqJasnxoUSKpE6UbUUGsJhJEZzdMaQv0CJA7km7l+QcRLNtCB+eUkwJZRHvK948imc8oPUhhxZpatvR/GP/+7rQe18isH18fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785726034; c=relaxed/simple;
	bh=U6iryQIsthTbaLmINQlEOkIM4NgQm8ymPKdsA2YineU=;
	h=To:Subject:From:Message-Id:Date; b=u8QJlY07w1PszI5eSWNw82BaNrgKRtAELFtCzkKqRVkGIMW/EwnuQtS5MmGElJ9BOVR7zSuAT2J56SOvqn57dio4MvOzzecpwVMSeb/h8VTXVcdJnNteKhnUEPzuPrrUvLNuXD2QTRXPe/EBDk+ktydJ9q7O+8GHKw0qygqFjis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQIDmuze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQIDmuze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E00C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785726033;
	bh=U6iryQIsthTbaLmINQlEOkIM4NgQm8ymPKdsA2YineU=;
	h=To:Subject:From:Date:From;
	b=kQIDmuzeCc8ICjZQBjWJwV7tpTrXA/3yjDDpAQnIDKlO4nhf2RD+FX6CssdflCsws
	 BiEPTB31UEX0ELoFXnyrRSoagQ2joSB5eKtCKWnhj2moKfo2J+C7dgW7dvTpe4Gbz+
	 jMw1u+//rhOjZc2BUGmtnJohhOS13AnGOk3wd8KNr6qay1aFhtGcQEwN5voxk1Kdeo
	 DUb7s0vVnzjH4IWzfVbyubvavX+ZoLp3WcEq3ufHUJWACup5DxE0lMpVgdiqPQMBUL
	 acJd7g4BCoVJ/lj3x9OytNRUtYteSIfQeC/ZhA8vR977SO1vxBdG5tbwpjhE35LOkV
	 FrpecLO29QD0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD98C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572603370.17492.6939747208545641644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c252baa48d2b07e95f6ded956f5dd1e9aa1f7c566b9b5a155b7c513ae601d09
Date: Mon, 03 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785726033
