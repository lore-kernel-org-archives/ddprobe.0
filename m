Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1914A8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954854; cv=none; b=k+odyc3qMRyRyyPA5Huev4mgPyk4gy/xpvFC51Atbl5i/85/9dHn5s/x8tqfEeCzjv72xz3l6X8fJ+UD3SDcnsEKH8O/vm74XWS2iulnm1Cw+2761jgur6TnB1oLcQuw8XjStmPNZHTotrhKkTPnoYyl0aPvgiNdgv//zsT2ceY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954854; c=relaxed/simple;
	bh=VLg4I7CbpUJHHVY2Yo+uTJXLfr2RNsM+ODGUbeUKgA8=;
	h=To:Subject:From:Message-Id:Date; b=Wr1RhwFbUBEiMBtI3LcKmRZB0TESlMrDYyjEk6bPHvDNV9+asiceb3IA1jx2Gvb5w99/z664CVMjPZSF013j70aHpi4lLfmO4TLB83zrx7narXargskQRQiNVdudyyo5D4GQoav+7bGwTaQEtC+hfYVteIuiQP8jt0yZvbZ66nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGrrh+Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGrrh+Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12A1C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954853;
	bh=VLg4I7CbpUJHHVY2Yo+uTJXLfr2RNsM+ODGUbeUKgA8=;
	h=To:Subject:From:Date:From;
	b=hGrrh+HkxGhCzBjaGbO8nJe12rLRsCOb/Rx3zEgqrQOCWN2OL/zsMKpw/KNPBesbS
	 CqsHY0kdri88Q3qJE9zDvRrowWSTDqDV/HdwD7c253D45kENQLq2ypnHvbdL6U2Pma
	 HwShL2okV5yrwTFWoMXrS88RrrqsQhrPv/AhvlaRDpt4wZESDkrKjPVGoQmLCDlMGl
	 SdIFicfLGibXwWin0LTxkqUx4xUv+WOlU7cb6GtgnO54xn0/6i8VyjUrLL+25ixrWO
	 8oxKTTdBQcohM0b10hNYJgPVfiMJW80eehAa9fnWoxraSjbAsHE9WevF4Si9xi77ic
	 mY1/G0pFSeOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD49F3ED6B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595485368.21851.18326016203776392251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa20a2ec4a00cbb35e32863b65471397d2947e55e146c85093942816600be1cf
Date: Sun, 12 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775954853
