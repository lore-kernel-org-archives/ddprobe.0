Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A172BD02A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769448834; cv=none; b=obXbNnGoqoIUqWuo+ukWQvIjSBRzP4PXBAr1Mtltt7vezh51dXvTdC/xJYjGI64+qm6xhEnt6YvjiI41jnODtGCx1j1gdd18AfJ5GTuETCPfEInykY5wq3jY2cKt4rxkq4h//1izUhxEQw1g2CUTy0APaCZ/36yrdS2O3lqlvEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769448834; c=relaxed/simple;
	bh=+KL4uqUGwInO55l5XvjU4EvJIeq/1TW2Tbi4HKDnMfQ=;
	h=To:Subject:From:Message-Id:Date; b=J4RuSidDO/QMLnfenrQ7wQDHdvY4E4AfH/neFjLZQv+wDQlKniIHE2+NXWZEV4W8eDGbcvgkb0dzzaQVKtLJcYQqBmeBdXxnQncrxgF1HOvlp3DCbPvnTBdgPO1pLi3oPT8obXCXDR57EeKBvKf4KAcu4VZFqcT/B5ba2Mm8OTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUMoIwNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUMoIwNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D99C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769448833;
	bh=+KL4uqUGwInO55l5XvjU4EvJIeq/1TW2Tbi4HKDnMfQ=;
	h=To:Subject:From:Date:From;
	b=hUMoIwNRygGaoeNB8hkNIEsv0JLhbzEszXJsDD9EIYGGTTzW+b5Gu2J449jPcSPdO
	 keKRCeSA2ZRS51ElqX8lSk7CsWpliIYROCqux96t8Aeh9a7b7rg61gwRNE9lxNfE9+
	 wLDfO9Hu8NtoVDHIbIiCM7atOn65X4p1VZXhKSC8fBZy/E2RYasP4OBUDnuP7fDkQC
	 g6rEszjVnAZ2M7O7o7GNIECbVfIizZx7wXaqlLyftELoVb6droWFKKgrn8U4tjqKa+
	 TGO2R50iO7QzaXhvLefYmwRavdYSlcNY9lMnTUoRwxiB9sPX5/Q+VyCpAYtIwECTuj
	 0HZ+C+Bmh44DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C35D1950D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944883358.27837.10281412422901805665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97216d4851ad4be7bb82c2b9bd87ab870b1d07610411f5bba78548a9fac86f6
Date: Mon, 26 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769448833
