Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5423F1D9A5F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785681634; cv=none; b=NAGIDDOuC4/zxb5Fy4p42Nc6ecIZzOvq9C1nSEBS6rOBb5T31PK8bV5qSo2RkqWsZnu8McILb2xmkYiKEcnejRIs9+M/XZpbcrxHjwubIR4e0oOC40zoqCME7qFjCUhFgM/A3w3gBikZgdjjyM8TYP7ilJAfnHxUUnQP6Ir5UI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785681634; c=relaxed/simple;
	bh=La1GPe3cOjhW0FSgqgjc8ih5Nu7dPLiFVmmC60Ra02c=;
	h=To:Subject:From:Message-Id:Date; b=TUPzywFJzpC5IFrCgq1CjXD94pMCczdm5rE0GT8WDT+TwT/JwWlh4Sd2uChi640o1aL1g7FK6xuy7v/OJBgMfwwm3mTmodMjCFtn15+p2hdHj8CoCjVj68JGqLedLK7KFD4kkw5EPR0P3kVOMMJbAOknFD19cAK2kyYzrkZdBSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2ovXV2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2ovXV2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBF9C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785681633;
	bh=La1GPe3cOjhW0FSgqgjc8ih5Nu7dPLiFVmmC60Ra02c=;
	h=To:Subject:From:Date:From;
	b=Z2ovXV2i4ZEYmzKvXd0gIyTKpZpOI1uv4dtA7L9u/Lxixvd2g56loqwIphevUuD3k
	 MdBtg6vBCD4Hkbuoe/sUWaO7TnCuH+np18pn1BuNSi9se//s/0iVv2VueQronlJHCi
	 H+e5F3LS2+ycQ+tE6NwHXBl1NsHT3NOXTPd09/NR2GzcoZjCxzR21cBPCpxTh5Hvpo
	 i+pOL8q4jNNHVQmi9bngpTW5aPTmQ5F3dLRRSQzooyClbgq/k8HsXNB+PYM6LaIsxh
	 AXfS+c1kRkkKdWze254Rk19EQbio9gEm2yX5WsL6O7Vr6Nb54u3AGon7iRkMud7MTd
	 Aj3EtPalcgRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966EC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568163368.25851.13281531376079431248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d4b77219a93280c3cb346d0a5d63da6ff57fd4a9cf2407c8d29c28499d4842
Date: Sun, 02 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785681633
