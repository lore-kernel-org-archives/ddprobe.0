Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313BE199E94
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756025994; cv=none; b=o2I7xHivDhKxmjPfuqbwk4H9APRLj9exyCjDBceX+D+3KhnE3Qtw2maNgE2RPs9ZjzpAs9QJxda5LCM0Ih1LSxbi/jSkaxvCtX9DsxqJxY77EFMH0ruvgjCJOYn6owTN8jhVyKqW0VfEKnCXXa6FgXzX6HDXwhoqUewEMoe7hto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756025994; c=relaxed/simple;
	bh=eGFpBcFLFA9ZBCZ+hvVuXrls//WdeeCfmSeZo/hwFaM=;
	h=To:Subject:From:Message-Id:Date; b=danLxr1BRskib2Q0qCpO50I17T4KunTBEc3lQJtUIi2g94jhITJegTsJvgt0BZ8DYAiU8yIhCExi+s44TGVVxtJ6P/hrSCfzgaIwSN1dVVwayW3hG8EmMMjHr6igylJxC0OUoxEYJINy9MenjfJ66lnEnmXlU1t14tYG0fxPAj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTBvtCr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTBvtCr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2183C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756025993;
	bh=eGFpBcFLFA9ZBCZ+hvVuXrls//WdeeCfmSeZo/hwFaM=;
	h=To:Subject:From:Date:From;
	b=pTBvtCr5R6ovQpAsTP0aptGVFLsTb2WOaRZHfsWqlV8wwFmrEPM/2h4F6ZlIvVH72
	 a0xsYMaQNsJvMXHse77UfGMdmUawqMIv8oEf1nOQs5oqWy6rvRQDUxY78eGopc+rSx
	 nV5G88TZEewhzovXMO3WdaLgu5TjMWwiEcDv90kXRBd/BQZNi5sUEWvD3cmcCLFYyU
	 0Rhr0T4Ikegw2LJmwGh5cbyKH0hsQ7l6Fhlm9kTxbSN3sIlHDxkcrxF0DM19huti0G
	 OBvYc3JCRIQ1UGT1c+7VvbCz0tfeAmqEuYGRT45GvNSQfu+Mv2tQeplJX8cRzgTEH9
	 UZvu0PN35aX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F990CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602599358.26832.615333380466438159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e5f7cd822cc5eba304cf7c36c112f0152bb3e386806aefcbe776e29a96a15
Date: Sun, 24 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756025993
