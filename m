Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BFA405F7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790886034; cv=none; b=gw3f/Irm+ZyonEEysq09WZ/StzSd6kurYjWlkCDSSkTubhtjGbPupJs5lbPwW6BmJeq4+W3WYswUnnx+CsvoNBRyAzE572oRHDqtX5nc5R3rJLRqIMQQ96WoSoSL6P01rCKb9G5rN7Z+BSFGlq0yqkrDHvfuL2+xVISeAkkSHLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790886034; c=relaxed/simple;
	bh=v+c+2YQF/RNP495+h5ijTJj56LU2gr0r5L5jiMgXklA=;
	h=To:Subject:From:Message-Id:Date; b=aQB34mZeU8Brm39J+dhzcypb3IE3Yrl7wVfjHXTd2itbWjsLgA0buTGlLFFbl8nXgnx5Zl6MLVl8TbVPHREB1FsDmUmtzTsmAEnH11wW9LNTiev05pLMRohW0CzS93aSQ2lqi4oqWu27VU9lzjo678C/pqg8WNr1FT3fdYiyvMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4EhdYUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4EhdYUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2601C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790886033;
	bh=v+c+2YQF/RNP495+h5ijTJj56LU2gr0r5L5jiMgXklA=;
	h=To:Subject:From:Date:From;
	b=B4EhdYUjIKDYJnS1NNIZKL2TZ7agsNH1a1Gok/KTcLv79pEB71tS5ezQsnjMEH3iw
	 Obqibinp/bgtqCXstllvWmwBtX3qwntrpdlxR18VhJLbt0f5XPPdKHMihb4SJfTIdk
	 kTDRvnzZ5mT308Rn3Cp0SsBxPibLJ0SIFsqcCpZ1jFsSxC2yrWQzVjyaVc3FN2YQ+N
	 BXRbsP5e167jZEU/nYckrZVBW0ZkqnRPhU+5ntvQ0qZvHQonqOI4aVQvCXZ3ABYzv9
	 baRuAdTA1/5jByeoNTpYxqNK2QgWkqnlFHL13wgC063hHDth5S+p2y+bmeV9JBXsIk
	 xeGCsU7z7LMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C5CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088603369.18344.1188643872010515138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d0474b71ab5738b47487efea4bf2c6e6a91616adcaa63a65d958d288dfa135
Date: Thu, 01 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790886033
